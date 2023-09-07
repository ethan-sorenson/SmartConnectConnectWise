permissionset 64051 "ConnectWise"
{
    Caption = 'SmartConnect ConnectWise Extension';
    Assignable = true;
    Permissions = page "SCCW - DimensionValues" = X,
        query CustomerPayments = X,
        query LocationBinsQuery = X,
        page "SCCW - Customers" = X,
        page "SSCW - Bins" = X,
        page "SSCW - Items" = X,
        page "SSCW - Locations" = X,
        page "SSCW - Purchase Invoice Lines" = X,
        page "SSCW - Sales Invoice Lines" = X,
        page "SSCW - Vendors" = X,
        page "SSCW - Item Journal Lines" = X;
}