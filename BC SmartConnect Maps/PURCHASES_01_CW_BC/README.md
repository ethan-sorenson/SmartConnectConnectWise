# PURCHASES_01_CW_BC

Retrieve a List of Unposted ConnectWise Purchases

## Overview

This integration will query for a list of unprocessed Procurement Ids. This list is then mapped to integration PURCHASES_02_CW_BC in a child task.

*Note: The target is a "dummy" file and will not send anything to ConnectWise. It is just a placeholder destination to allow SmartConnect to parse the list of Ids for map 2.*

```mermaid
flowchart TD
    cw1 --> A
    cw1 --> B
    A(PURCHASES_01_CW_BC) -->|"Get list of
    unposted procurements"| cw1
    B(PURCHASES_02_CW_BC) -->|"Import Purchase
     Invoice"| cw2 --> C
    C(PURCHASES_03_CW_BC) --> |"Writeback successfully
    imported records"| cw1
    cw1[/CW Procurements\]
    cw2[\BC Purchase Invoice/]
```

## Source

**Filters**
| Key | Value |
| -------- | ------- |
| conditions | procurementType='Purchase' |

![Source](./Images/Source.png)

## Target

![Target](./Images/Target.png)

## Integration

### Save Ids
```javascript
return true;
```
![saveIds](./Images/saveIds.png)

### Save Ids - parse ids
```javascript
//append Id to list for filter in map 2
this.GBL_CW_UNPOSTED_IDS += this._id_string;
return true;
```
![parseIds](./Images/parseIds.png)

## Tasks

### INIT_VARIABLES
| Option    | Value |
| -------- | ------- |
| Type  | Run Script   |
| Stage | Integration Pre Tasks |

```javascript
//script to intitialize variables used by child integrations
var mystring = this.GBL_CW_ALL_IDS;
mystring = this.GBL_CW_ID;
mystring = this.GBL_CW_PROCUREMENT_IDS;
mystring = this.GBL_CW_BATCH;
return true;
```

### RUN_MAP_2
| Option    | Value |
| -------- | ------- |
| Type  | Run Integration   |
| Stage | Integration Post Success Tasks  |
| Integration To Run | PURCHASES_02_CW_BC  |

![RUN_MAP_2](./Images/RUN_MAP_2.png)
