page 50150 "DEL Needs/Event Page"
{
    Caption = 'Necesidades del Evento';
    PageType = ListPart;
    SourceTable = "DEL Needs/Event";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No Event"; Rec."No Event")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No Event field.', Comment = 'ESP="Nº de Evento"';
                }
                field("DEL Type Need/Event"; Rec."DEL Type Need/Event")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type Need/Event field.', Comment = 'ESP="Tipo"';
                }
                field("No Item/Fixed Asset"; Rec."No Item/Fixed Asset")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.', Comment = 'ESP="Nº"';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = 'ESP="Cantidad"';
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price field.', Comment = 'ESP="Precio"';
                }
                field("No Related Vendor"; Rec."No Related Vendor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No Related Vendor field.', Comment = 'ESP="Nº de proveedor asociado"';
                }
                field("Name Reladed Vendor"; Rec."Name Reladed Vendor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name Reladed Vendor field.', Comment = 'ESP="Nombre del proveedor asociado"';
                }
                field("No Related Product"; Rec."No Related Product")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No Related Product field.', Comment = 'ESP="Nº de producto asociado"';
                }
                field("Item Unit of Measure"; Rec."Item Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Unit of Measure field.', Comment = 'ESP="Unidad de medida producto"';
                }
            }
        }
    }
}
