var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var connection = require('./config');
var fs = require('fs');
var path = require('path');
var cors = require('cors');
var httpMsgs = require('http-msgs');
var tjs= require('templatesjs');

app.use(cors());
app.set('views', path.join(__dirname, 'views'));
// app.use('/static', express.static('dist'));
app.engine('ejs', require('ejs').renderFile);
//  app.set('views', './views');
app.set('view engine', 'ejs');
// var popup = require('popups');
// import alert from 'alert-node'
//  var alert= require('alert-node');
//  var notify = require('node-notify');

//var connection = require('./../config');
// cryptr = new Cryptr('myTotalySecretKey');
// app.use(express.static('public'));
//  app.use(express.static(__dirname + '/public'));


app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
  extended: true
}));

// var connection = mysql.createConnection({
//   host     : 'localhost',
//   user     : 'root',
//   password : 'password',
//   database : 'mydb'
// });


// connection.connect(function(err) {
//   if (err) throw err
//   console.log('You are now connected with mysql database...')
// })
// module.exports=connection;



// var server = app.listen(3000, "127.0.0.1", function () {

//   var host = server.address().address
//   var port = server.address().port

//   console.log("Example app listening at http://%s:%s", host, port)

// });

//rest api to get all customers
var authenticateController = require('./controllers/authenticate_controller');
var registerController = require('./controllers/register_controller');
// var s_authenticateController = require('./controllers/s_authenticate_controller');
// var s_registerController = require('./controllers/s_register_controller');
var Classroom = require('./controllers/classroom');
var Quiz = require('./controllers/quiz_details');
var Quiz1 = require('./controllers/quiz_details1');
var Join_Classroom = require('./controllers/s_classroom');
var test = require('./controllers/test');
var test1 = require('./controllers/test1');
var rev_result = require('./controllers/rev_result');
var rev_result1 = require('./controllers/rev_result1');
var view_classroom = require('./controllers/view_classroom');
var s_view_classroom = require('./controllers/s_view_classroom');
var s_result = require('./controllers/s_result1');
var s_result1 = require('./controllers/s_result2');
var tri = require('./controllers/s_quiz');
var tri1 = require('./controllers/s_quiz1');
app.post('/api/register', registerController.register);
app.post('/api/authenticate', authenticateController.authenticate);
// app.post('/api/register', s_registerController.register);
// app.post('/api/authenticate', s_authenticateController.authenticate);

console.log(authenticateController);
app.post('/controllers/register_controller', registerController.register);
app.post('/controllers/authenticate_controller', authenticateController.authenticate);
// app.post('/controllers/register_controller', s_registerController.register);
// app.post('/controllers/authenticate_controller', s_authenticateController.authenticate);
app.post('/controllers/classroom', Classroom);
app.post('/controllers/quiz_details', Quiz);
app.post('/controllers/quiz_details1', Quiz1);
app.post('/controllers/s_classroom', Join_Classroom);
app.post('/controllers/s_quiz', tri);
app.post('/controllers/s_quiz1', tri1);
app.post('/controllers/test', test);
app.post('/controllers/test1', test1);
app.post('/controllers/rev_result', rev_result);
app.post('/controllers/rev_result1', rev_result1);
app.post('/controllers/view_classroom', view_classroom);
app.post('/controllers/s_view_classroom', s_view_classroom);
app.post('/controllers/s_result1', s_result);
app.post('/controllers/s_result2', s_result1);

app.get('/login/trial', function (req, res) {
  
 res.render("login");
})
app.post('/student/view_classroom', function (req, res) {
  var a = require('./controllers/authenticate_controller');
  console.log(a.id)
  console.log("Hello");
  connection.query('select subject_name from join_class where student_username = ?;', [a.username], function (error, results, fields) {
    if (error) throw error;
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj);

      res.render("s_view_classroom", { obj: obj });
    }
  })
})

app.get('/teacher/question_page', function (req, res) {
  var today = new Date();
  var obj = {};
  var q1 = require('./controllers/quiz_details');
  connection.query('select * from question_answer where quiz_id = ?', [q1.quiz_id], function (error, results, fields) {
    if (error) throw (error)
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj.print.length);
      // console.log(); 
      res.render("question_paper_display", { obj: obj });

    }

  });
});
app.get('/teacher/question_page_1', function (req, res) {
  var today = new Date();
  var obj = {};
  var q1 = require('./controllers/quiz_details1');
  connection.query('select * from question_answer where quiz_id = ?', [q1.quiz_id], function (error, results, fields) {
    if (error) throw (error)
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj.print.length);
      // console.log(); 
      res.render("question_paper_display", { obj: obj });

    }

  });
});
//  rest api to get a single customer data



