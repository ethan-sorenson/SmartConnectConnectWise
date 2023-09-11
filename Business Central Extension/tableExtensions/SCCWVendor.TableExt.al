tableextension 64052 SCCWVendorTable extends "Vendor"
{
    fields
    {
        field(64051; "ConnectWise Id"; Text[10])
        {
            Caption = 'ConnectWise Id';
        }
        field(64052; "SSCW ShortcutDim3Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code';
            CaptionClass = '1,2,3';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(3));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                ValidateShortcutDimCode(3, "SSCW ShortcutDim3Code");
            end;
        }
        field(64053; "SSCW ShortcutDim4Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code';
            CaptionClass = '1,2,4';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(4));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                ValidateShortcutDimCode(4, "SSCW ShortcutDim4Code");
            end;
        }
        field(64054; "SSCW ShortcutDim5Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code';
            CaptionClass = '1,2,5';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(5));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                ValidateShortcutDimCode(5, "SSCW ShortcutDim5Code");
            end;
        }
        field(64055; "SSCW ShortcutDim6Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code';
            CaptionClass = '1,2,6';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(6));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                ValidateShortcutDimCode(6, "SSCW ShortcutDim6Code");
            end;
        }
        field(64056; "SSCW ShortcutDim7Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code';
            CaptionClass = '1,2,7';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(7));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                ValidateShortcutDimCode(7, "SSCW ShortcutDim7Code");
            end;
        }
        field(64057; "SSCW ShortcutDim8Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code';
            CaptionClass = '1,2,8';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(8));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                ValidateShortcutDimCode(8, "SSCW ShortcutDim8Code");
            end;
        }
    }
}