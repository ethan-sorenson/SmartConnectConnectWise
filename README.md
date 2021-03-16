# SmartConnect ConnectWise
 SmartConnect ConnectWise Extension

This extension makes some small modifications to Business Central to improve ConnectWise integrations.

## Included Changes

This Extension modifies two tables and three pages in Business Central, and publishes several web services.

## Table Changes
The following tables are modified in the [SCCWTableChanges.TableExt.al](SCCWTableChanges.TableExt.al) file.

1. Customer - add a Text field to store the ConnectWise Id.
2. Vendor - add a Text field to store the ConnectWise Id.

### Page Changes
The following two pages are modified in the [SCCWPageChanges.PageExt.al](SCCWPageChanges.PageExt.al) file.

1. Customer Card - Expose the 'ConnectWise Id' field for SmartConnect to store the ConnectWise unique id.
2. Vendor Card - Expose a 'ConnectWise Id' field for SmartConnect to store the ConnectWise unique id.
3. Item Card - Expose the 'No. 2' field on the Item Card for SmartConnect to store the ConnectWise unique id.

### Web Service Changes

[WSPublishing.xml](WSPublishing.xml) which will automatically publish all needed web services when the app is published.

## Getting Started

1. You can either install the .app file directly or download the source code and make your own extension.
2. Publish the extension, and click ***Refresh Service List*** on any BC Odata data source.
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

***Enjoy!***