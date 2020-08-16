var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var fs = require('fs');
var path = require('path');
var connection = require('./../config');



module.exports=function(req, res) {
    var c = []
    var q = {
        "log": req.body.log,

    }

    c.push(q);
    connection.query('INSERT INTO log SET ?', c, function (error, results, fields) {
        if (error) throw (error);

        // res.sendfile('public/index.html');
        else {
            module.exports ={
                s:"student"};
            console.log("heyyy");
            res.sendfile('public/login.html');
        }
    });
}
