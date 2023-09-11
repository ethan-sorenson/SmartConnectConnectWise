# SmartConnect ConnectWise Extension

This extension makes some small modifications to Business Central to improve ConnectWise integrations.

- [SmartConnect ConnectWise Extension](#smartconnect-connectwise-extension)
  - [Table Changes](#table-changes)
  - [Page Changes](#page-changes)
  - [New API Pages](#new-api-pages)
  - [Getting Started](#getting-started)
  - [Troubleshooting](#troubleshooting)

## Table Changes

The following tables are modified in the [tableExtensions](./tableExtensions/) folder.

| Table # | Name                     | Modification                                        |
| ------- | ------------------------ | --------------------------------------------------- |
| 64054   | SCCWBinTable             | Add ConnectWise Id external Id                      |
| 64051   | SCCWCustomerTable        | Add ConnectWise Id external Id and Dimension fields |
| 64059   | SCCWItemTable            | Add ConnectWise Id external Id and Dimension fields |
| 64065   | SCCWItemJournalLineTable | Add ConnectWise Id external Id                      |
| 64066   | SCCWItemLedgerEntryTable | Add ConnectWise Id external Id                      |
| 64053   | SCCWLocationTable        | Add ConnectWise Id external Id                      |
| 64057   | SCCWSalesCrLineTable     | Add ConnectWise Id external Id                      |
| 64056   | SCCWSalesInvLineTable    | Add ConnectWise Id external Id                      |
| 64055   | SCCWSalesLineTable       | Add ConnectWise Id external Id and Dimension fields |
| 64052   | SCCWVendorTable          | Add ConnectWise Id external Id and Dimension fields |
| 64064   | SCCWPurchLineTable       | Add ConnectWise Id external Id and Dimension fields |
| 64063   | SCCWPurchInvLineTable    | Add ConnectWise Id external Id                      |

## Page Changes

The following pages are modified in the [pageExtensions](./pageExtensions/) folder.

| Page          | Modification                   |
| ------------- | ------------------------------ |
| Bins          | Add ConnectWise Id external Id |
| Customer Card | Add ConnectWise Id external Id |
| Item Card     | Add ConnectWise Id external Id |
| Location Card | Add ConnectWise Id external Id |
| Vendor Card   | Add ConnectWise Id external Id |

## New API Pages

The following API Queries and pages are added to improve functionality. They can be modified in the [pages](./pages/) and [queries](./queries/) folders

| Type  | Name                          | Description                                                       |
| ----- | ----------------------------- | ----------------------------------------------------------------- |
| Query | CustomerPayments              | Adds an optimized query for customer payments                     |
| Query | LocationBinsQuery             | Adds an optimized query for bins in OData lookups                 |
| Page  | SCCW - Customers              | Exposes most fields & 8 dimensions on the Customer table          |
| Page  | SCCW - DimensionValues        | Exposes most fields on the Dimension Value table                  |
| Page  | SSCW - Item Journal Lines     | Exposes most fields & 8 dimensions on the Item Journal Line table |
| Page  | SSCW - Purchase Invoice Lines | Exposes most fields & 8 dimensions on the Purchase Line table     |
| Page  | SSCW - Vendors                | Exposes most fields & 8 dimensions on the Vendor table            |
| Page  | SSCW - Bins                   | Exposes most fields on the Bins table as a subpage on Locations   |
| Page  | SSCW - Items                  | Exposes most fields & 8 dimensions on the Item table              |
| Page  | SSCW - Locations              | Exposes most fields on the Location table and links bins          |
| Page  | SSCW - Sales Invoice Lines    | Exposes most fields & 8 dimensions on the Sales Line table        |

[WSPublishing.xml](WSPublishing.xml) will automatically publish all needed web services when the app is published.

## Getting Started

1. You can either install the .app file directly or download the source code and make your own extension.
2. Publish the extension in Business Central.
3. In SmartConnect, click **_Refresh Service List_** on any Business Central OData data source.

![increment](https://i.imgur.com/ENxN3bc.jpg)

## Troubleshooting

**Web Service isn't available after publishing**

- Make sure the service is published as outlined [here](https://docs.microsoft.com/en-us/dynamics365/business-central/across-how-publish-web-service "documentation").
- Make sure the service is named as expected ex. /ODataV4/Company('Sample')/SalesInvoiceHeader

**_Enjoy!_**
