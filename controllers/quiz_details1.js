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
    var v = require('./view_classroom');
    var c = []
    connection.query('select quiz_no from quiz where class_id = ?', [v.class_id], function (error, results, fields) {
        if (error) throw (error)
        else {
            if (results && results.length) {
                console.log("results length");
                console.log(results.length);
               var q_no = results.length + 1;
            }
            else {
                q_no = 1;
                console.log('Not found')
            }

        }
        var q = {
            "quiz_no": q_no,
            "no_of_questions": req.body.no_of_questions,
            "total_time": req.body.total_time,
            "total_marks": req.body.total_marks,
            "class_id": v.class_id,
            "teacher_id": m.id
        }

        c.push(q);
        connection.query('INSERT INTO quiz SET ?', c, function (error, results, fields) {
            if (error) throw (error);

            // res.sendfile('public/index.html');
            else {
                connection.query('SELECT * FROM quiz WHERE class_id = ? order by quiz_id DESC LIMIT 1', [v.class_id], function (error, results, fields) {
                    if (error) throw error;
                    else {
                        module.exports = {
                            quiz_id: results[0].quiz_id,
                            total_marks: results[0].total_marks
                        }
                        // console.log(code);
                        console.log("get quiz id");
                        res.render('mcq3');

                    }
                });
            }
        });
    });
}