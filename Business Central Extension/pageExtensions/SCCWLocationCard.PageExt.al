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