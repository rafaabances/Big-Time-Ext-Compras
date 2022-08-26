enum 50150 "DEL Type Need/Event"
{
    Extensible = true;
    Caption = 'Type Need/Event', comment = 'ESP="Tipo Necesidad/Evento"';

    value(0; Product)
    {
        Caption = 'Producto';
    }
    value(1; Service)
    {
        Caption = 'Servicio';
    }
    value(2; "Reservation Equipment")
    {
        Caption = 'Reserva Equipo';
    }

    value(3; "Purchase Equipment")
    {
        Caption = 'Compra Equipo';
    }
    value(4; "Rent")
    {
        Caption = 'Alquiler';
    }
    value(5; "Insurance")
    {
        Caption = 'Seguro';
    }
}
