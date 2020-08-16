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
    // var q = {
    //     "student_username": m.student_username,
    //     "subject_name": i.subject_name,
    //     "total_marks": ,
    //     "class_id": i.class_id,
    //     "teacher_id": m.id
    // }

    // c.push(q);

    connection.query('select class_id from classroom where classroom_code = ?', [code.classroom_code], function (error, results, fields) {
        if (error) throw (error);

        // res.sendfile('public/index.html');
        else {
            console.log("Code is obtained");
            var temp = results[0].class_id;

            connection.query('SELECT quiz_id FROM quiz WHERE class_id = ?', [temp], function (error, results, fields) {
                if (error) throw error;
                else {
                    // module.exports = {
                    //     quiz_id: results[0].quiz_id,
                    // }
                    // console.log(code);
                    console.log("get quiz id");

                    var temp1 = results[0].quiz_id;
                    connection.query('select question,correct_option,marks from question_answer where quiz_id = ?', [temp1], function (error, results, fields) {
                        if (error) throw (error)
                        else {
                            obj = { print: results };
                            console.log("working");
                            console.log(obj);
                            console.log(obj.print.length);
                            console.log(results[0].question);


                            console.log(req.body);

                            var c = [];
                            // var c_answer = [];
                            var marks = 0;
                            var j = 0;
                            // for (var i = 0; i < obj.print.length; i++) {

                            //     var ans = obj.print[i].correct_option;
                            //     c_answer.push(ans);

                            // }
                            // console.log(c_answer);
                            // for (var key in req.body) {
                            //     var value = req.body[key];
                            //     c.push(value);
                            // }
                            // console.log(c);
                            // for (var i = 0; i < c.length; i++) {
                            //     if (c[i] == c_answer[i]) {
                            //         marks = marks + obj.print[i].marks;
                            //     }

                            // }

                            for (var key in req.body) {
                                c_answer = obj.print[j].correct_option;
                                var value = req.body[key];
                                console.log(` Values: ${value}`);
                                console.log(` Correct Answer: ${obj.print[j].correct_option}`);
                                console.log(` marks obtain : ${marks}`);
                                if (value == c_answer) {
                                    marks = marks + obj.print[j].marks;

                                }
                                j++;
                                console.log(marks);
                            }
                            console.log(m.username);
                            console.log(code.subject_name);
                            console.log(code.classroom_code);

                            console.log(i.total_marks); console.log(i.quiz_id);
                            var q = {
                                "student_username": m.username,
                                "subject_name": code.subject_name,
                                "classroom_code":code.classroom_code,
                                
                                "quiz_id": i.quiz_id,
                                "obtained_marks": marks,
                                "total_marks": i.total_marks ,
                            }
                            var z={
                                "obtained_marks": marks,
                                "total_marks": i.total_marks ,
                            }
                              a.push(q);
                              connection.query('INSERT INTO result SET ?', a, function (error, results, fields) {
                                if (error) throw (error);
                        
                                // res.sendfile('public/index.html');
                                else {
                                    console.log("Result table updated")
                                    res.render("result", { obj: z });
                                }
                            });
                            
                            // Object.keys(req.body).forEach(function (key) {
                            //     var value = req.body[key];
                            //     console.log(`${value}`);
                            //     var q = { "Question_no":[req.body[key]]};
                            //      c.push(q);
                            //     console.log(key)
                            // })



                        }

                    });

                }
            });

        }
    });
}