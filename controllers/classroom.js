var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');

module.exports=function(req,res){
var m=require('./../controllers/authenticate_controller');
var numbers = "0123456789";

var chars = "acdefhiklmnoqrstuvwxyz";

var code_length = 6;
var number_count = 3;
var letter_count = 3;

var code = '';

for (var i = 0; i < code_length; i++) {
  var letterOrNumber = Math.floor(Math.random() * 2);
  if ((letterOrNumber == 0 || number_count == 0) && letter_count > 0) {
    letter_count--;
    var rnum = Math.floor(Math.random() * chars.length);
    code += chars[rnum];
  }
  else {
    number_count--;
    var rnum2 = Math.floor(Math.random() * numbers.length);
    code += numbers[rnum2];
  }
}
console.log(code);
console.log(m.id);
console.log("i");
var c = []
var q = {
  "subject_name": req.body.subject_name.toUpperCase(),
  "classroom_code": code,
  "teacher_id": m.id
}

c.push(q);
connection.query('INSERT INTO classroom SET ?', c, function (error, results, fields) {
  if (error) {
    res.json({
      status: false,
      message: 'there are some error with query'
    })
    // res.sendfile('public/index.html');
  } 
  else {
    
  }
  connection.query('SELECT * FROM classroom WHERE classroom_code = ?',[code], function (error, results, fields) {
    if (error) throw error;
    else {
      obj = {print:results};
      module.exports = {
        class_id: obj.print[0].class_id,
        teacher_id: obj.print[0].teacher_id,
        subject_name:obj.print[0].subject_name,
        classroom_code: obj.print[0].classroom_code
      }
      console.log(module.exports);

  connection.query('select subject_name,classroom_code from classroom order BY class_id DESC LIMIT 1;', function (error, results, fields) {
    if (error) throw error;
    else {
      // obj = { print: results };
      console.log("working");
      console.log(results);
      // console.log(); 
      res.render("mcq", { obj: results });


    }
  });
    }
  });
});
}
