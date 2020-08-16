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
    var code = require('./s_classroom')
    var z = require('./s_view_classroom.js');
    var c = []
    var v = req.body.quiz_no;

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

    connection.query('SELECT * FROM quiz WHERE class_id = "' + [z.class_id] + '" and quiz_no = "' + [v] + '"', function (error, results, fields) {
        if (error) throw error;
        else {
            var x = results[0].quiz_id;
            module.exports = {
                quiz_id: results[0].quiz_id,
                quiz_no: results[0].quiz_no,
                total_marks: results[0].total_marks
            }
            connection.query('SELECT * FROM result WHERE student_username ="' + [m.username] + '" and quiz_id = "' + [x] + '"', function (error, results, fields) {
                if (error) throw error;
                else {


                    if (results.length>0) {
                        console.log("till here");
                        connection.query('select subject_name,classroom_code from join_class where student_username = "' + [m.username] + '" and subject_name = "' + [z.subject_name] + '"', function (error, results, fields) {
                            if (error) throw (error)
                            else {
                                var q = {
                                    subject_name: results[0].subject_name,
                                    classroom_code: results[0].classroom_code

                                }
                                var sub = results[0].subject_name;
                                var class_code = results[0].classroom_code;

                                var code = results[0].classroom_code;
                                console.log(results);

                                connection.query('select class_id from classroom where classroom_code = ?', [code], function (error, results, fields) {
                                    if (error) throw (error)
                                    else {
                                        var v = results[0].class_id;
                                        console.log(v);
                                        connection.query('select * from quiz where class_id = ?', [v], function (error, results, fields) {
                                            if (error) throw (error)
                                            else {
                                                console.log(results);
                                                obj = { print: results };
                                                console.log("working");
                                                console.log(obj);

                                                module.exports = {
                                                    subject_name: sub,
                                                    class_id: v,
                                                    quiz_id: results[0].quiz_id,
                                                    classroom_code: class_code

                                                }
                                                res.render("s_mcq1", { obj: obj, obj1: q, obj2: "Attempted" });
                                            }
                                        })
                                    }
                                })


                            }

                        });

                    }
                    else {



                        // console.log(code);

                        console.log("get quiz no");



                        connection.query('select * from question_answer where quiz_id = ?', [x], function (error, results, fields) {
                            if (error) throw (error)
                            else {
                                obj = { print: results };
                                console.log("working");
                                console.log(obj.print.length);
                                // console.log(); 
                                res.render("s_test1", { obj: obj });

                            }

                        });
                    }
                }


            });
        }
    });
    //     }
    // });
    // connection.query('select * from question_answer where quiz_id = ?', [v], function (error, results, fields) {
    //     if (error) throw (error)
    //     else {
    //         obj = { print: results };
    //         console.log("working");
    //         console.log(obj.print.length);
    //         // console.log(); 
    //         res.render("s_test1", { obj: obj });

    //     }

    // });
}