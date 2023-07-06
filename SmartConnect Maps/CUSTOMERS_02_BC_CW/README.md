# CUSTOMERS_02_BC_CW
Business Central Customers to ConnectWise Companies

## Overview
This integration will create/update recently modified BC Customers in ConnectWise.

## Source
**Filters**
None

![Source](./Images/Source.png)

## Target
![Target](./Images/Target.png)

## Integration

### Create Customer
```javascript
//use this mapping if ConnectWiseId does not contain a value
if (!this._ConnectWiseId) {
  return true;
} else {
  return false;
}
```
![CustomerCreate](./Images/Create%20Customer.png)

### Update Customer
```javascript
//use this mapping if ConnectWiseId contains a value
if (this._ConnectWiseId) {
  return true;
} else {
  return false;
}
```
![CustomerUpdate](./Images/Update%20Customer.png)

## Tasks
None