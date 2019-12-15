const inquirer = require("inquirer");
const mysql = require('mysql')


const db = mysql.createConnection({ // create connection, pass a config object
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Dream87323',
    database: 'bamazon'
})

db.connect(function (error) {
    if (error)
        throw error

    welcome()


    let data;
    let total;

    function welcome() {
        db.query("SELECT * FROM products", function (err, results) {
            data = results
            console.table(results)
            choose()
        })
    }

    function choose() {
        inquirer.prompt([
            {
                type: 'input',
                message: "what do you want to buy enter item numbers",
                name: "id"
            },
            {
                type: 'input',
                message: "how many of them do you want",
                name: "quantity" // tells what id going to buy
            }
        ]).then(function (answers) {
            console.log("answers:", answers)
            if (answers.quantity <= data[answers.id - 1].stock_quantity) { // they didn't want to mycgh
                current = data[answers.id - 1]
                currentTotal = current.price * answers.quantity
                console.log("Its $", current.price, "per item" + " , " + "your total for this is $", currentTotal)
                total += currentTotal

                db.query("UPDATE products SET stock_quantity=stock_quantity - ? WHERE item_id= ?", [
                    answers.quantity, answers.id
                ], function (error, response) {
                    if (error)
                        throw error
                    console.log(response)

                })
            } else {
                console.log("You are greedy buy less")
                console.log("We only have:", data[answers.id - 1].stock_quantity + " in stock")
                choose()
            }
        })
    }
});