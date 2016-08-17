﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MaaAahwanam.Models
{
    public class Payment_Orders
    {
        [Key]
        public long PaymentID { get; set; }
        public long OrderID { get; set; }
        public decimal paidamount { get; set; }
        public string cardnumber { get; set; }
        public string CVV { get; set; }
        public DateTime Paiddate { get; set; }
    }
}