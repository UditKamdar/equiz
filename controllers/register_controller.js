var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var Cryptr = require('cryptr');
var express = require("express");
cryptr = new Cryptr('myTotalySecretKey');
var connection = require('./../config');

module.exports.register = function (req, res) {
  var today = new Date();
  var encryptedString = cryptr.encrypt(req.body.password);
  var encryptedString1 = cryptr.encrypt(req.body.confirmpassword);
  var users = {
    "username": req.body.username,
    "email": req.body.email,
    "password": encryptedString,
    "created_at": today,
    "updated_at": today
  }
  var check = req.body.toggle_option;
  console.log(check);
  if (req.body.password == req.body.confirmpassword) {
    if (check == "student") {
      console.log("Yes");

      connection.query('INSERT INTO student_signup SET ?', users, function (error, results, fields) {
        if (error) {
          // res.json({
          //     status:false,
          //     message:'there are some error with query'
          // })
          console.log("working");
          res.render("signup", { obj: "student" });
        } else {
          //   res.json({
          //     status:true,
          //     data:results,
          //     message:'user registered sucessfully'
          // })
          // res.sendfile('./public/login.html');
          res.render("login",{obj:"student"});
        }
      });


    }
    else {
      connection.query('INSERT INTO teacher_signup SET ?', users, function (error, results, fields) {
        if (error) {
          // res.json({
          //     status:false,
          //     message:'there are some error with query'
          // })
          console.log("working");
          res.render("signup", { obj: "teacher" });
        } else {
          //   res.json({
          //     status:true,
          //     data:results,
          //     message:'user registered sucessfully'
          // })
          // res.sendfile('./public/login.html');
          res.render("login",{obj:"teacher"});
        }
      });
    }
  }
  else {
    console.log("working");
    res.render("signup", { obj: "password" });

  }
}
