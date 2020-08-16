var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');

module.exports=function(req,res){
var m=require('./authenticate_controller');
var code = require('./s_classroom');
 connection.query('SELECT * FROM classroom WHERE classroom_code = ?',[code.classroom_code], function (error, results, fields) {
    if (error) throw error;
    else {
        console.log("reach");
      module.exports = {
        class_id: results[0].class_id,
        teacher_id: results[0].teacher_id,
        subject_name: results[0].subject_name,
        classroom_code: results[0].classroom_code,
        trial: "hello"
      }
    
      console.log(module.exports);


    }
  });
}
