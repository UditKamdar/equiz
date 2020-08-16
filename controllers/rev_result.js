var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');

module.exports = function (req, res) {

    var i = require('./s_quiz.js');
    var m = require('./authenticate_controller.js');
    var code = require('./s_classroom.js')
    var a = []
    var value = req.body.classroom;
    console.log(value);
    connection.query('select class_id from classroom where teacher_id = ' + [m.id]+ ' and subject_name = "' + [value] + '"', function (error, results, fields) {
        if (error) throw (error)
        else {
            var v=results[0].class_id;
            console.log(v);
            connection.query('select quiz_id from quiz where class_id = ?',[v], function (error, results, fields) {
                if (error) throw (error)
                else {
                    obj = { print: results };
                    console.log("working");
                    console.log(obj);
                     
                    res.render("t_quizlist", { obj: obj });
                }
            })
        }
    })


 }