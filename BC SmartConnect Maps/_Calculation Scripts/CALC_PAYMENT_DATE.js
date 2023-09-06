//format payment date before sending to ConnectWise
var nd = new Date(this._PaymentPostingDate);
return nd.toISOString();