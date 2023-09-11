//set posting date to the last day of document date month
var today = this._documentDate.toString();
const dateObj = new Date(today);
var lastDayOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth()+1, 0);
var d = lastDayOfMonth.toISOString().slice(0,10);
return d;