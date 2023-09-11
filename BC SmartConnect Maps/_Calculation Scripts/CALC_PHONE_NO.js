//Script to format Phone Number for Business Central
var phone = this._phoneNumber.toUpperCase().replace(/EXT|EX|X/g, "#");
return phone.replace(/[&\/, A-Z@!|^$?~%.*\[\]{}]/g, "");