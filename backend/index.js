const express = require("express")
const cors = require('cors')
const helmet = require('helmet');
const useragent = require('express-useragent')
const bodyParser = require('body-parser')
const mongoose = require('mongoose')
// const adminAuth = require('../backend/middilewares/securityauth')
let app = express();









//File decraltions


const userroute = require('./routes/userroute');


app.use(bodyParser.urlencoded({
  extended: true, limit: '150mb'
}));



app.use(bodyParser.json({ limit: '150mb' }));


//Database MongoDB

mongoose.set('strictQuery', true);
mongoose.connect('mongodb+srv://lifestream:halo12345@cluster0.hvhrsrk.mongodb.net/?retryWrites=true&w=majority', { useNewUrlParser: true,/* useCreateIndex: true,*/ useUnifiedTopology: true}).then(()=>{
  console.log("DB Connected")
}).catch((ex) => { 
  console.log(ex)
})

var db = mongoose.connection;



app.use(function (req, res, next) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
  res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
  res.setHeader('Access-Control-Allow-Credentials', true);
  next();
});

app.use(cors());
app.use(helmet());


app.use(useragent.express());
app.use((req, res, next) => {
  var fullUrl = req.protocol + '://' + req.get('host') + req.originalUrl;
  console.log(fullUrl)
  next();
})


// App Use


// app.use
app.use(userroute)



const server = app.listen(9090, function () {
  console.log("Running Server on port  9090");
})