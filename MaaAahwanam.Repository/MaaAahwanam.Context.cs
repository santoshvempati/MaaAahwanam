﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MaaAahwanam.Repository
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class MaaAahwanamEntities : DbContext
    {
        public MaaAahwanamEntities()
            : base("name=MaaAahwanamEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
    
        public virtual ObjectResult<MaaAahwanam_Others_AllRegisteredUsersDetails_Result> MaaAahwanam_Others_AllRegisteredUsersDetails()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_AllRegisteredUsersDetails_Result>("MaaAahwanam_Others_AllRegisteredUsersDetails");
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_RegisteredUsers_Result> MaaAahwanam_Others_RegisteredUsers()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_RegisteredUsers_Result>("MaaAahwanam_Others_RegisteredUsers");
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_RegisteredUsersDetails_Result> MaaAahwanam_Others_RegisteredUsersDetails(Nullable<long> userLoginId)
        {
            var userLoginIdParameter = userLoginId.HasValue ?
                new ObjectParameter("UserLoginId", userLoginId) :
                new ObjectParameter("UserLoginId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_RegisteredUsersDetails_Result>("MaaAahwanam_Others_RegisteredUsersDetails", userLoginIdParameter);
        }
    
        public virtual ObjectResult<SP_GetTestimonials_Result> SP_GetTestimonials()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_GetTestimonials_Result>("SP_GetTestimonials");
        }
    
        public virtual ObjectResult<sp_LeastBidRecord_Result> sp_LeastBidRecord(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_LeastBidRecord_Result>("sp_LeastBidRecord", requestIdParameter);
        }
    
        public virtual ObjectResult<SP_vendordatesbooked_Result> SP_vendordatesbooked(Nullable<int> vID)
        {
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_vendordatesbooked_Result>("SP_vendordatesbooked", vIDParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Services_Bidding_Result> MaaAahwanam_Services_Bidding(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Services_Bidding_Result>("MaaAahwanam_Services_Bidding", requestIdParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_Comments_Result> MaaAahwanam_Others_Comments(Nullable<long> commentId)
        {
            var commentIdParameter = commentId.HasValue ?
                new ObjectParameter("CommentId", commentId) :
                new ObjectParameter("CommentId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_Comments_Result>("MaaAahwanam_Others_Comments", commentIdParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_Tickets_Result> MaaAahwanam_Others_Tickets(Nullable<long> ticketId)
        {
            var ticketIdParameter = ticketId.HasValue ?
                new ObjectParameter("TicketId", ticketId) :
                new ObjectParameter("TicketId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_Tickets_Result>("MaaAahwanam_Others_Tickets", ticketIdParameter);
        }
    
        public virtual ObjectResult<sp_Servicedetails_Result> sp_Servicedetails(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Servicedetails_Result>("sp_Servicedetails", requestIdParameter);
        }
    
        public virtual ObjectResult<allnotifications_Result> allnotifications()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<allnotifications_Result>("allnotifications");
        }
    
        public virtual ObjectResult<sp_QuotationComments_Result> sp_QuotationComments(Nullable<long> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_QuotationComments_Result>("sp_QuotationComments", idParameter);
        }
    
        public virtual ObjectResult<sp_ServiceComments_Result> sp_ServiceComments(Nullable<long> serviceId)
        {
            var serviceIdParameter = serviceId.HasValue ?
                new ObjectParameter("ServiceId", serviceId) :
                new ObjectParameter("ServiceId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_ServiceComments_Result>("sp_ServiceComments", serviceIdParameter);
        }
    
        public virtual ObjectResult<serviceconfirmation_Result> serviceconfirmation(Nullable<int> requestID)
        {
            var requestIDParameter = requestID.HasValue ?
                new ObjectParameter("RequestID", requestID) :
                new ObjectParameter("RequestID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<serviceconfirmation_Result>("serviceconfirmation", requestIDParameter);
        }
    
        public virtual ObjectResult<sp_Tickets_Result> sp_Tickets(Nullable<long> ticketId)
        {
            var ticketIdParameter = ticketId.HasValue ?
                new ObjectParameter("TicketId", ticketId) :
                new ObjectParameter("TicketId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Tickets_Result>("sp_Tickets", ticketIdParameter);
        }
    
        public virtual ObjectResult<GetDealServiceType_Result> GetDealServiceType(string ntype)
        {
            var ntypeParameter = ntype != null ?
                new ObjectParameter("ntype", ntype) :
                new ObjectParameter("ntype", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetDealServiceType_Result>("GetDealServiceType", ntypeParameter);
        }
    
        public virtual ObjectResult<getservicetype_Result> getservicetype(string ntype)
        {
            var ntypeParameter = ntype != null ?
                new ObjectParameter("ntype", ntype) :
                new ObjectParameter("ntype", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getservicetype_Result>("getservicetype", ntypeParameter);
        }
    
        public virtual ObjectResult<orderconfirmation_Result> orderconfirmation(Nullable<int> oID)
        {
            var oIDParameter = oID.HasValue ?
                new ObjectParameter("OID", oID) :
                new ObjectParameter("OID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<orderconfirmation_Result>("orderconfirmation", oIDParameter);
        }
    
        public virtual ObjectResult<GetProducts_Result> GetProducts(string nType, Nullable<int> vID, string stype, string landmark, string order)
        {
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            var stypeParameter = stype != null ?
                new ObjectParameter("stype", stype) :
                new ObjectParameter("stype", typeof(string));
    
            var landmarkParameter = landmark != null ?
                new ObjectParameter("Landmark", landmark) :
                new ObjectParameter("Landmark", typeof(string));
    
            var orderParameter = order != null ?
                new ObjectParameter("order", order) :
                new ObjectParameter("order", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetProducts_Result>("GetProducts", nTypeParameter, vIDParameter, stypeParameter, landmarkParameter, orderParameter);
        }
    
        public virtual ObjectResult<sp_indexdeals_Result> sp_indexdeals(string nType)
        {
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_indexdeals_Result>("sp_indexdeals", nTypeParameter);
        }
    
        public virtual ObjectResult<SP_Deals_Result> SP_Deals(string nType, Nullable<int> vID, string stype, string city, string order)
        {
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            var stypeParameter = stype != null ?
                new ObjectParameter("stype", stype) :
                new ObjectParameter("stype", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var orderParameter = order != null ?
                new ObjectParameter("order", order) :
                new ObjectParameter("order", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Deals_Result>("SP_Deals", nTypeParameter, vIDParameter, stypeParameter, cityParameter, orderParameter);
        }
    
        public virtual ObjectResult<ProductsDisplay_Result> ProductsDisplay(string nType, Nullable<int> vID, string stype, string landmark, string order)
        {
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            var stypeParameter = stype != null ?
                new ObjectParameter("stype", stype) :
                new ObjectParameter("stype", typeof(string));
    
            var landmarkParameter = landmark != null ?
                new ObjectParameter("Landmark", landmark) :
                new ObjectParameter("Landmark", typeof(string));
    
            var orderParameter = order != null ?
                new ObjectParameter("order", order) :
                new ObjectParameter("order", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ProductsDisplay_Result>("ProductsDisplay", nTypeParameter, vIDParameter, stypeParameter, landmarkParameter, orderParameter);
        }
    
        public virtual ObjectResult<cartcount_Result> cartcount(Nullable<long> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<cartcount_Result>("cartcount", idParameter);
        }
    
        public virtual ObjectResult<sp_AllOrders_Result> sp_AllOrders(Nullable<long> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_AllOrders_Result>("sp_AllOrders", idParameter);
        }
    
        public virtual ObjectResult<sp_ordersdisplay_Result> sp_ordersdisplay()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_ordersdisplay_Result>("sp_ordersdisplay");
        }
    
        public virtual ObjectResult<MaaAahwanam_Orders_OrderDetails_Result> MaaAahwanam_Orders_OrderDetails(Nullable<long> orderNo)
        {
            var orderNoParameter = orderNo.HasValue ?
                new ObjectParameter("OrderNo", orderNo) :
                new ObjectParameter("OrderNo", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Orders_OrderDetails_Result>("MaaAahwanam_Orders_OrderDetails", orderNoParameter);
        }
    
        public virtual ObjectResult<Nullable<long>> ratingscount(Nullable<long> vid, Nullable<long> subid, string type)
        {
            var vidParameter = vid.HasValue ?
                new ObjectParameter("vid", vid) :
                new ObjectParameter("vid", typeof(long));
    
            var subidParameter = subid.HasValue ?
                new ObjectParameter("subid", subid) :
                new ObjectParameter("subid", typeof(long));
    
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<long>>("ratingscount", vidParameter, subidParameter, typeParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_Testimonials_Result> MaaAahwanam_Others_Testimonials()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_Testimonials_Result>("MaaAahwanam_Others_Testimonials");
        }
    
        public virtual ObjectResult<ServicesRecordView_Result> ServicesRecordView(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ServicesRecordView_Result>("ServicesRecordView", requestIdParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_TestimonialDetail_Result> MaaAahwanam_Others_TestimonialDetail(Nullable<long> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_TestimonialDetail_Result>("MaaAahwanam_Others_TestimonialDetail", idParameter);
        }
    
        public virtual ObjectResult<AllVendorList_Result> AllVendorList(string servicType)
        {
            var servicTypeParameter = servicType != null ?
                new ObjectParameter("ServicType", servicType) :
                new ObjectParameter("ServicType", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<AllVendorList_Result>("AllVendorList", servicTypeParameter);
        }
    
        public virtual ObjectResult<VendorsDatesbooked_Result> VendorsDatesbooked(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<VendorsDatesbooked_Result>("VendorsDatesbooked", idParameter);
        }
    
        public virtual ObjectResult<sp_OrderDetails_Result> sp_OrderDetails(Nullable<long> orderBy)
        {
            var orderByParameter = orderBy.HasValue ?
                new ObjectParameter("OrderBy", orderBy) :
                new ObjectParameter("OrderBy", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_OrderDetails_Result>("sp_OrderDetails", orderByParameter);
        }
    
        public virtual ObjectResult<GetCartItems_Result> GetCartItems(Nullable<int> vID)
        {
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetCartItems_Result>("GetCartItems", vIDParameter);
        }
    
        public virtual ObjectResult<SP_Amenities_Result> SP_Amenities(Nullable<long> vendorid, string ntype)
        {
            var vendoridParameter = vendorid.HasValue ?
                new ObjectParameter("vendorid", vendorid) :
                new ObjectParameter("vendorid", typeof(long));
    
            var ntypeParameter = ntype != null ?
                new ObjectParameter("ntype", ntype) :
                new ObjectParameter("ntype", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Amenities_Result>("SP_Amenities", vendoridParameter, ntypeParameter);
        }
    
        public virtual ObjectResult<GetProductsInfo_Result> GetProductsInfo(Nullable<int> vid, string nType, Nullable<int> vid2)
        {
            var vidParameter = vid.HasValue ?
                new ObjectParameter("vid", vid) :
                new ObjectParameter("vid", typeof(int));
    
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            var vid2Parameter = vid2.HasValue ?
                new ObjectParameter("Vid2", vid2) :
                new ObjectParameter("Vid2", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetProductsInfo_Result>("GetProductsInfo", vidParameter, nTypeParameter, vid2Parameter);
        }
    
        public virtual ObjectResult<SP_dealsinfo_Result> SP_dealsinfo(Nullable<int> vid, string nType, Nullable<int> vid2, Nullable<int> did)
        {
            var vidParameter = vid.HasValue ?
                new ObjectParameter("vid", vid) :
                new ObjectParameter("vid", typeof(int));
    
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            var vid2Parameter = vid2.HasValue ?
                new ObjectParameter("Vid2", vid2) :
                new ObjectParameter("Vid2", typeof(int));
    
            var didParameter = did.HasValue ?
                new ObjectParameter("did", did) :
                new ObjectParameter("did", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_dealsinfo_Result>("SP_dealsinfo", vidParameter, nTypeParameter, vid2Parameter, didParameter);
        }
    
        public virtual ObjectResult<geteventsandtipsimages_Result> geteventsandtipsimages(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<geteventsandtipsimages_Result>("geteventsandtipsimages", idParameter);
        }
    
        public virtual ObjectResult<Deal_Result> Deal(string type)
        {
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Deal_Result>("Deal", typeParameter);
        }
    
        public virtual ObjectResult<vendorallservices_Result> vendorallservices(string type, Nullable<long> id)
        {
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<vendorallservices_Result>("vendorallservices", typeParameter, idParameter);
        }
    
        public virtual ObjectResult<vendorproducts_Result> vendorproducts(string type)
        {
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<vendorproducts_Result>("vendorproducts", typeParameter);
        }
    }
}
