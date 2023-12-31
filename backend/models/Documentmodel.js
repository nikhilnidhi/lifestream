var mongoose = require('mongoose');
var DocumentsModelSchema = mongoose.Schema({

    bloodcertificate:{
        type:String
    },
    status:{
        type:String,
        default:"Active"
    }
}, {
    timestamps: { createdAt: 'create_date', updatedAt: 'update_date' }
});

var DocumentsModel = module.exports = mongoose.model('DocumentsModel', DocumentsModelSchema);
module.exports.get = function (callback, limit) {
    DocumentsModel.find(callback).limit(limit);
}