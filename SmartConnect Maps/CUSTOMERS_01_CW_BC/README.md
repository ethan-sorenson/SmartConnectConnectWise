# CUSTOMERS_01_CW_BC
ConnectWise Companies to Business Central Customers

## Overview
This integration will incrementally query customer records from ConnectWise based on a date filter and push them into Business Central as customers.

## Source
**Filters**
| Key    | Value |
| -------- | ------- |
| childconditions  | types/id<>6    |
| conditions | lastUpdated>=[GBL_CW_DATE] and updatedBy !='[[integrationUser]]' and deletedFlag=false     |

![Source](./Images/Source.png)

## Target
![Target](./Images/Target.png)

## Integration

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

## Tasks

### INIT_VARIABLE
| -------- | ------- |
| Type  | Run Script   |
| Stage | Integration Pre Tasks  |
```javascript
//Store current date in a variable
var nd = new Date();
this.GBL_CW_STAGING_DATE = nd.toISOString();
return true;
```

### FAILURE_SET_NEXT_RUN_DATE_TIME
| -------- | ------- |
| Type  | Run Script   |
| Stage | Integration Post Failure Tasks  |
```javascript
//Set date filter for next run
var nd = new Date(this.GBL_CW_STAGING_DATE);
// format DateTime - ISO 8601 - yyyy-MM-ddThh:mm:ss:miZ
this.GBL_CW_DATE = nd.toISOString();
return true;
```

### SUCCESS_SET_NEXT_RUN_DATE_TIME
| -------- | ------- |
| Type  | Run Script   |
| Stage | Integration Post Success Tasks  |
```javascript
//Set date filter for next run
var nd = new Date(this.GBL_CW_STAGING_DATE);
// format DateTime - ISO 8601 - yyyy-MM-ddThh:mm:ss:miZ
this.GBL_CW_DATE = nd.toISOString();
return true;
```