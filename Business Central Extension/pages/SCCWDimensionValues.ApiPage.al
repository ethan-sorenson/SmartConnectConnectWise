page 64051 SCCWDimensionValues
{
    PageType = API;
    Caption = 'SCCWDimensionValues';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    APIVersion = 'v2.0';
    EntityName = 'dimensionValue';
    EntitySetName = 'dimensionValues';
    SourceTable = "Dimension Value";
    DelayedInsert = true;
    ChangeTrackingAllowed = true;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater(List)
            {
                field(dimensionCode; Rec."Dimension Code") { }
                field(code; Rec.Code) { }
                field(name; Rec.Name) { }
                field(blocked; Rec.Blocked) { }
                field(dimensionValueType; Rec."Dimension Value Type") { }
            }
        }
    }
}