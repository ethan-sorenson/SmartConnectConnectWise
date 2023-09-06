# MEMBERS_01_CW_BC
ConnectWise Members to Business Central Vendors

## Overview
This integration will incrementally query Member records from ConnectWise based on a date filter and push them into Business Central as vendors. 

This integration is only required if using the Expense integrations.

## Source
**Filters**
| Key    | Value |
| -------- | ------- |
| conditions | inactiveFlag=false and lastUpdated>=[GBL_CW_DATE]     |

![Source](./Images/Source.png)

## Target
![Target](./Images/Target.png)

## Integration

### VendorCreate
![VendorCreate](./Images/VendorCreate.png)

## Tasks

### INIT_VARIABLE
| Option    | Value |
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
| Option    | Value |
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
| Option    | Value |
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