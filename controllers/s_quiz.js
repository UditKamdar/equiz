var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');

module.exports = function (req, res) {
    var m = require('./../controllers/authenticate_controller');
    var i = require('./classroom');
    var code= require('./s_classroom')
    var c = []
    var v= req.body.quiz_id;
    // var q = {
    //     "no_of_questions": req.body.no_of_questions,
    //     "total_time": req.body.total_time,
    //     "total_marks": req.body.total_marks,
    //     "class_id": i.class_id,
    //     "teacher_id": m.id
    // }

    // c.push(q);
    // connection.query('select class_id from classroom where classroom_code = ?', [code.classroom_code], function (error, results, fields) {
    //     if (error) throw (error);

    //     // res.sendfile('public/index.html');
    //     else {
    //         console.log("Code is obtained");
    //         var temp= results[0].class_id;
            
            connection.query('SELECT quiz_id,total_marks FROM quiz WHERE quiz_id = ?', [v], function (error, results, fields) {
                if (error) throw error;
                else {
                     module.exports = {
                         quiz_id:results[0].quiz_id,
                         total_marks: results[0].total_marks
                     }
                    // console.log(code);
                    console.log("get quiz id");
                    var obj = {};
                    
                   

                }
            });
            
    //     }
    // });
    connection.query('select * from question_answer where quiz_id = ?', [v], function (error, results, fields) {
        if (error) throw (error)
        else {
          obj = { print: results };
          console.log("working");
          console.log(obj.print.length);
          // console.log(); 
          res.render("s_test", { obj: obj });
    
        }
    
      });
}