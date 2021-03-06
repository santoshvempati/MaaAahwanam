using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MaaAahwanam.Models
{
    
    public class VendorsCatering
    {
        [Key]
        public long Id { get; set; }
        public long VendorMasterId { get; set; }
        public string CuisineType { get; set; }
        public decimal Veg { get; set; }
        public decimal NonVeg { get; set; }
        public string MinOrder { get; set; }
        public string MaxOrder { get; set; }
        public string MineralWaterIncluded { get; set; }
        public string TransportIncluded { get; set; }
        public string Menuitems { get; set; }
        public string LiveCookingStation { get; set; }
        public string Status { get; set; }
        public long UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
    }
}
