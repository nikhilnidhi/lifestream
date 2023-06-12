function isnullorempty(val) {
    if (typeof val === "undefined") {
        return true;
    }
    if (val === false || val === true) {
        return false;
    }
    if (val === 0) {
        return false;
    }
    if (val === undefined || val === null || val === "undefined" || val === "null" || val === "" || (!val)) {
        return true;
    }
    else
        if (typeof val === "number") {
            return false;
        }
        else {
            if (val.length > 0) {
                return false;
            }
            else {
                val = JSON.stringify(val);
                val = JSON.parse(val);
                if (Object.keys(val).length > 0) {
                    return false;
                }
                else {
                    return true;
                }
            }
        }
}

module.exports.isnullorempty = isnullorempty;