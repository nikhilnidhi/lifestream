const express = require('express')
const router = express()
const Misc = require('../controller/misc')
const UserModel = require('../models/usermodel')
var bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken')
const tokenModel = require('../models/tokenmodel')
var defaults = require('../defaults')
const { UserAgent } = require('express-useragent');
const adminauth = require('../middleware/securityauth');


 

//Admin Registration

router.post('/donarregistration', async (req, res) => {
  try {
    var {donarname, donarnumber,gmail, key,bloodgroup,location } = req.body
    if (Misc.isnullorempty(donarname)) {
      res.status(200).json({
        status: false,
        msg: "donar name not found"
      });
      return;
    }
    if (Misc.isnullorempty(bloodgroup)) {
      res.status(200).json({
        status: false,
        msg: "bloodgroup not found"
      });
      return;
    }
    if (Misc.isnullorempty(location)) {
      res.status(200).json({
        status: false,
        msg: "location not found"
      });
      return;
    }
    if (Misc.isnullorempty(donarnumber)) {
      res.status(200).json({
        status: false,
        msg: "donarnumber not found"
      });
      return;
    }
    if (Misc.isnullorempty(gmail)) {
      
      res.status(200).json({
        status: false,
        msg: "gmail not found"
      });
      return;
    }
    if (Misc.isnullorempty(key)) {
      res.status(200).json({
        status: false,
        msg: "key not found"
      });
      return;
    }
    var alreadyExists = await UserModel.find({ gmail: gmail, status: "Active" })
    if (!Misc.isnullorempty(alreadyExists)) {
      res.status(200).json({
        status: false,
        msg: "Gmail Already Registered"
      });
      return;
    } 
    var salt = bcrypt.genSaltSync(10);
    var hash = bcrypt.hashSync(key, salt);
    var user = new UserModel()
    user.donarname = donarname;
    user.gateno = donarnumber;
    user.gmail = gmail;
    user.key = hash;
    user.role ="Donar"
    await user.save()
    res.status(200).json({
      status: true,
      msg: " Registration sucessfull "
    });
    return;
  } catch (error) {
    console.log(error)

  }
})


// Ecotourism View


router.get('/user/View',adminauth,async(req,res) =>{
  try{
    var user = await UserModel.findOne({ status:"Active" })
      if (Misc.isnullorempty(user)) {
        res.status(200).json({
          status: false,
          msg: "Details Not Found"
        });
        return;
      }
      
      res.status(200).json({
          status: true,
          msg: "Details",
          data: user
        });
        return;
      
    } catch (error) {
      console.log(error)
    }
  
  }
)




//Guard Login


router.post('/Login',async (req, res) => {
    try {
      var { gmail, key, } = req.body;
      if (Misc.isnullorempty(gmail)) {
        res.status(200).json({
          status: false,
          msg: "gmail not found"
        });
        return;
      }
      if (Misc.isnullorempty(key)) {
        res.status(200).json({
          status: false,
          msg: "key not found"
        });
        return;
      }
      var alreadyExists = await UserModel.findOne({ gmail: gmail, status: "Active" })
      if (Misc.isnullorempty(alreadyExists)) {
        res.status(200).json({
          status: false,
          msg: "invalid access"
        });
        return;
      }
      // console.log(key,alreadyExists.key)
      var check = await bcrypt.compare(key,alreadyExists.key)
      if(!check){
        res.status(200).json({
          status: false,
          msg: "Incorrect key"
        });
        return;
      }
      alreadyExists = JSON.parse(JSON.stringify(alreadyExists))
      delete alreadyExists.key;
      var token=jwt.sign({id: alreadyExists._id/* user:alreadyExists */},defaults.secret)
      var tokendata=new tokenModel()
      tokendata.userid=alreadyExists._id
      tokendata.token=token
      await tokendata.save()
        res.status(200).json({
          status: true,
          msg: "Login sucess",
          data: alreadyExists,
          token:token
        });
        return;
    } catch (error) {
      console.log(error)
    }
  });


  //Logout    
  
  router.get('/logout',adminauth, async (req, res) => {
    try{
      var token = req.body.token || req.query.token || req.headers.token;
  
    if (Misc.isnullorempty(token)) {
      res.status(200).json({
        status: false,
        msg: " token not found"
      });
      return;
    }
    var tok = await tokenModel.findOneAndRemove({ userid:req.user.id,token:token,status:"Active" })
  
      res.status(200).json({
        status: true,
        msg: "logout sucess"
      });
      return;
      }
       catch (error) {
        console.log(error)
      res.status(500).json({
        status: false,
        msg: " Something went wrong"
    })
  return;
  }
      
  }
  
  )
  




module.exports = router;
