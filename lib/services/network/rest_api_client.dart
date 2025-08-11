import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api_client.g.dart';

@RestApi()
abstract class RestApiClient {
  factory RestApiClient(Dio dio, {String? baseUrl}) = _RestApiClient;

  // @POST(ApiConfig.signUp)
  // Future<SignUpResponse> signup(@Body() Map<String, dynamic> request);

  // @POST(ApiConfig.signIn)
  // Future<SignInResponsedata> signin(
  //   @Body() Map<String, dynamic> request,
  // );

  // @GET('${ApiConfig.userDetails}/{id}')
  // Future<UserDetailsResponse> getUserDetails(
  //   @Path('id') int id,
  // );

  // @GET('${ApiConfig.customerGetBranch}/{id}')
  // Future<UserDetailsResponse> getBranchUserDetails(
  //   @Path('id') int id,
  // );

  // @GET('${ApiConfig.deleteUser}/{id}')
  // Future<UserDetailsResponse> deleteUserDetails(
  //   @Path('id') int id,
  // );

  // @PUT(('${ApiConfig.updateUser}/{id}'))
  // Future<UserDetailsResponse> updateUserDetails(
  //   @Body() Map<String, dynamic> request,
  //   @Path('id') int id,
  // );

  // @POST(ApiConfig.uploadImage)
  // Future<UserDetailsResponse> uploadImage(
  //   @Query("userid") int userId,
  //   @Header("Origin") String origin,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Body() FormData file,
  // );

  // @POST(ApiConfig.productCommon)
  // Future<GetAllProductsResponse> getAllProducts(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.confirmUser)
  // Future<OtpResponse> confirmUser(@Body() Map<String, dynamic> request);

  // @POST(ApiConfig.verificationResent)
  // Future<ResentOtpResponse> verificationResent(
  //     @Body() Map<String, dynamic> request,
  //     @Header("Origin") String origin,
  //     @Header("verify") bool verify);

  // @POST(ApiConfig.forgetRequest)
  // Future<OtpResponse> forgetRequest(@Body() Map<String, dynamic> request,
  //     @Header("Origin") String origin, @Header("verify") bool verify);

  // @POST(ApiConfig.forgetPassConfirm)
  // Future<ResentOtpResponse> forgetPassConfirm(
  //     @Body() Map<String, dynamic> request,
  //     @Header("Origin") String origin,
  //     @Header("verify") bool verify);

  // @GET(ApiConfig.favoritesList)
  // Future<GetAllProductsResponse> getFavorites(
  //   @Query("page") int page,
  //   @Query("userId") int userId,
  // );

  // @GET(ApiConfig.superCoins)
  // Future<SuperCoinResponse> getSuperCoins(
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @GET(ApiConfig.saleCustomerBranch)
  // Future<CustomerBranch> getCustomerBranch(
  //   @Query("id") int id,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @POST(ApiConfig.cancelRequestApprove)
  // Future<CancelApproveRejectResponse> cancelApproveRejectRequest(
  //   @Body() Map<String, dynamic> request,
  // );

  // @GET(ApiConfig.salesCustomerOrder)
  // Future<SalesOrderDetailsResponse> orderDetails(
  //   @Query("orderId") int orderId,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @GET("${ApiConfig.cancelReturn}/{orderId}")
  // Future<CancelRequestResponse> cancelOrderDetails(
  //   @Path("orderId") int orderId,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @POST(ApiConfig.notification)
  // Future<NotificationModel> getNotification(
  //   @Body() Map<String, dynamic> request,
  // );

  // @PUT("${ApiConfig.markAllAsRead}/{id}")
  // Future<UpdateAddressData> markAllAsRead(
  //   @Path("id") int id,
  // );

  // @POST(ApiConfig.getNewProducts)
  // Future<GetNewArrivalsResponse> getNewArrivals(
  //   @Body() Map<String, dynamic> request,
  // );

