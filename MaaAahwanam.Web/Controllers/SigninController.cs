﻿using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MaaAahwanam.Models;
using MaaAahwanam.Utility;
using System.Configuration;
using System.Web.Security;
using Newtonsoft.Json.Linq;
using MaaAahwanam.Service;
using MaaAahwanam.Web.Custom;
using Newtonsoft.Json;

namespace MaaAahwanam.Web.Controllers
{
    public class SigninController : Controller
    {
        
        public ActionResult Index()
        {
            //if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            //{                
            //    return RedirectToAction("Index", "DashBoard");
            //}
            //else
            //{
            //    TempData["Alert"] = TempData["AlertContent"];
            //    return View();
            //}
            //string VID = Request.QueryString["VID"];
            //string subvid = Request.QueryString["subvid"];
            //ViewBag.ReturnUrl = ReturnUrl;
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Index(string command, [Bind(Prefix = "Item1")] UserLogin userLogin, [Bind(Prefix = "Item2")] UserDetail userDetail,string ReturnUrl)
        {
            if (command == "Register")
            {
                UserLoginDetailsService userLoginDetailsService = new UserLoginDetailsService();
                userLogin.UserType = "User";
                var response = userLoginDetailsService.AddUserDetails(userLogin, userDetail);
                if (response == "sucess")
                {
                    return Content("<script language='javascript' type='text/javascript'>alert('Registered Successfully');location.href='" + @Url.Action("Index", "Signin") + "'</script>");
                }
                else
                {
                    return Content("<script language='javascript' type='text/javascript'>alert('Registration Failed');location.href='" + @Url.Action("Index", "Signin") + "'</script>");
                }
            }
            if (command == "AuthenticationUser")
            {
                UserLoginDetailsService userLoginDetailsService = new UserLoginDetailsService();
                userLogin.UserType = "User";
                var userResponse = userLoginDetailsService.AuthenticateUser(userLogin);
                if (userResponse.UserLoginId != 0)
                {
                    userResponse.UserType = "User";
                    string userData = JsonConvert.SerializeObject(userResponse);
                    ValidUserUtility.SetAuthCookie(userData, userResponse.UserLoginId.ToString());
                    //string ReturnTo1 = Request.QueryString["ReturnUrl"];
                    //string ReturnTo2 = Request.Params.Get("ReturnUrl");
                    //string url = Request.UrlReferrer.ToString();
                    //string url2 = Request.RawUrl;
                    //string url3 = Request.UrlReferrer.PathAndQuery;
                    //string url4 = Request.UrlReferrer.Query.TrimEnd();


                    string ReturnTo = ReturnUrl;
                    
                    if (ReturnTo == null)
                    {
                        Response.Redirect("Index");
                    }
                    else
                    {
                        string particularurl;
                        int vid = Convert.ToInt32(Request.QueryString["VID"]);
                        int Svid = Convert.ToInt32(Request.QueryString["subvid"]);
                        int did = Convert.ToInt32(Request.QueryString["did"]);
                        
                        if (vid != 0 && Svid != 0 )
                        {
                            if (did != 0)
                                particularurl = ReturnTo + "&VID=" + vid + "&subvid=" + Svid + "&did=" + did;
                            else
                                particularurl = ReturnTo + "&VID=" + vid + "&subvid=" + Svid;
                            Response.Redirect(particularurl);
                        }
                        else
                        {
                            Response.Redirect(ReturnTo);
                        }
                        
                    }

                }
                else
                {
                    return Content("<script language='javascript' type='text/javascript'>alert('Wrong Credentials,Check Username and password');location.href='" + @Url.Action("Index", "Signin") + "'</script>");
                    //TempData["Alert"] = "<script language='javascript' type='text/javascript'>alert('Wrong Credentials,Check Username and password')</script>";
                }
            }
            if (command == "AuthenticationVendor")
            {
                UserLoginDetailsService userLoginDetailsService = new UserLoginDetailsService();
                userLogin.UserType = "Vendor";
                var userResponse = userLoginDetailsService.AuthenticateUser(userLogin);
                if (userResponse.UserLoginId != 0)
                {
                    userResponse.UserType = "Vendor";
                    string userData = JsonConvert.SerializeObject(userResponse);
                    ValidUserUtility.SetAuthCookie(userData, userResponse.UserLoginId.ToString());
                    Response.Redirect("VendorDashBoard/Index");
                }
                else
                {
                    return Content("<script language='javascript' type='text/javascript'>alert('Wrong Credentials,Check Username and password');location.href='" + @Url.Action("Index", "Signin") + "'</script>");
                }
            }
            return View();
        }

        public ActionResult SignOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Signin");
        }


        [ChildActionOnly]
        public PartialViewResult SigninPartial()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var user = (CustomPrincipal)System.Web.HttpContext.Current.User;
                UserLoginDetailsService userLoginDetailsService = new UserLoginDetailsService();
                var response = userLoginDetailsService.GetUser((int)user.UserId);
                if (user.UserType == "Admin")
                {
                    UserDetail userDetail = new UserDetail();
                    return PartialView("SigninPartial", userDetail);
                }
                return PartialView("SigninPartial", response);
            }
            else
            {
                UserDetail userDetail = new UserDetail();
                return PartialView("SigninPartial", userDetail);
            }
        }
        public JsonResult RegularExpressionPattern_Password()
        {
            return Json(ValidationsUtility.PatternforPassword(), JsonRequestBehavior.AllowGet);
        }
        public ActionResult ResetPassword()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ResetPassword(string sample)
        {
            return View();
        }
    }
}