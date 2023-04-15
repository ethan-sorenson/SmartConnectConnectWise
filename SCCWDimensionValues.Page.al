page 64051 SCCWDimensionValues
{
    PageType = API;
    Caption = 'SCCWDimensionValues';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ES';
    APIVersion = 'v2.0';
    EntityName = 'SCCWDimensionValues';
    EntitySetName = 'SCCWDimensionValues';
    SourceTable = "Dimension Value";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(List)
            {
                field("Dimension_Code"; Rec."Dimension Code")
                {
                    Caption = 'Dimension Code';
                }
                field(Code; Rec.Code)
                {
                    Caption = 'Code';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(Blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';
                }
                field("Dimension_Value_Type"; Rec."Dimension Value Type")
                {
                    Caption = 'Dimension Value Type';
                }
            }
        }
    }
}