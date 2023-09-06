//Switch based on item type
switch (this._item_type) {
    case "Service":
      return "LABOR";
      break;
    case "Non-Inventory":
      return "MATERIALS";
      break;
    default:
      return "RETAIL";
  }