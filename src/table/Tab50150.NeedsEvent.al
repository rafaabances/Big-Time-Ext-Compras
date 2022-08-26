table 50150 "Needs/Event"
{
    DataClassification = ToBeClassified;
    Caption = 'Needs/Event', comment = 'ESP="Necesidades/Evento"';

    fields
    {
        field(1; "No Event"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key("No Event"; "No Event")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}