pageextension 50150 "EXT Del Events Card" extends "Del Events Card"
{
    layout
    {
        addafter("Event Artist")
        {
            group("Needs of Event")
            {
                Caption = 'Needs of Event', comment = 'ESP="Necesidades de Evento"';
                part("DEL Needs/Event"; "DEL Needs/Event Page")
                {
                    ApplicationArea = Basic, Suite;
                    SubPageLink = "No Event" = FIELD("No Event");
                    UpdatePropagation = Both;
                }
            }
        }

    }
}