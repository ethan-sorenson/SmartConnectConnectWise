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