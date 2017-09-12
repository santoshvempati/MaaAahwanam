﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MaaAahwanam.Models;
using MaaAahwanam.Repository.db;

namespace MaaAahwanam.Service
{
    public class VenorVenueSignUpService
    {
        VendorVenueSignUpRepository vendorVenueSignUpRepository = new VendorVenueSignUpRepository();
        VendorVenueRepository vendorVenueRepository = new VendorVenueRepository();
        VendorCateringRepository vendorCateringRepository = new VendorCateringRepository();
        string updateddate = DateTime.UtcNow.ToShortDateString();
        public UserLogin AddUserLogin(UserLogin userLogin)
        {
            userLogin.UserType = "Vendor";
            userLogin.UpdatedBy = 2;
            userLogin.Status = "InActive";
            userLogin.RegDate = Convert.ToDateTime(updateddate);
            userLogin.UpdatedDate = Convert.ToDateTime(updateddate);
            return vendorVenueSignUpRepository.AddUserLogin(userLogin);
        }

        public UserLogin GetUserLogin(UserLogin userLogin)
        {
            return vendorVenueSignUpRepository.GetUserLogin(userLogin);
        }

        public Vendormaster AddvendorMaster(Vendormaster vendormaster)
        {
            vendormaster.Status = "InActive";
            vendormaster.UpdatedDate = Convert.ToDateTime(updateddate);
            //vendormaster.ServicType = "Venue";
            return vendorVenueSignUpRepository.AddVendormaster(vendormaster);
        }

        public UserDetail AddUserDetail(UserDetail userDetail, Vendormaster vendormaster)
        {
            userDetail.FirstName = vendormaster.ContactPerson;
            userDetail.UserPhone = vendormaster.ContactNumber;
            userDetail.Url = vendormaster.Url;
            userDetail.Address = vendormaster.Address;
            userDetail.City = vendormaster.City;
            userDetail.State = vendormaster.State;
            userDetail.ZipCode = vendormaster.ZipCode;
            userDetail.Status = "InActive";
            userDetail.UpdatedBy = 2;
            userDetail.UpdatedDate = Convert.ToDateTime(updateddate);
            userDetail.AlternativeEmailID = vendormaster.EmailId;
            userDetail.Landmark = vendormaster.Landmark;
            return vendorVenueSignUpRepository.AddUserDetail(userDetail);
        }

        //Venue Area

        public VendorVenue AddVendorVenue(VendorVenue VendorVenue)
        {
            return vendorVenueSignUpRepository.AddVendorVenue(VendorVenue);
        }

        public VendorVenue UpdateVenue(VendorVenue vendorVenue, Vendormaster vendorMaster, long masterid, long vid)
        {
            vendorVenue.Status = "InActive";
            vendorVenue.UpdatedDate = Convert.ToDateTime(updateddate);
            vendorMaster.Status = "InActive";
            vendorMaster.UpdatedDate = Convert.ToDateTime(updateddate);
            //vendorMaster.ServicType = "Venue";
            vendorVenue = vendorVenueRepository.UpdateVenue(vendorVenue, masterid, vid);
            return vendorVenue;
        }

        public VendorVenue GetVendorVenue(long id)
        {
            return vendorVenueSignUpRepository.GetVendorVenue(id);
        }

        //Catering Area

        public VendorsCatering AddVendorCatering(VendorsCatering vendorsCatering)
        {
            return vendorVenueSignUpRepository.AddVendorCatering(vendorsCatering);
        }

        public VendorsCatering UpdateCatering(VendorsCatering vendorsCatering, Vendormaster vendorMaster, long masterid, long vid)
        {
            vendorsCatering.Status = "InActive";
            vendorsCatering.UpdatedDate = Convert.ToDateTime(updateddate);
            vendorMaster.Status = "InActive";
            vendorMaster.UpdatedDate = Convert.ToDateTime(updateddate);
            //vendorMaster.ServicType = "Venue";
            vendorsCatering = vendorCateringRepository.UpdatesCatering(vendorsCatering, masterid, vid);
            return vendorsCatering;
        }

        public VendorsCatering GetVendorCatering(long id)
        {
            return vendorVenueSignUpRepository.GetVendorCatering(id);
        }
    }
}
