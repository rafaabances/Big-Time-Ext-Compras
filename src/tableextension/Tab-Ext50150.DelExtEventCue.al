tableextension 50150 "Del Ext Event Cue" extends "Del Event Cue"
{
    fields
    {
        field(6; "Number In preparation Events"; Integer)
        {
            CalcFormula = Count("Del Events" WHERE(Status = const("In preparation")));
            Caption = 'Nº de Eventos en Preparación';
            Editable = false;
            FieldClass = FlowField;
        }
    }

}