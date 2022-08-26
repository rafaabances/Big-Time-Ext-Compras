table 50151 "DEL Generic Needs"
{
    DataClassification = ToBeClassified;
    Caption = 'Generic Needs', comment = 'ESP="Necesidades Genéricas"';


    fields
    {
        field(2; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No', comment = 'ESP="Nº Línea"';
        }
        field(3; "DEL Type Need/Event"; Enum "DEL Type Need/Event")
        {
            DataClassification = ToBeClassified;
            Caption = 'Type Need/Event', comment = 'ESP="Tipo"';
        }
        field(4; "No Item/Fixed Asset"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No', comment = 'ESP="Nº"';
            TableRelation = if ("DEL Type Need/Event" = const(Product)) Item where("Type" = const(Inventory))
            else
            if ("DEL Type Need/Event" = const(Service)) Item where("Type" = const(Service))
            else
            if ("DEL Type Need/Event" = const("Reservation Equipment")) "Fixed Asset"
            else
            if ("DEL Type Need/Event" = const("Purchase Equipment")) "Fixed Asset"
            else
            if ("DEL Type Need/Event" = const(Rent)) Item where("Type" = const(Rent))
            else
            if ("DEL Type Need/Event" = const(Insurance)) Item where("Type" = const(Insurance));
        }

        field(5; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity', comment = 'ESP="Cantidad"';
        }
        field(6; "Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Price', comment = 'ESP="Precio"';
        }
        field(7; "No Related Vendor"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No Related Vendor', comment = 'ESP="Nº de proveedor asociado"';
            TableRelation = Vendor;
            trigger OnValidate()
            var
                rlVendor: Record Vendor;
            begin
                if rlVendor.Get(Rec."No Related Vendor") then
                    rec."Name Reladed Vendor" := rlVendor.Name;
            end;
        }
        field(8; "Name Reladed Vendor"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name Reladed Vendor', comment = 'ESP="Nombre del proveedor asociado"';
            TableRelation = Vendor;
        }
        field(9; "No Related Product"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No Related Product', comment = 'ESP="Nº de producto asociado"';
            TableRelation = Item;
        }
        field(10; "Item Unit of Measure"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Unit of Measure', comment = 'ESP="Unidad de medida producto"';
            TableRelation = "Item Unit of Measure";
        }
        field(11; "Type of Calculation"; Enum "DEL Type of Calculation")
        {
            DataClassification = ToBeClassified;
            Caption = 'Type of Calculation', comment = 'ESP="Tipo de cálculo"';
        }
        field(12; "SurCharge Insurance"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'SurCharge Insurance', comment = 'ESP="Recargo Seguro"';
        }

    }

    keys
    {
        key("Line No"; "Line No", "No Item/Fixed Asset")
        {
            Clustered = true;
        }
    }



    trigger OnInsert()
    var
        vlNextLine: Integer;
        rlGenNeeds: Record "DEL Generic Needs";
    begin
        if "Line No" = 0 then begin
            vlNextLine := 0;
            rlGenNeeds.Reset();
            if rlGenNeeds.FindLast() then
                vlNextLine := rlGenNeeds."Line No";
            "Line No" := vlNextLine + 10000;
        end;
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