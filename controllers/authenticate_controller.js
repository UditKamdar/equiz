var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var httpMsgs = require('http-msgs');
var fs = require('fs');
var path = require('path');
var Cryptr = require('cryptr');
cryptr = new Cryptr('myTotalySecretKey');
var connection = require('./../config');
var m = require('./mod');
const { render } = require("pug");

module.exports.authenticate = function (req, res) {
  var email = req.body.email;
  var password = req.body.password;
  var check = req.body.toggle_option;
  
  console.log(check);
  if (check == "student") {
    console.log("Yes");
    connection.query('SELECT * FROM student_signup WHERE email = ?', [email], function (error, results, fields) {
      if (error) {
        // res.json({
        //   // status:false,
        //   // message:'there are some error with query'



        // })
        // httpMsgs.sendJSON(req,res,{
        //   from:"server"
        // });
      } else {

        if (results.length > 0) {
          decryptedString = cryptr.decrypt(results[0].password);
          if (password == decryptedString) {
            // res.json({
            //      status:true,
            //      message:'successfully authenticated'
            // })
            console.log([email]);

            module.exports = {
              id:results[0].student_id,
              username:results[0].username

            }
            res.sendfile('./public/s_mainpage.html');
          } else {
            // res.json({
            //   status: false,
            //   message: "Email and password does not match"
            // });
            
            console.log("working");
            res.render("login",{ obj:"password"});
          }

        }
        else {
          // res.json({
          //   status: false,
          //   message: "Email does not exits"
          // });
          console.log(" email does not working");
          res.render("login",{ obj:"email"});
        }
      }
    });
  }
  else {
    connection.query('SELECT * FROM teacher_signup WHERE email = ?', [email], function (error, results, fields) {
      if (error) {
        res.json({
          // status:false,
          // message:'there are some error with query'



        })
      } else {

        if (results.length > 0) {
          decryptedString = cryptr.decrypt(results[0].password);
          if (password == decryptedString) {
            // res.json({
            //      status:true,
            //      message:'successfully authenticated'
            // })
            console.log([email]);

            module.exports = {
              id:results[0].teacher_id,
              username:results[0].username

            }
            console.log(module.exports);
            res.sendfile('./public/mainpage.html');
          } else {
            // res.json({
            //   status: false,
            //   message: "Email and password does not match"
            // });
            console.log("working");
            res.render("login",{ obj:"password"});
          }

        }
        else {
          // res.json({
          //   status: false,
          //   message: "Email does not exits"
          // });
          console.log(" email does not working");
          res.render("login",{ obj:"email"});
        }
      }
    });
  }

}
