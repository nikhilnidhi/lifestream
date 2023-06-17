var mongoose = require('mongoose');
var userModelSchema = mongoose.Schema({
    donarname:{
        type:String
    },
    donarnumber:{
        type:String
    }, 
    gmail:{
        type:String
    },
    key:{
        type:String
    },
    role:{
        type:String,
        default:"User"
    },
    status:{
        type:String,
        default:"Active"
    }
}, {
    timestamps: { createdAt: 'create_date', updatedAt: 'update_date' }
});

var userModel = module.exports = mongoose.model('userModel', userModelSchema);
module.exports.get = function (callback, limit) {
    userModel.find(callback).limit(limit);
}
