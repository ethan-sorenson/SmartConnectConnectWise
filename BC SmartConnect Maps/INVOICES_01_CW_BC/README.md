# INVOICES_01_CW_BC
Retrieve List of Unposted ConnectWise Invoices

## Overview
This integration will query for a list of unprocessed Invoice Ids. This list is then mapped to integration INVOICES_02_CW_BC in a child task.

*Note: The target is a "dummy" file and will not send anything to ConnectWise. It is just a placeholder destination to allow SmartConnect to parse the list of Ids for map 2.*

```mermaid
flowchart TD
    cw1 --> A 
    cw1 --> B
    A(INVOICES_01_CW_BC) -->|"Get list of 
    unposted invoices"| cw1
    B(INVOICES_02_CW_BC) -->|"Import Sales Invoice"| cw2 --> C
    C(INVOICES_03_CW_BC) --> |"Writeback successfully 
    imported records"| cw1 
    cw1[/CW Invoices\]
    cw2[\BC Sales Invoice/]
```

## Source
**Filters**
None

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

### RUN_MAP_2
| Option    | Value |
| -------- | ------- |
| Type  | Run Integration   |
| Stage | Integration Post Success Tasks  |
| Integration To Run | INVOICES_02_CW_BC  |

![RUN_MAP_2](./Images/RUN_MAP_2.png)