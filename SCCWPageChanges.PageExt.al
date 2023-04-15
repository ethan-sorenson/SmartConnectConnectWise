pageextension 64051 SCCWCustomerCard extends "Customer Card"
{
    layout
    {
        addlast("General")
        {
            field("ConnectWise Id"; rec."ConnectWise Id")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
                Editable = CWEdit;
            }
        }
    }
    var
        CWEdit: Boolean;

    //Only allow edit through web services
    trigger OnOpenPage()
    begin
        if not GuiAllowed then
            CWEdit := true;
    end;
}

pageextension 64052 SCCWVendorCard extends "Vendor Card"
{
    layout
    {
        addlast("General")
        {
            field("ConnectWise Id"; rec."ConnectWise Id")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
                Editable = CWEdit;
            }
        }
    }

    var
        CWEdit: Boolean;

    //Only allow edit through web services
    trigger OnOpenPage()
    begin
        if not GuiAllowed then
            CWEdit := true;
    end;
}

pageextension 64053 SCCWItemCard extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field("ConnectWise Id"; rec."No. 2")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
                Editable = CWEdit;
            }
        }
    }

    var
        CWEdit: Boolean;

    //Only allow edit through web services
    trigger OnOpenPage()
    begin
        if not GuiAllowed then
            CWEdit := true;
    end;
}

pageextension 64054 SCCWLocationCard extends "Location Card"
{
    layout
    {
        addlast(General)
        {
            field("ConnectWise Id"; rec."ConnectWise Id")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
            }
        }
    }
}

pageextension 64055 SCCWBinsList extends "Bins"
{
    layout
    {
        addafter(Description)
        {
            field("ConnectWise Id"; rec."ConnectWise Id")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
            }
        }
    }
}