app.post('/teacher/classroom', function (req, res) {
  // var abc=require('./controllers/trial_register_controller.js');
  // res.send(abc);
  var id = require('./controllers/authenticate_controller');
  console.log(id);
  console.log("Hello");
  res.sendfile("public/classroom.html")
})
app.post('/teacher/view_classroom', function (req, res) {
  var a = require('./controllers/authenticate_controller');
  console.log(a.id)
  console.log("Hello");
  connection.query('select subject_name from classroom where teacher_id = ?;', [a.id], function (error, results, fields) {
    if (error) throw error;
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj);

      res.render("t_view_classroom", { obj: obj });
    }
  })
})
app.post('/student/view_classroom', function (req, res) {
  var a = require('./controllers/authenticate_controller');
  console.log(a.id)
  console.log("Hello");
  connection.query('select subject_name from join_class where student_username = ?;', [a.username], function (error, results, fields) {
    if (error) throw error;
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj);

      res.render("s_view_classroom", { obj: obj });
    }
  })
})
app.post('/teacher/review_result', function (req, res) {
  var a = require('./controllers/authenticate_controller');
  console.log(a.id)
  console.log("Hello");
  connection.query('select subject_name from classroom where teacher_id = ?;', [a.id], function (error, results, fields) {
    if (error) throw error;
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj);

      res.render("t_classrooms", { obj: obj });
    }
  })
})
app.post('/student/review_result', function (req, res) {
  var a = require('./controllers/authenticate_controller');
  console.log(a.id)
  console.log("Hello");
  connection.query('select subject_name from join_class where student_username = ?;', [a.username], function (error, results, fields) {
    if (error) throw error;
    else {
      obj = { print: results };
      console.log("working");
      console.log(obj);

      res.render("s_result", { obj: obj });
    }
  })
})
app.get('/about', function (req, res) {
  res.sendfile('public/about.html');
})
app.get('/s_about', function (req, res) {
  res.sendfile('public/s_about.html');
})
app.post('/student/homepage', function (req, res) {
  res.sendfile('public/s_mainpage.html');
})
app.post('/teacher/homepage', function (req, res) {
  res.sendfile('public/mainpage.html');
})
app.get('/signup', function (req, res) {

  res.sendfile('public/signup.html');
})
app.get('/mainpage', function (req, res) {

  res.sendfile('public/mainpage.html');
})
app.get('/s_mainpage', function (req, res) {

  res.sendfile('public/s_mainpage.html');
})

app.get('/contact', function (req, res) {

  res.sendfile('public/contact.html');
})
app.get('/s_contact', function (req, res) {

  res.sendfile('public/s_contact.html');
})
app.get('/logout', function (req, res) {

  res.sendfile('public/login.html');
})
app.post('/student/joinclass', function (req, res) {
  // var abc=require('./controllers/trial_register_controller.js');
  // res.send(abc);
  var id = require('./controllers/authenticate_controller');
  console.log(id);
  console.log("Hello");
  res.sendfile('public/s_classroom.html');
})
//rest api to add question
app.post('/teacher/add_question', function (req, res) {
  console.log("helo");
  res.sendfile("public/mcq.html")

});
var q_no = 1;
//rest api to store mcq data
app.post('/teacher/add_mcq', function (req, res) {

  var q1 = require('./controllers/quiz_details');
  connection.query('select * from question_answer where quiz_id = ?', [q1.quiz_id], function (error, results, fields) {
    if (error) throw (error)
    else {
      if (results && results.length) {
        console.log(results);
        q_no = q_no + 1;
      }
      else {
        q_no = 1;
        console.log('Not found')
      }

    }

    console.log('working mcq');
    var today = new Date();


    var ques = []

    var q = {
      "quiz_id": q1.quiz_id,
      "question_no": q_no,
      "question": req.body.question,
      "option_1": req.body.option1,
      "option_2": req.body.option2,
      "option_3": req.body.option3,
      "option_4": req.body.option4,
      "correct_option": req.body.correctanswer,
      "marks": req.body.marks,
      "created_at": today,

    }
    ques.push(q);
    // for (let index = 0; index < array.length; index++) {
    //   const element = array[index];

    // }
    console.log("123");

    connection.query('INSERT INTO question_answer SET ?', ques, function (error, results, fields) {
      if (error) throw (error)
      // res.sendfile('public/index.html');
      else {
        // res.json({
        //   status:true,
        //   message:'there are no error with query' 
        // })
        // res.sendfile('public/mcq.html');
        //  
        // res.json({window.alert('Question added')})
        // notify('Hello World');    
        console.log("Question added");
        res.render('mcq2');
      }
    });
  });
});
app.post('/teacher/add_mcq_1', function (req, res) {

  var q1 = require('./controllers/quiz_details1');
  connection.query('select * from question_answer where quiz_id = ?', [q1.quiz_id], function (error, results, fields) {
    if (error) throw (error)
    else {
      if (results && results.length) {
        console.log(results);
        q_no = q_no + 1;
      }
      else {
        q_no = 1;
        console.log('Not found')
      }

    }

    console.log('working mcq');
    var today = new Date();


    var ques = []

    var q = {
      "quiz_id": q1.quiz_id,
      "question_no": q_no,
      "question": req.body.question,
      "option_1": req.body.option1,
      "option_2": req.body.option2,
      "option_3": req.body.option3,
      "option_4": req.body.option4,
      "correct_option": req.body.correctanswer,
      "marks": req.body.marks,
      "created_at": today,

    }
    ques.push(q);
    // for (let index = 0; index < array.length; index++) {
    //   const element = array[index];

    // }
    console.log("123");

    connection.query('INSERT INTO question_answer SET ?', ques, function (error, results, fields) {
      if (error) throw (error)
      // res.sendfile('public/index.html');
      else {
        // res.json({
        //   status:true,
        //   message:'there are no error with query' 
        // })
        // res.sendfile('public/mcq.html');
        //  
        // res.json({window.alert('Question added')})
        // notify('Hello World');    
        console.log("Question added");
        res.render('mcq3')
      }
    });
  });
});
app.put('/teacher/score', function (req, res) {
  var score = 0;
  var obj = {};

  connection.query('select * from question_answer  where question_no=22', function (error, results, fields) {
    if (error) throw error;
    else {
      obj = { print: results };
      console.log(obj);

    }
  });
});
// app.post('/teacher/classroom/quiz_details', function (req, res) {

