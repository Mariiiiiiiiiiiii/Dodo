//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DodoPizza.AppServises
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pizza
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Pizza()
        {
            this.Order = new HashSet<Order>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public int Sum { get; set; }
        public int Id_Dough { get; set; }
        public int Id_Size { get; set; }
    
        public virtual Dough Dough { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
        public virtual Size Size { get; set; }
    }
}
