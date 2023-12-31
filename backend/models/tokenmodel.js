const mongoose = require('mongoose')
var tokenModelSchema = mongoose.Schema({
    status:{
        type:String,
        default:"Active"
    },
    userid:
    {
        type:mongoose.Schema.Types.ObjectId,
        ref:"userModel"
    },
    token:
    {
        type:String
    },
})
module.exports=mongoose.model("tokenModel",tokenModelSchema)