//   var id = require('./controllers/authenticate_controller');
//   var i=require('./controllers/classroom');
//   var c = []
//   var q = {
//     "no_of_questions": req.body.no_of_questions,
//     "total_time": req.body.total_time,
//     "total_marks": req.body.total_marks,
//      "class_id":i.class_id,
//      "teacher_id":id
//   }

//   c.push(q);
//   connection.query('INSERT INTO quiz SET ?', c, function (error, results, fields) {
//     if (error) throw (error);

//       // res.sendfile('public/index.html');
//      else {
//       // console.log(code);
//       console.log("working");
//       res.render('mcq2');

//     }
//   });
// });

app.listen(8012);
// app.post('/teacher/classroom/create', function (req, res) {
//   var id = require('./controllers/authenticate_controller');
//   var numbers = "0123456789";

//   var chars = "acdefhiklmnoqrstuvwxyz";

//   var code_length = 6;
//   var number_count = 3;
//   var letter_count = 3;

//   var code = '';

//   for (var i = 0; i < code_length; i++) {
//     var letterOrNumber = Math.floor(Math.random() * 2);
//     if ((letterOrNumber == 0 || number_count == 0) && letter_count > 0) {
//       letter_count--;
//       var rnum = Math.floor(Math.random() * chars.length);
//       code += chars[rnum];
//     }
//     else {
//       number_count--;
//       var rnum2 = Math.floor(Math.random() * numbers.length);
//       code += numbers[rnum2];
//     }
//   }
//   console.log(code);
//   var c = []
//   var q = {
//     "subject_name": req.body.subject_name.toUpperCase(),
//     "classroom_code": code,
//     "teacher_id": id
//   }

//   c.push(q);
//   connection.query('INSERT INTO classroom SET ?', c, function (error, results, fields) {
//     if (error) {
//       res.json({
//         status: false,
//         message: 'there are some error with query'
//       })
//       // res.sendfile('public/index.html');
//     } else {
//       // connection.query('SELECT class_id,teacher_id FROM classroom WHERE classroom_code = ?', code, function (error, results, fields) {
//       //   if (error) throw error;
//       //   else {
//       //     module.exports = {
//       //       class_id: results[0].class_id,
//       //       teacher_id: results[0].teacher_id
//       //     }

//           connection.query('select subject_name,classroom_code from classroom order BY class_id DESC LIMIT 1;', function (error, results, fields) {
//             if (error) throw error;
//             else {
//               obj = { print: results };
//               console.log("working");
//               console.log(obj);
//               // console.log(); 
//               res.render("mcq", { obj: obj });


//             }
//           });
//       //   }
//       // });
//     }
//   });
// });

