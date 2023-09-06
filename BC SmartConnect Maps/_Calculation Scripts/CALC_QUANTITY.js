//Set line quantity based on CW GL Type
if (this._detail_glTypeId == "RP" || this._detail_glTypeId == "AP") {
    return this._detail_quantity * -1;
} else {
  	return 1;
}