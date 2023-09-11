//extract source code from account number at index of :
var AccountNumber =  this._detail_accountNumber;
if (AccountNumber.includes(":")) {
	return AccountNumber.split(":")[1];
} else {
	return '';
}