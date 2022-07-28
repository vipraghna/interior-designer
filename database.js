// var http = require('http');
// var fs = require('fs'); //predefined file system module to read write open etc(file manipulations)
// var path = require('path');

// http.createServer(function(req,res){

//     if(req.url == "/"){
//         fs.readFile("./group1/customerInfo.html","UTF-8",function(err,html){
//             res.writeHead(200,{'Content-Type':'text/html'});
//             res.write(html);
//         });  
//     }else if(req.url.match("\.css$")){
//         var cssPath = path.join(__dirname,'group1',req.url);
//         //console.log(cssPath)
//         var fileStream = fs.createReadStream(cssPath,"UTF-8");
//         res.writeHead(200,{"Content-Type":"text/css"});
//         fileStream.pipe(res);
//     }else if(req.url.match("\.jpg$")){
//         var imagePath = path.join(__dirname,'group1',req.url);
//         //console.log(cssPath)
//         var fileStream = fs.createReadStream(imagePath);
//         res.writeHead(200,{"Content-Type":"image/jpg"});
//         fileStream.pipe(res);
//     }else{
//         res.writeHead(404,{"Content-Type":"text/html"});
//         res.end("No page Found");
//     }

//     //console.log(req.url);
// }).listen(8080);
// /*
// const express = require('express')
// var mysql = require('mysql')
// const bodyParser = require('body-parser')
// const app = express()
// const port = 8080
// app.use(express.static('../library'))
// app.use(bodyParser.urlencoded({extended: false}))
// //app.set('view engine','pug')

// //app.get('view engine','pug')
// app.get('/',function(req,res){
//     res.sendFile('./group1/customerInfo.html',{root:__dirname})
// });

// var connection = mysql.createConnection({
//     host:'localhost',
//     user: 'root',
//     password: 'ayeshashah', //establishing a connection with mysql workbench
//     database:'creative_solutions'
// });

// connection.connect(function(err){
//     if(err) throw err;

//     console.log('Connected!');
// })


// app.post('/submit',function(req,res){
//     //console.log(req.body);

//     var sql = "INSERT INTO customers VALUES(null,'"+ req.body.f_name +"','"+ req.body.l_name +"','"+ req.body.contact +
//     "','"+ req.body.email +"','"+ req.body.address +"','"+ req.body.family_description +"','"+ req.body.entertain +")";
//     connection.query(sql,function(err){
//         if(err) throw err
//         res.render('customerInfo',{title:'Data Saved',
//             message:'Data Saved Successfully!'})
//         //console.log('The solution is:',rows[0].solution)
//     })
//     connection.end();
 
// })

// app.listen(port, () => console.log('Creative solutions'));
// */

const express = require("express");
const mysql = require("mysql");

const bodyParser = require("body-parser");



const app = express();
const port = 8081;
app.use(express.static("./group1"));

app.use(bodyParser.urlencoded({ extended: false }));
app.set("view engine", "pug");

app.get("/", function (req, res) {
  res.sendFile("group1/customerInfo.html", { root: __dirname });
});


const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database:"amysql1",
});

connection.connect(function (err) {
  if (err) throw err;

  console.log('connected...')
})



app.post("/submit", function (req, res) {
  console.log(req.body);

  var sql =
    "insert into data values(null,'" +
    req.body.f_name +
    "','" +
    req.body.l_name +
    "','" +
    req.body.contact +
    "','" +
    req.body.email +
    "',  '" +
    req.body.address +
    "',  '" +
    req.body.family_description +
    "',  '" +
    req.body.entertain +
    "','" +
    req.body.contemporary +
    "', '" +
    req.body.duration +
    "','" +
    req.body.rooms +
    "')"
  //console.log(sql)  
  connection.query(sql, function (err) {
    if (err) throw err
    res.render("index", {
      title: "Anzar",
      msg: "Congratulations your request is recorded successfully :)",
    })
  })



})
// app.get("/", function (req, res) {
//   res.render("index",{title:'hey',msg:'hello there'});
// });


app.listen(port, () => console.log("server started"));

