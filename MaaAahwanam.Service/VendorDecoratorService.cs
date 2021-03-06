﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MaaAahwanam.Repository.db;
using MaaAahwanam.Models;
using MaaAahwanam.Utility;

namespace MaaAahwanam.Service
{
    public class VendorDecoratorService
    {
        RandomPassword randomPassword = new RandomPassword();
        UserLoginRepository userLoginRepository = new UserLoginRepository();
        VendormasterRepository vendorMasterRepository = new VendormasterRepository();
        VendorsDecoratorRepository vendorsDecoratorRepository = new VendorsDecoratorRepository();
        UserDetailsRepository userDetailsRepository = new UserDetailsRepository();
        UserLogin userLogin = new UserLogin();
        UserDetail userDetail = new UserDetail();
        public VendorsDecorator AddDecorator(VendorsDecorator vendorsdecorator,Vendormaster vendorMaster)
        {
            string updateddate = DateTime.UtcNow.ToShortDateString();
            vendorMaster.ServicType = "Decorators";
            vendorMaster.Status = "Active";
            vendorMaster.UpdatedDate =  Convert.ToDateTime(updateddate);
            vendorsdecorator.Status = "Active";
            vendorsdecorator.UpdatedDate = Convert.ToDateTime(updateddate);
            vendorMaster = vendorMasterRepository.AddVendorMaster(vendorMaster);
            vendorsdecorator.VendorMasterId = vendorMaster.Id;
            vendorsdecorator = vendorsDecoratorRepository.AddDecorator(vendorsdecorator);
            userLogin.UserName = vendorMaster.EmailId;
            userLogin.Password = randomPassword.GenerateString();
            userLogin.UserType = "Vendor";
            userLogin.UpdatedBy = 2;
            userLogin.RegDate = Convert.ToDateTime(updateddate);
            userLogin.UpdatedDate = Convert.ToDateTime(updateddate);
            userLogin.Status = "Active";
            userLogin = userLoginRepository.AddVendorUserLogin(userLogin);
            userDetail.UserLoginId = userLogin.UserLoginId;
            userDetail.FirstName = vendorMaster.BusinessName;
            userDetail.UserPhone = vendorMaster.ContactNumber;
            userDetail.Url = vendorMaster.Url;
            userDetail.Address = vendorMaster.Address;
            userDetail.City = vendorMaster.City;
            userDetail.State = vendorMaster.State;
            userDetail.ZipCode = vendorMaster.ZipCode;
            userDetail.Status = "Active";
            userDetail.UpdatedBy = ValidUserUtility.ValidUser();
            userDetail.UpdatedDate = Convert.ToDateTime(updateddate);
            userDetail.AlternativeEmailID = vendorMaster.EmailId;
            userDetail.Landmark = vendorMaster.Landmark;
            userDetail = userDetailsRepository.AddUserDetails(userDetail);
            if (vendorMaster.Id != 0 && vendorsdecorator.Id != 0 && userLogin.UserLoginId != 0 && userDetail.UserDetailId != 0)
            {
                return vendorsdecorator;
            }
            else
            {
                vendorsdecorator.Id = 0;
                return vendorsdecorator;
            }
        }

        public VendorsDecorator GetVendorDecorator(long id,long vid)
        {
            return vendorsDecoratorRepository.GetVendorDecorator(id,vid);
        }

        public VendorsDecorator UpdateDecorator(VendorsDecorator vendorsDecorator, Vendormaster vendorMaster, long masterid,long vid)
        {
            string updateddate = DateTime.UtcNow.ToShortDateString();
            vendorsDecorator.Status = "Active";
            vendorsDecorator.UpdatedDate = Convert.ToDateTime(updateddate);
            vendorMaster.Status = "Active";
            vendorMaster.UpdatedDate = Convert.ToDateTime(updateddate);
            vendorMaster.ServicType = "Decorators";
            vendorMaster = vendorMasterRepository.UpdateVendorMaster(vendorMaster, masterid);
            vendorsDecorator = vendorsDecoratorRepository.UpdateDecorator(vendorsDecorator, masterid,vid);
            return vendorsDecorator;
        }

        public VendorsDecorator AddNewDecorator(VendorsDecorator vendorsDecorator, Vendormaster vendorMaster)
        {
            string updateddate = DateTime.UtcNow.ToShortDateString();
            vendorsDecorator.Status = "Active";
            vendorsDecorator.UpdatedDate = Convert.ToDateTime(updateddate);
            vendorsDecorator.VendorMasterId = vendorMaster.Id;
            vendorsDecorator = vendorsDecoratorRepository.AddDecorator(vendorsDecorator);
            return vendorsDecorator;
        }
    }
}
