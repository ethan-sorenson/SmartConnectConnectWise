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