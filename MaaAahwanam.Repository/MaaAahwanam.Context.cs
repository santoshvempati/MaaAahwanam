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
    
    
        public virtual ObjectResult<AllVendorList_Result> AllVendorList(string servicType)
        {
            var servicTypeParameter = servicType != null ?
                new ObjectParameter("ServicType", servicType) :
                new ObjectParameter("ServicType", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<AllVendorList_Result>("AllVendorList", servicTypeParameter);
        }
    
        public virtual ObjectResult<GetCartItems_Result> GetCartItems(Nullable<int> vID)
        {
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetCartItems_Result>("GetCartItems", vIDParameter);
        }
    
        public virtual ObjectResult<GetProducts_Result> GetProducts(string nType, Nullable<int> vID)
        {
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetProducts_Result>("GetProducts", nTypeParameter, vIDParameter);
        }
    
        public virtual ObjectResult<GetProductsInfo_Result> GetProductsInfo(Nullable<int> vid, string nType)
        {
            var vidParameter = vid.HasValue ?
                new ObjectParameter("vid", vid) :
                new ObjectParameter("vid", typeof(int));
    
            var nTypeParameter = nType != null ?
                new ObjectParameter("nType", nType) :
                new ObjectParameter("nType", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetProductsInfo_Result>("GetProductsInfo", vidParameter, nTypeParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Orders_OrderDetails_Result> MaaAahwanam_Orders_OrderDetails(Nullable<long> orderNo)
        {
            var orderNoParameter = orderNo.HasValue ?
                new ObjectParameter("OrderNo", orderNo) :
                new ObjectParameter("OrderNo", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Orders_OrderDetails_Result>("MaaAahwanam_Orders_OrderDetails", orderNoParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_AllRegisteredUsersDetails_Result> MaaAahwanam_Others_AllRegisteredUsersDetails()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_AllRegisteredUsersDetails_Result>("MaaAahwanam_Others_AllRegisteredUsersDetails");
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_Comments_Result> MaaAahwanam_Others_Comments(Nullable<long> commentId)
        {
            var commentIdParameter = commentId.HasValue ?
                new ObjectParameter("CommentId", commentId) :
                new ObjectParameter("CommentId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_Comments_Result>("MaaAahwanam_Others_Comments", commentIdParameter);
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
    
        public virtual ObjectResult<MaaAahwanam_Others_TestimonialDetail_Result> MaaAahwanam_Others_TestimonialDetail(Nullable<long> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_TestimonialDetail_Result>("MaaAahwanam_Others_TestimonialDetail", idParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_Testimonials_Result> MaaAahwanam_Others_Testimonials()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_Testimonials_Result>("MaaAahwanam_Others_Testimonials");
        }
    
        public virtual ObjectResult<MaaAahwanam_Others_Tickets_Result> MaaAahwanam_Others_Tickets(Nullable<long> ticketId)
        {
            var ticketIdParameter = ticketId.HasValue ?
                new ObjectParameter("TicketId", ticketId) :
                new ObjectParameter("TicketId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Others_Tickets_Result>("MaaAahwanam_Others_Tickets", ticketIdParameter);
        }
    
        public virtual ObjectResult<MaaAahwanam_Services_Bidding_Result> MaaAahwanam_Services_Bidding(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MaaAahwanam_Services_Bidding_Result>("MaaAahwanam_Services_Bidding", requestIdParameter);
        }
    
        public virtual ObjectResult<orderconfirmation_Result> orderconfirmation()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<orderconfirmation_Result>("orderconfirmation");
        }
    
        public virtual ObjectResult<sp_AllOrders_Result> sp_AllOrders()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_AllOrders_Result>("sp_AllOrders");
        }
    
        public virtual ObjectResult<SP_GetTestimonials_Result> SP_GetTestimonials()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_GetTestimonials_Result>("SP_GetTestimonials");
        }
    
        public virtual ObjectResult<SP_vendordatesbooked_Result> SP_vendordatesbooked(Nullable<int> vID)
        {
            var vIDParameter = vID.HasValue ?
                new ObjectParameter("VID", vID) :
                new ObjectParameter("VID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_vendordatesbooked_Result>("SP_vendordatesbooked", vIDParameter);
        }
    
        public virtual ObjectResult<sp_LeastBidRecord_Result> sp_LeastBidRecord(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_LeastBidRecord_Result>("sp_LeastBidRecord", requestIdParameter);
        }
    
        public virtual ObjectResult<sp_OrderDetails_Result> sp_OrderDetails(Nullable<long> orderNo)
        {
            var orderNoParameter = orderNo.HasValue ?
                new ObjectParameter("OrderNo", orderNo) :
                new ObjectParameter("OrderNo", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_OrderDetails_Result>("sp_OrderDetails", orderNoParameter);
        }
    
        public virtual ObjectResult<sp_ServiceComments_Result> sp_ServiceComments(Nullable<long> serviceId)
        {
            var serviceIdParameter = serviceId.HasValue ?
                new ObjectParameter("ServiceId", serviceId) :
                new ObjectParameter("ServiceId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_ServiceComments_Result>("sp_ServiceComments", serviceIdParameter);
        }
    
        public virtual ObjectResult<sp_Servicedetails_Result> sp_Servicedetails(Nullable<long> requestId)
        {
            var requestIdParameter = requestId.HasValue ?
                new ObjectParameter("RequestId", requestId) :
                new ObjectParameter("RequestId", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Servicedetails_Result>("sp_Servicedetails", requestIdParameter);
        }
    }
}