  // @GET(ApiConfig.spAllCustomer)
  // Future<GetAllCustomerResponse> getAllCustomer(
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @GET(ApiConfig.salesMonthlyOverView)
  // Future<SalesMonthlyOverView> getMonthlyOverView(
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @POST(ApiConfig.collection)
  // Future<CollectionResponse> getCollections(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.confirmotpVerification)
  // Future<ForgetPassResponse> confirmotpVerification(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.getSpecificProductDetail)
  // Future<ProductViewResponse> getSpecificProductDetail(
  //   @Body() Map<String, dynamic> request,
  // );


  // @GET(ApiConfig.getAllCoupen)
  // Future<CouponResponse> getAllCoupon(
  //     @Query("page") int page,
  //     @Query("userId") int userId,
  //     );

  // @PUT("${ApiConfig.updateCoupon}/{userId}")
  // Future<CouponAppliedResponse> setCoupon(
  //     @Path("userId") int userId,
  //     @Body() Map<String, dynamic> request,

  //     );

  // @POST(ApiConfig.findImageById)
  // Future<ProductViewResponse> findImageById(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.getAttributName)
  // Future<ProductViewResponse> getAttributName(
  //     @Body() Map<String, dynamic> request,
  //     @Header("Origin") String origin,
  //     @Header("verify") bool verify,
  //     @Header("Authorization") String authorization,
  //     @Header("Type") String customer);

  // @POST(ApiConfig.getAttributValueById)
  // Future<ProductViewResponse> getAttributValueById(
  //     @Body() Map<String, dynamic> request,
  //     @Header("Origin") String origin,
  //     @Header("verify") bool verify,
  //     @Header("Authorization") String authorization,
  //     @Header("Type") String customer);

  // @POST(ApiConfig.addFavorite)
  // Future<AddFavoriteResponse> addFavorite(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @GET(ApiConfig.removeFavorite)
  // Future<AddFavoriteResponse> removeFavorite(
  //   @Query("userId") int userId,
  //   @Query("productId") int productId,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @POST(ApiConfig.getChildCategories)
  // Future<GetChildCategoriesResponse> getSubCategories(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @POST(ApiConfig.getBrands)
  // Future<BrandResponse> getBrands(
  //   @Body() Map<String, dynamic> request,
  // );

  // @GET(ApiConfig.getBranchBrands)
  // Future<BrandResponse> getBranchBrands(
  //   @Query("id") int id,
  //   @Query("page") int page,
  // );

  // @GET(ApiConfig.getAllAttribute)
  // Future<AllAttributesResponse> getAllAttribute(
  //     @Header("Origin") String origin,
  //     @Header("Verify") bool verify,
  //     @Header("Authorization") String authorization,
  //     @Query("page") int page,
  //     @Query("userId") int userId,
  //     @Query("type") String type);

  // @GET(ApiConfig.getAllFiles)
  // Future<AllfilesResponse> getAllFFiles(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("type") String type,
  //   @Query("userId") int userId,
  //   @Query("page") int page,
  // );

  // @POST(ApiConfig.getAddress)
  // Future<GetAddressResponseBody> getAddress(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.addAddress)
  // Future<AddAddressResponse> addAddress(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.deleteAddress)
  // Future<AddAddressResponse> deleteAddress(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @POST(ApiConfig.updateAddress)
  // Future<AddAddressResponse> updateAddress(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.addToCart)
  // Future<AddCartResponse> addToCart(
  //   @Body() List<AddCartRequest> request,
  // );

  // @POST(ApiConfig.saveDraft)
  // Future<AddCartResponse> saveDraft(
  //   @Body() List<AddCartRequest> request,
  // );

  // @POST(ApiConfig.purchaseOrderRequest)
  // Future<PurchaseOrderResponse> purchaseOrder(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.getCart)
  // Future<GetCartResponse> getCart(
  //   @Query("page") int page,
  //   @Query("userId") int userId,
  // );

