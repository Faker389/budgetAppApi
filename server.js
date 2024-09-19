const express = require('express');
const cors = require('cors');
const mysql2 = require('mysql2');
const app = express()
const connection = mysql2.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"app"
})
connection.connect((err)=>{
    if(err){
        console.log("Error connecting")
        return 0
    }
})
app.use(cors())
app.use(express.json())
app.listen(9000,()=>{
    console.log("Listening")
})
app.post("/options",(req,res)=>{
    const query = "SELECT Id,emoji as icon,description as purchaseDetail from options where user_ID=?"
    connection.query(query,[req.body.ID],(err,result)=>{
        if(err){
            res.sendStatus(509).end()
        }
        res.json(result)
    })
})
app.post('/newOption',(req,res)=>{
    var inserObject={
        emoji:req.body.icon,
        description:req.body.purchaseDetail,
        user_ID:req.body.Id
    }
    const arr = Object.values(inserObject)
    const query = "INSERT INTO options VALUES(null,?,?,?)"
    connection.query(query,arr,(err,sukces)=>{
        if(err){
            res.sendStatus(500).end()
            return 0
        }
        res.sendStatus(200).end()
    })
})
app.post("/addExpense",(req,res)=>{
    const {price,Id,purchaseDetail}=req.body
    var priceInsertl
    purchaseDetail==="Deposit Money"?priceInsertl=price:priceInsertl=-price
    const query = "INSERT INTO expensen VALUES(null,?,NOW(),1,?)"
    connection.query(query,[priceInsertl,Id],(err,result)=>{
        if(err){
            return err
        }
        res.sendStatus(200)
    })
})
app.post("/getExpenses",(req,res)=>{
    const query = "SELECT options.Id as ID,options.emoji as icon,options.description as purchaseDetail,expensen.price FROM options INNER JOIN expensen ON options.Id=expensen.category_ID;"
    connection.query(query,[],(err,result)=>{
        if(err){
            res.sendStatus(509).end()
        }
        res.json(result).end()
    })
})

app.get("/chartDataFull",(req,res)=>{
    const query = "SELECT SUM(price) as price,month(data) as miesiac FROM expensen WHERE user_ID='user_2f5aBo5vnxPUzQFZ8wids0wfz42' GROUP BY month(data);"
    const months = [
        'January', 'February', 'March', 'April', 'May', 'June',
        'July', 'August', 'September', 'October', 'November', 'December'
      ];
    connection.query(query,[],(err,result)=>{
        if(err){
            res.sendStatus(509).end()
        }
        var arr =result.reduce((last,item)=>{
            last.labels.push(months[item.miesiac-1])
            last.values.push(item.price)
            return last
        },{
           labels:[],
           values:[] 
        })
        console.log(arr)
        res.json(arr)
    }) 
})
app.post("/chartDataMonth",(req,res)=>{
    const query = "SELECT price,data FROM expensen WHERE user_ID='user_2f5aBo5vnxPUzQFZ8wids0wfz42' and month(data)=?;"

    connection.query(query,[req.body.monthId],(err,result)=>{
        if(err){
            res.sendStatus(509).end()
        }
        var arr =result.reduce((last,item)=>{
            const date = new Date(item.data);
            const formattedDateString = `${date.getFullYear()}-${(date.getMonth() + 1).toString().padStart(2, '0')}-${date.getDate().toString().padStart(2, '0')}`;
            item.data = formattedDateString
            last.labels.push(item.data)
            last.values.push(item.price)
            return last
        },{
           labels:[],
           values:[] 
        })
        res.json(arr)
    })
})
