var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var xlsx = require('xlsx');
var fs = require('fs');
var path = require('path');
var connection = require('./../config');

module.exports = function (req, res) {

    var i = require('./s_quiz.js');
    var m = require('./authenticate_controller.js');
    var code = require('./s_classroom.js')
    var a = []
    var value = req.body.quiz_id;
    console.log(value);
    connection.query('select obtained_marks,total_marks from result where quiz_id = '+ [value] + 'and student_username = "' + [m.username] + '"'  ,function (error, results, fields) {
        if (error) throw (error)
        else {
            console.log(results);
            obj = { print: results };
                    console.log("working");
                    console.log(obj);
                 var q={
                     obtained_marks : results[0].obtained_marks,
                     total_marks :results[0].total_marks 
                 }
           console.log(q);
           res.render("result", { obj:q});
        }
    })


 }