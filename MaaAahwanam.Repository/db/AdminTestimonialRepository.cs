﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MaaAahwanam.Models;

namespace MaaAahwanam.Repository.db
{
    public class AdminTestimonialRepository
    {
        readonly ApiContext _dbContext = new ApiContext();
        public List<dynamic> AdminTestimonialList()
        {
            return _dbContext.AdminTesimonial.Join(_dbContext.Vendormaster, i => i.Id, p => p.Id, (i, p) => new { p = p, i = i }).ToList<dynamic>();
        }
    }
}
