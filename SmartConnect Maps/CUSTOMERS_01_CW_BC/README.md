# CUSTOMERS_01_CW_BC
ConnectWise Companies to Business Central Customers

## Overview
This integration will incrementally query customer records from ConnectWise based on a date filter and push them into Business Central as customers.

## Source

| Key    | Value |
| -------- | ------- |
| childconditions  | types/id<>6    |
| conditions | lastUpdated>=[GBL_CW_DATE] and updatedBy !='[[integrationUser]]' and deletedFlag=false     |

![Source](./Images/Source.png)

## Target
![Target](./Images/Target.png)

## Integration

![Integration](./Images/Integration.png)

### CustomerCreate
```javascript
//Use this mapping if accountNumber field is blank
if (!this._accountNumber) {
    return true;
} else {
    return false;
} 
```
![CustomerCreate](./Images/CustomerCreate.png)

### CustomerUpdate
```javascript
//Use this mapping if accountNumber field contains a value
if (this._accountNumber) {
    return true;
} else {
    return false;
}
```
![CustomerCreate](./Images/CustomerUpdate.png)

### Tasks
