# SmartConnect ConnectWise
 SmartConnect ConnectWise Extension

This extension makes some small modifications to Business Central to improve ConnectWise integrations.

## Included Changes

This Extension modifies some tables and pages in Business Central, and publishes several web services.

## Table Changes
The following tables are modified in the [SCCWTableChanges.TableExt.al](SCCWTableChanges.TableExt.al) file.

1. Customer - add a Text field to store the ConnectWise Id.
2. Vendor - add a Text field to store the ConnectWise Id.
3. Location - add a Text field to store the ConnectWise Id.
4. Bin - add a Text field to store the ConnectWise Id.

### Page Changes
The following two pages are modified in the [SCCWPageChanges.PageExt.al](SCCWPageChanges.PageExt.al) file.

1. Customer Card - Expose the 'ConnectWise Id' field for SmartConnect to store the ConnectWise unique id.
2. Vendor Card - Expose a 'ConnectWise Id' field for SmartConnect to store the ConnectWise unique id.
3. Item Card - Expose the 'No. 2' field on the Item Card for SmartConnect to store the ConnectWise unique id.
4. Location Card - Expose a 'ConnectWise Id' field for SmartConnect to store the ConnectWise unique id.
5. Bin List - Expose a 'ConnectWise Id' field for SmartConnect to store the ConnectWise unique id.

### Web Service Changes
The following API Queries and pages are added to improve functionality.

1. [SCCWPayments.Query.al](SCCWPayments.Query.al) adds an optimized query for customer payments.
2. [SCCWLocationBins.Query.al](SCCWLocationBins.Query.al) adds an optimized query for bins and locations based on external ids.
3. [SCCWDimensionValues.Page.al](SCCWDimensionValues.Page.al) adds a page allowing dimension values to be created through the web service.

[WSPublishing.xml](WSPublishing.xml) which will automatically publish all needed web services when the app is published.

## Getting Started

1. You can either install the .app file directly or download the source code and make your own extension.
2. Publish the extension in Business Central.
3. In SmartConnect, click ***Refresh Service List*** on any Business Central Odata data source.
3. Import the integration processes for your ConnectWise integration.

![increment](https://i.imgur.com/ENxN3bc.jpg)

## Troubleshooting

**Web Service isn't available after publishing**

- Make sure the service is published as outlined [here](https://docs.microsoft.com/en-us/dynamics365/business-central/across-how-publish-web-service "documentation").
- Make sure the service is named as expected ex. /ODataV4/Company('Sample')/SalesInvoiceHeader

**Something else isn't working properly**

- Use github's issue reporter on the right
- Send me an email ethan.sorenson@eonesolutions.com (might take a few days)

## Updates

- 1.0.0.0 first release on BC v17
- 1.0.0.2 Added external ids to Location and Bin tables and a LocationBins query for faster lookups. Also added a web service for creating new Dimension Values.

***Enjoy!***