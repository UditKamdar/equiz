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
var value= req.body.classroom;
console.log(value);
connection.query('select * from classroom where teacher_id = ' + [m.id]+ ' and subject_name = "' + [value] + '"', function (error, results, fields) {
    if (error) throw (error)
    else {
        obj={print:results};
        console.log("Fine");
        module.exports = {
                    class_id: obj.print[0].class_id,
                    teacher_id: obj.print[0].teacher_id,
                    subject_name:obj.print[0].subject_name,
                    classroom_code: obj.print[0].classroom_code
                  }
        console.log(results);
        res.render("mcq1",{obj:obj});
    }
//   connection.query('SELECT * FROM classroom WHERE classroom_code = ?',[code], function (error, results, fields) {
//     if (error) throw error;
//     else {
//       obj = {print:results};
//       module.exports = {
//         class_id: obj.print[0].class_id,
//         teacher_id: obj.print[0].teacher_id,
//         subject_name:obj.print[0].subject_name,
//         classroom_code: obj.print[0].classroom_code
//       }
//       console.log(module.exports);

//   connection.query('select subject_name,classroom_code from classroom order BY class_id DESC LIMIT 1;', function (error, results, fields) {
//     if (error) throw error;
//     else {
//       obj = { print: results };
//       console.log("working");
//       console.log(obj);
//       // console.log(); 
//       res.render("mcq", { obj: obj });


//     }
//   });
//     }
//   });
});
}
