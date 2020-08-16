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
    connection.query('select student_username,subject_name,obtained_marks,total_marks from result where quiz_id = ?',[value] ,function (error, results, fields) {
        if (error) throw (error)
        else {
            console.log(results);
            obj = { print: results };
                    console.log("working");
                    console.log(obj);
                 
        //    var wb= xlsx.readFile("Result.xlsx",{cellDates:true});
        //    var ws= wb.Sheets["Results"];
           var newWB = xlsx.utils.book_new();
           var newWS = xlsx.utils.json_to_sheet(results);
            
           xlsx.utils.book_append_sheet(newWB,newWS,"Results");
           xlsx.writeFile(newWB,"public/sheets/Results.xlsx");
           console.log("File created");
           res.sendfile("public/sheets/Results.xlsx");
        }
    })


 }