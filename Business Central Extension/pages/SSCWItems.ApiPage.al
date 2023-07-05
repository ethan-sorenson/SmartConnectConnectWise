page 64057 "SSCW - Items"
{
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Item';
    EntitySetCaption = 'Items';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    EntityName = 'item';
    EntitySetName = 'items';
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = Item;
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; rec.SystemId) { Editable = false; }
                field(number; rec."No.")
                {
                }
                field(number2; rec."No. 2")
                {
                }
                field(connectwiseId; rec."ConnectWise Id")
                {
                }
                field(displayName; rec.Description)
                {
                }
                field(type; rec.Type)
                {
                }
                field(itemCategoryCode; rec."Item Category Code")
                {
                }
                field(blocked; rec.Blocked)
                {
                }
                field(gtin; rec.GTIN)
                {
                }
                field(unitPrice; rec."Unit Price")
                {
                }
                field(priceIncludesTax; rec."Price Includes VAT")
                {
                }
                field(unitCost; rec."Unit Cost")
                {
                }
                field(taxGroupCode; rec."Tax Group Code")
                {
                }
                field(baseUnitOfMeasureCode; rec."Base Unit of Measure")
                {
                }
                field(generalProductPostingGroupCode; rec."Gen. Prod. Posting Group")
                {
                }
                field(inventoryPostingGroupCode; rec."Inventory Posting Group")
                {
                }
                field(vatProductPostingGroupCode; rec."VAT Prod. Posting Group")
                {
                }
                field(costingMethod; rec."Costing Method")
                {
                }
                field(shortcutDimension1Code; rec."Global Dimension 1 Code")
                {
                }
                field(shortcutDimension2Code; rec."Global Dimension 2 Code")
                {
                }
                field(shortcutDim3Code; rec."SSCW ShortcutDim3Code")
                {
                }
                field(shortcutDim4Code; rec."SSCW ShortcutDim4Code")
                {
                }
                field(shortcutDim5Code; rec."SSCW ShortcutDim5Code")
                {
                }
                field(shortcutDim6Code; rec."SSCW ShortcutDim6Code")
                {
                }
                field(shortcutDim7Code; rec."SSCW ShortcutDim7Code")
                {
                }
                field(shortcutDim8Code; rec."SSCW ShortcutDim8Code")
                {
                }
                field(lastModifiedDateTime; rec.SystemModifiedAt) { Editable = false; }

                part(_Default_Dimensions; "APIV2 - Default Dimensions")
                {
                    Caption = 'Default Dimensions';
                    EntityName = 'defaultDimension';
                    EntitySetName = 'defaultDimensions';
                    SubPageLink = ParentId = Field(SystemId), "Parent Type" = const(Item);
                }
            }
        }
    }
}

