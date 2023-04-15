query 64052 LocationBinsQuery
{
    QueryType = API;
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ES';
    APIVersion = 'v2.0';
    EntityName = 'LocationBinsQuery';
    EntitySetName = 'LocationBinsQuery';

    elements
    {
        dataitem(Location; Location)
        {
            column(LocationCode; Code) { }
            column(LocationName; Name) { }
            column(LocationName2; "Name 2") { }
            column(LocationConnectWiseId; "ConnectWise Id") { }
            dataitem(Bin; Bin)
            {
                DataItemLink = "Location Code" = Location."Code";
                SqlJoinType = InnerJoin;
                column(BinCode; Code) { }
                column(BinDescription; Description) { }
                column(BinConnectWiseId; "ConnectWise Id") { }

            }
        }
    }
}