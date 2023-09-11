//Flip negative credit amounts to positive
if (this._documentType == "CREDIT MEMO") {
    return this._gl_unit_price * -1;
  } else {
    return this._gl_unit_price;
  }