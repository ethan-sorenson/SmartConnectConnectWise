//Script to make identifier valid
var id = this._Description.replace(/[^a-zA-Z ]/g, "");
if (id.length > 25) {
    id = id.substring(0, 25);
}
return id;