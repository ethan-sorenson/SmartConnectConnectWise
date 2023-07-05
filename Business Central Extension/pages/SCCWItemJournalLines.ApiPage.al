page 64059 "SSCW - Item Journal Lines"
{
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Item Journal Line';
    EntitySetCaption = 'Item Journal Lines';
    EntityName = 'itemJournalLine';
    EntitySetName = 'itemJournalLines';
    PageType = API;
    ODataKeyFields = SystemId;
    Editable = true;
    DelayedInsert = true;
    LinksAllowed = false;
    SourceTable = "Item Journal Line";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field(systemId; rec.SystemId) { Editable = false; }
                field(journalTemplateName; Rec."Journal Template Name") { }
                field(journalBatchName; Rec."Journal Batch Name") { }
                field(connectWiseId; Rec."ConnectWise Id") { }
                field(lineNo; Rec."Line No.") { }
                field(postingDate; Rec."Posting Date") { }
                field(documentDate; Rec."Document Date") { }
                field(entryType; Rec."Entry Type") { }
                field(documentNumber; Rec."Document No.") { }
                field(itemNumber; Rec."Item No.") { }
                field(priceCalculationMethod; Rec."Price Calculation Method") { }
                field(variantCode; Rec."Variant Code") { }
                field(description; Rec.Description) { }
                field(locationCode; Rec."Location Code") { }
                field(binCode; Rec."Bin Code") { }
                field(salespersonCode; Rec."Salespers./Purch. Code") { }
                field(generalBusPostingGroup; Rec."Gen. Bus. Posting Group") { }
                field(generalProdPostingGroup; Rec."Gen. Prod. Posting Group") { }
                field(quantity; Rec.Quantity) { }
                field(unitOfMeasureCode; Rec."Unit of Measure Code") { }
                field(unitAmount; Rec."Unit Amount") { }
                field(Amount; Rec.Amount) { }
                field(unitCost; Rec."Unit Cost") { }
                field(shortcutDimCode1; Rec."Shortcut Dimension 1 Code") { }
                field(shortcutDimCode2; Rec."Shortcut Dimension 2 Code") { }
                field(shortcutDimCode3; ShortcutDimCode[3])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,3';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    trigger OnValidate()
                    begin
                        rec.ValidateShortcutDimCode(3, ShortcutDimCode[3]);
                    end;
                }
                field(shortcutDimCode4; ShortcutDimCode[4])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,4';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    trigger OnValidate()
                    begin
                        rec.ValidateShortcutDimCode(4, ShortcutDimCode[4]);
                    end;
                }
                field(shortcutDimCode5; ShortcutDimCode[5])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,5';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    trigger OnValidate()
                    begin
                        rec.ValidateShortcutDimCode(5, ShortcutDimCode[5]);
                    end;
                }
                field(shortcutDimCode6; ShortcutDimCode[6])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,6';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    trigger OnValidate()
                    begin
                        rec.ValidateShortcutDimCode(6, ShortcutDimCode[6]);
                    end;
                }
                field(shortcutDimCode7; ShortcutDimCode[7])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,7';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(7),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    trigger OnValidate()
                    begin
                        rec.ValidateShortcutDimCode(7, ShortcutDimCode[7]);
                    end;
                }
                field(shortcutDimCode8; ShortcutDimCode[8])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,8';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(8),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    trigger OnValidate()
                    begin
                        rec.ValidateShortcutDimCode(8, ShortcutDimCode[8]);
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Clear(ShortcutDimCode);
    end;

    trigger OnOpenPage()
    var
        PriceCalculationMgt: Codeunit "Price Calculation Mgt.";
    begin
        ExtendedPriceEnabled := PriceCalculationMgt.IsExtendedPriceCalculationEnabled();
    end;

    var
        ItemJnlLine: Record "Item Journal Line";
        ItemJnlTemplate: Record "Item Journal Template";
        ShortcutDimCode: array[8] of Code[20];
        ExtendedPriceEnabled: Boolean;
}

