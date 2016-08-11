﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MaaAahwanam.Service;

namespace MaaAahwanam.Web.Controllers
{
    public class QuatationViewCartDueController : Controller
    {
        DashBoardService dashBoardService = new DashBoardService();
        public ActionResult Index(string id)
        {
            if (id!=null)
            {
                ViewBag.OrderDetail = dashBoardService.GetParticularService(long.Parse(id));
            }
            return View();
        }
	}
}