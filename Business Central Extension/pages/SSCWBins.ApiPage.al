page 64060 "SSCW - Bins"
{
    DelayedInsert = true;
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Bin';
    EntitySetCaption = 'Bins';
    PageType = API;
    ODataKeyFields = SystemId;
    EntityName = 'bin';
    EntitySetName = 'bins';
    SourceTable = "Bin";
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; rec.SystemId) { Editable = false; }
                field(locationCode; Rec."Location Code") { }
                field(code; Rec.Code) { }
                field(connectwiseId; Rec."ConnectWise Id") { }
                field(zoneCode; Rec."Zone Code") { }
                field(description; Rec.Description) { }
                field(binTypeCode; Rec."Bin Type Code") { }
                field(warehouseClassCode; Rec."Warehouse Class Code") { }
            }
        }
    }
}