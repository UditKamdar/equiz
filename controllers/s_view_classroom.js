var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');
const { id } = require("./../controllers/authenticate_controller");

module.exports=function(req,res){
var m=require('./../controllers/authenticate_controller');
var value= req.body.classroom;
console.log(value);
connection.query('select subject_name,classroom_code from join_class where student_username = "' + [m.username]+ '" and subject_name = "' + [value] + '"', function (error, results, fields) {
    if (error) throw (error)
    else {
        var  q={
            subject_name:results[0].subject_name,
            classroom_code:results[0].classroom_code
            
        }
        var sub=results[0].subject_name;
        var class_code=results[0].classroom_code;
            
           var code= results[0].classroom_code;
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
                       
                        module.exports={
                            subject_name:sub,
                            class_id:v,
                            quiz_id:results[0].quiz_id,
                            classroom_code:class_code

                        }
                        res.render("s_mcq1", { obj:obj, obj1:q,obj2: "False"});
                    }
                })
            }
        })


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
