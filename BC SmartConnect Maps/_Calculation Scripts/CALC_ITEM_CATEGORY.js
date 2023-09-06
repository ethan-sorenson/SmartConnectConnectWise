//Set the Item Category code to proper case
return this._ItemCategoryCode.replace(/\w\S*/g,
    function(txt) {
      return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
    }
)