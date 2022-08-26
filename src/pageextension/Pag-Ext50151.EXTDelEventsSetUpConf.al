pageextension 50151 "EXT Del Events SetUp Conf" extends "Del Events SetUp Conf"
{
    layout
    {
        addafter(General)
        {
            group("Generic Needs")
            {
                Caption = 'Generic Needs', comment = 'ESP="Necesidades Genéricas"';
                part("DEL Generic Needs"; "DEL Generic Needs Page")
                {
                    ApplicationArea = Basic, Suite;
                    // SubPageLink = "Primary Code" = FIELD("Primary Code");
                    UpdatePropagation = Both;
                }
            }
        }
    }
}