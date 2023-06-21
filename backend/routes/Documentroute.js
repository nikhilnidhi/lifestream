const express = require('express')
const router = express()
const multer = require('multer')
const Misc = require('../controller/misc')
const DocumentsModel = require('../models/Documentmodel')
const { UserAgent } = require('express-useragent');


var upload = multer({dest:'Image/'});
var storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, './Image/');
     },
    filename: function (req, file, cb) {
        cb(null , Date.now().toString() + file.originalname);
    }
});
var upload = multer({ storage: storage })

router.post('/documents', upload.fields([{
  name: 'bloodcertificate', maxCount: 1

}
]), async (req, res) => {
    try {
        var Documents = await DocumentsModel.findOne({ status:"Active"})
      if (Misc.isnullorempty(Documents)) {
        Documents = new DocumentsModel()
      }

    //    console.log(req.files)
      if (!Misc.isnullorempty(req.files)) {
        if (Object.keys(req.files).length > 0) {
          if (req.files.bloodcertificate) {
            if (req.files.bloodcertificate.length > 0) {
              Documents.bloodcertificate = req.files.bloodcertificate[0].filename;
            }
          }
        }
      }await Documents.save()
      res.status(200).json({
        status: true,
        msg: " sucessfull"
  
      })      // res.send(req.file);
    }catch(err) {
        res.status(200).json({
            status: true,
            msg: " failes"
      
    })
}
  });




module.exports = router;