  // @GET(ApiConfig.getCart)
  // Future<GetCartResponse> getCartDetails(
  //   @Query("page") int page,
  //   @Query("userId") int userId,
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.updateCart)
  // Future<UpdateCartResponse> updateCart(
  //   @Body() List<CartDto> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @GET(ApiConfig.deleteCart)
  // Future<AddCartResponse> deleteCart(
  //   @Query("id") int productId,
  // );

  // @GET(ApiConfig.deleteDraft)
  // Future<DraftProductDeleteResponse> deleteDraft(
  //   @Query("id") int productId,
  // );

  // @GET(ApiConfig.productsListByCategory)
  // Future<CategoryProductsResponse> getProductsByCategory(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("type") String type,
  //   @Query("page") int page,
  //   @Query("categoryId") int categoryId,
  // );

  // @POST(ApiConfig.getReturnProduct)
  // Future<ReturnProductsList> getReturnProducts(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Authorization") String authorization,
  //   @Header("Verify") bool verify,
  // );

  // @POST(ApiConfig.categoryGetAll)
  // Future<MainCategory> getCategory(
  //   @Body() Map<String, dynamic> request,
  // );

  // @GET(ApiConfig.getBranchCategory)
  // Future<MainCategory> getBranchCategory(
  //   @Query("id") int id,
  //   @Query("page") int page,
  // );

  // @GET(ApiConfig.getFlashDeals)
  // Future<FlashResponse> getFlashDeals(
  //   @Body() Map<String, dynamic> request,
  //     @Query("page") int page,
  // );

  // @POST(ApiConfig.filterSubCategories)
  // Future<FilterSubCategory> getFilterSubCategory(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.filteredProducts)
  // Future<ProductResponse> getFilteredProducts(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.filteredProducts)
  // Future<ProductResponse> getAllDraft(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.filterChildCategories)
  // Future<FilterChildCategory> getFilterChildCategory(
  //   @Body() Map<String, dynamic> request,
  // );


  // @GET(ApiConfig.getSubBrands)
  // Future<MainCategory> getSubBrands(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Query("id") int id,
  //   @Query("page") int page,
  // );

  // @GET(ApiConfig.categoryGetChild)
  // Future<SubCategory> getDashSubCategories(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Query("id") int id,
  //   @Query("page") int page,
  // );

  // @GET(ApiConfig.getAllDraft)
  // Future<DraftProductResponse> getAllDraftProducts(
  //   @Query("page") int page,
  //   @Query("userId") int id,
  // );

  // @GET(ApiConfig.categoryProduct)
  // Future<ProductResponse> getProduct(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   // @Header("Authorization") String authorization,
  //   @Query("id") int id,
  //   @Query("page") int page,
  // );


  // @GET("${ApiConfig.flashProduct}/{id}")
  // Future<FlashDealsProductResponse> getFlashProduct(
  //     @Path("id") int id,
  //     );

  // @GET("${ApiConfig.collectionProduct}/{id}")
  // Future<ProductResponse> getCollectionProduct(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Path("id") int id,
  // );

  // @POST(ApiConfig.getOrderDetails)
  // Future<MyOrdersResponse> getOrderDetails(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.duplicateOrder)
  // Future<DuplicateOrderResponse> getDuplicateOrder(
  //   @Body() Map<String, dynamic> request,
  // );

  // @GET(ApiConfig.orderViewDetails)
  // Future<OrderInfoResponse> orderViewDetails(
  //   @Query("orderId") int userId,
  // );

  // @GET(ApiConfig.refundOrder)
  // Future<RefundDataResponse> refundOrder(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  //   @Query("userId") int userId,
  // );

  // @GET("${ApiConfig.creditLimitRequest}/{userId}")
  // Future<CreditLimitResponse> creditLimit(
  //   @Path("userId") int userId,
  // );

  // @POST(ApiConfig.updateOrder)
  // Future<UpdateOrderResponse> updateOrder(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.applyCoupon)
  // Future<GetCartResponse> applyCoupon(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  //   @Query("id") int userId,
  //   @Query("couponCode") String code,
  // );

  // @POST(ApiConfig.saveOrder)
  // Future<SaveOrderResponse> saveOrder(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @POST(ApiConfig.razorpayPaymentStatus)
  // Future<CommonResponse> razorpayPaymentStatus(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // // @GET(ApiConfig.flashDeals)
  // // Future<FlashDealsResponse> getAllFlashDeals(
  // //   @Header("Origin") String origin,
  // //   @Header("Verify") bool verify,
  // //   @Header("Authorization") String authorization,
  // //   @Query("page") int page,
  // //   @Query("type") String type,
  // //   @Query("userId") String userId,
  // // );


  // @GET(ApiConfig.allProductCollection)
  // Future<AllCollectionResponse> getAllProductCollection(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("page") int page,
  //   @Query("userId") int userId,
  //   @Query("type") String type,
  // );

  // @GET(ApiConfig.productFind)
  // Future<FindCollectionResponse> findCollection(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("id") int id,
  // );

  // @GET(ApiConfig.getVisitCount)
  // Future<VisitCountResponse> getVisitCount(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("productId") int id,
  // );

  // @GET(ApiConfig.productOrderCount)
  // Future<VisitCountResponse> prductOrderCount(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("product") int productId,
  // );

  // @POST(ApiConfig.saveVisitList)
  // Future<VisitListResponse> saveVisitList(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @POST(ApiConfig.getRelatedProduct)
  // Future<RelatedProductResponse> getRelatedProduct(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  //   @Query("page") int page,
  //   @Query("productId") int id,
  // );

  // @GET(ApiConfig.searchProduct)
  // Future<SearchTextResponse> searchText(
  //   @Query("search") String searchText,
  //   @Query("branchId") int userId,
  //   @Query("page") int page,
  // );


  // @POST(ApiConfig.getReturnOrders)
  // Future<ReturnOrderResponse> getReturnOrders(
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.saveReview)
  // Future<UpdateReviewResponse> saveReview(
  //   @Body() Map<String, dynamic> request,
  // );

  // @POST(ApiConfig.updateReview)
  // Future<UpdateReviewResponse> updateReview(
  //   @Body() UpdateReviewRequest request,
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  // );

  // @GET(ApiConfig.productReview)
  // Future<ProductReviewResponse> getAllReview(
  //   @Header("Origin") String origin,
  //   @Header("Verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Query("page") int page,
  //   @Query("productId") int productId,
  //   @Query("type") String type,
  // );

  // @GET(ApiConfig.getHelpSupport)
  // Future<CreateTicketResponse> getHelpSupport(
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  //   @Header("type") String type,
  //   @Query("page") int page,
  // );

  // @POST(ApiConfig.createHelpSupport)
  // Future<TicketResponse> createTicket(
  //   @Body() Map<String, dynamic> request,
  //   @Header("Origin") String origin,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @PUT("cart-product/update-address/{id}")
  // Future<UpdateAddressData> updateAddressData(
  //   @Path("id") int id,
  //   @Query("addressId") int addressId,
  // );

  // @POST(ApiConfig.getAllEnums)
  // Future<EnumTypeResponse> getEnumType();

  // @GET(ApiConfig.enumType)
  // Future<EnumTypeResponse> enumByType(
  //   @Query("type") String type,
  // );

  // @GET("${ApiConfig.creditReasonEnum}/{id}")
  // Future<CreditEnumTypeResponse> creditIncreaseEnum(
  //   @Path("id") int id,
  // );

  // @POST(ApiConfig.updateCartProduct)
  // Future<CreditLimitResponse> updateCartProduct(
  //   @Body() List<AddCartRequest> body,
  // );

  // @POST(ApiConfig.returnOrderProduct)
  // Future<ReturnProductsResponse> returnProduct(
  //   @Body() List<ReturnProducts> body,
  // );

  // @POST(ApiConfig.spCustomerOrderDetails)
  // Future<SalesCustomerOrders> spCustomerOrder(
  //   @Body() Map<String, dynamic> body,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @POST(ApiConfig.spCancelOrderDetails)
  // Future<SalesCancelResponse> spCancelOrder(
  //   @Body() Map<String, dynamic> body,
  //   @Header("verify") bool verify,
  //   @Header("Authorization") String authorization,
  // );

  // @GET("${ApiConfig.spGetCustomer}/{id}")
  // Future<SpGetCustomerResponse> spGetCustomer(@Path("id") int customerId);
}
