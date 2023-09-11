# PURCHASES_04_CW_BC
Post Successfully imported Purchases in ConnectWise

## Overview
This integration will writeback the Ids for all successfully imported Procurements to ConnectWise to post them. Once the Procurements are posted in ConnectWise they will no longer be picked up by the integration.

*Note: The data source is a "dummy" response that always returns 'True' this will never change. It is a SmartConenct requirement to always map at least one source field to the target. This is our way around the requirement when all our values are in Global Variables.*

## Source
**Filters**
None

![Source](./Images/Source.png)

## Target
![Target](./Images/Target.png)

## Integration

### Post Procurement Batch
```javascript
return true;
```
![Post Procurement Batch](./Images/PostProcurementBatch.png)


## Tasks
None