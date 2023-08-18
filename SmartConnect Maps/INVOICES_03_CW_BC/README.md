# INVOICES_03_CW_BC
Post Successfully imported Invoices in ConnectWise

## Overview
This integration will writeback the Ids for all successfully imported Invoices to ConnectWise to post them. Once the Invoices are posed in ConnectWise they will no longer be picked up by the integration.

*Note: The data source is a "dummy" response that always returns 'True' this will never change. It is a SmartConenct requirement to always map at least one source field to the target. This is our way around the requirement when all our values are in Global Variables.*

## Source
**Filters**
None

![Source](./Images/Source.png)

## Target
![Target](./Images/Target.png)

## Integration

### Post Sales Batch
```javascript
return true;
```
![PostSalesBatch](./Images/PostSalesBatch.png)


## Tasks
None