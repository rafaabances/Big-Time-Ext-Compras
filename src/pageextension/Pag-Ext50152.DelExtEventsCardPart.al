pageextension 50152 "Del Ext Events CardPart" extends "Del Events CardPart"
{
    layout
    {
        addafter("Number Draft Events")
        {
            field("Number In preparation Events"; Rec."Number In preparation Events")
            {
                ApplicationArea = All;
                DrillDownPageID = "Del Event List";
                Image = Settings;
                LookupPageId = "Del Event List";
                ToolTip = 'Specifies the value of the Nº de Eventos en Preparación';
            }
        }
    }
}