//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Air.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Departure_schedule
    {
        public int id_dep { get; set; }
        public string plane { get; set; }
        public System.DateTime departure_date { get; set; }
        public System.TimeSpan departure_time { get; set; }
        public string place_of_departure { get; set; }
        public string place_of_arrival { get; set; }
        public string route { get; set; }
        public decimal ticket_price { get; set; }
        public int id_ti { get; set; }
        public int id_air { get; set; }
    
        public virtual aircraft aircraft { get; set; }
        public virtual Ticket_sales Ticket_sales { get; set; }
    }
}
