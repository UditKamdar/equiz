var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');

module.exports = function (req, res) {
    var i = require('./authenticate_controller');
    var code = req.body.class_code;
    var q;

    
    console.log(code);

    connection.query('SELECT * FROM classroom WHERE classroom_code = ?', [code], function (error, results, fields) {
        if (error) {
            res.json({
                status: false,
                message: 'there is no such code'

            })
            // console.log("working");
            // res.render("s_classroom",{ obj:"false", obj1:"false"});
        } else {
            if (results.length == 0) {
                console.log("Class_Code not Matched");
                res.render("s_classroom",{ obj:"false", obj1:"123"});
            }
            if (results.length > 0) {
                console.log("Class_Code Matched");
                module.exports = {
                    subject_name: results[0].subject_name,
                    classroom_code: results[0].classroom_code
                }
                console.log(results[0].subject_name);
                var users = {
                    classroom_code: results[0].classroom_code,
                    subject_name: results[0].subject_name,
                    student_username: i.username
                }
                console.log(users);
                connection.query('Insert into join_class set ?', users, function (error, results, fields) {
                    if (error) {
                        console.log("Class_Code not Matched");
                        res.render("s_classroom",{ obj:"123", obj1:"true"});

                    }
                    else {

                        console.log("Inserted");
                        connection.query('select subject_name,classroom_code from classroom where classroom_code =?', [code], function (error, results, fields) {
                            if (error) throw error;
                            else {
                                obj = { print: results };
                                console.log("working");
                                console.log(obj);
                                // console.log(); 
                               
                               q={
                                subject_name:results[0].subject_name,
                                classroom_code:results[0].classroom_code
                                
                            }
                            }
                        })
                        connection.query('select class_id from classroom where classroom_code = ?', [code], function (error, results, fields) {
                            if (error) throw (error)
                            else {
                                var v = results[0].class_id;
                                console.log(v);
                                connection.query('select quiz_id from quiz where class_id = ?', [v], function (error, results, fields) {
                                    if (error) throw (error)
                                    else {
                                        console.log(results);
                                        obj = { print: results };
                                        console.log("working");
                                        console.log(obj);
                                       
                                         
                                        res.render("s_mcq", { obj:obj, obj1:q});
                                    }
                                })
                            }
                        })

                    }
                });

            }
        };

    });
}




