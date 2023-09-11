//Flip negative credit memo amounts to positive
if (this._documentType == "CREDIT MEMO") {
    return this._item_unit_price * -1;
  } else {
    return this._item_unit_price;
  }