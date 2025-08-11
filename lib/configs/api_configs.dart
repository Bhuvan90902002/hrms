class ApiConfig {
  ApiConfig._();

  static const String signIn = 'customer-sale-maintenance/sign-in';
  static const String signUp = 'customer-sale-maintenance/save';
  static const String userDetails = 'customer-sale-maintenance/findById';
  static const String verifyOtp = 'auth/signUp/confirm';

  //static const String userDetails = 'get/userDetail';
  static const String deleteUser = 'customer-sale-maintenance/deleteById';
  static const String updateUser = 'customer-sale-maintenance/update';
  static const String productCommon = 'productCommon/getall?page=0&userId=0';
  static const String confirmUser = 'auth/signUp/confirm';
  static const String verificationResent = 'auth/signUp/verificationCodeResent';
  static const String forgetRequest = 'auth/password/forget_request';
  static const String forgetPassConfirm = 'auth/forgetPassword/confirm';

  // static const String getNewProducts = 'productsCommon/getNewProduct';
  static const String getNewProducts = 'api/product/getNewProduct';

  static const String addFavorite = 'save/favorite';
  static const String favoritesList = 'findByUser/favorite';
  static const String uploadImage = 'save/uploadProfileFile';
  static const String confirmotpVerification =
      'customer-sale-maintenance/forget-password';

  //'otp/verification';
  static const String getSpecificProductDetail = 'productCommon/find';
  static const String findImageById = 'find/uploadfiles';
  static const String getAttributValueById = 'find/attributevalueById';
  static const String getAttributName = 'find/attribute';
  static const String removeFavorite = 'delete/favorite';
  static const String getAllCategories = 'categories/pl';
  static const String getChildCategories = 'category/getallSubCategory';
  static const String getAllAttribute = 'getall/attribute';
  static const String getAllFiles = 'getAll/files';
  static const String getAddress = 'find/address';
  static const String addAddress = 'save/address';
  static const String deleteAddress = 'delete/address';
  static const String updateAddress = 'update/address';
  static const String addToCart = 'cart-product/save';
  static const String getAllCoupen = 'coupon/getall';
  static const String getCart = 'cart-product/getAll';
  static const String deleteCart = 'cart-product/deleteById';
  static const String deleteDraft = 'save-draft/deleteById';
  static const String updateCoupon =  'cart-product/update-coupon';
  static const String updateCart = 'update/cart';
  static const String updateCartProduct = 'cart-product/update';
  static const String productsListByCategory = 'products/by-parent-category';
  static const String getOrderDetails = 'api/order/find/ByStatus';
  static const String saveDraft = 'save-draft/save';
  static const String purchaseOrderRequest = 'api/order/save';
  static const String returnOrderProduct = 'api/order/orderReturn';
  static const String updateCartAddress = 'cart-product/update-address';

  // static const String collection = 'collection/getAllCollection';
  static const String collection = 'collection/search';
  static const String creditLimitRequest = '/credit-limit-requests/';

  // 'getAllUserOrder/history';
  static const String orderViewDetails = 'api/order/find/OrderById';
  static const String refundOrder = 'find/refundConfig';
  static const String updateOrder = 'api/order/cancelled';
  static const String allProductCollection = 'product/getAllCollection';
  static const String applyCoupon = 'd/cart';
  static const String saveOrder = 'save/order';
  static const String razorpayPaymentStatus = 'razorpay/payment';
  static const String productFind = 'product/findCollection';
  static const String flashDeals = 'flashdeal/getall';

  // static const String saveReview = 'save/review';
  static const String saveReview = "customerreview";
  static const String updateReview = 'update/review';
  static const String productReview = 'getall/productReview';
  static const String productOrderCount = 'last16Hors/OrderCount';
  static const String getVisitCount = 'getVisitCount/byProduct';
  static const String saveVisitList = 'save/visitList';
  static const String getRelatedProduct = 'getRelatedProduct/ByCategory';
  static const String duplicateOrder = 'api/product/duplicate';
  static const String createTicket = 'help-support/save';
  static const String getHelpSupport = 'Help-support/getAll';
  static const String createHelpSupport = 'Help-support/save';

  // static const String getCreditLimits = '/credit-limit-requests/getall';
  static const String getCreditLimits =
      '/credit-limit-requests/getall/bycustomer';
  static const String searchProduct = 'api/product/products/globalSearch';
  static const String branchProduct = 'customer-branch/search';
  static const String getOutstanding = '/total-outstanding/totalOustanding';

  // static const String getReturnOrders = 'api/order/product-collected/overview';
  static const String getReturnOrders = "/return/returnOrder";
  static const String getReturnProduct = 'api/order/status-userId';
  static const String categoryGetAll = 'category/getAll';
  static const String getBranchCategory = 'customer-branch/categorygetAll';
  static const String getFlashDeals = 'flashdeal/getallProduct';
  static const String getBrands = 'brand/getAll';
  static const String getBranchBrands = 'customer-branch/brandgetAll';
  static const String getSubBrands = 'brand/findcategory';
  static const String creditLimitRequestCreate =
      '/credit-limit-requests/create';
  static const String filterSubCategories = '/subcategoriesBranch/getAll';
  static const String filterChildCategories = 'childcategoriesBranch/getAll';
  static const String filteredProducts = 'category/filter-subcategory';
  static const String getAllDraft = 'save-draft/getAll';
  static const String creditLimitDash = '/credit-limit-requests/dashboard';
  static const String salesCreditLimitDash = '/credit-limit-requests/salesPerson/dashBoard';
  static const String superCoins = 'super-coin/customrCoinsDetail/getAll';
  static const String notification = 'notification/getAll/byUser';
  static const String markAllAsRead = 'notification/markAllAsRead/';
  static const String flashProduct = 'flashdeal/find';

  // Enum type
  static const String enumType = "enum/enum-type";
  static const String creditReasonEnum = "enum/findById/";
  static const String getAllEnums = "enum/getAll?page=1";
  static const String categoryGetChild = 'category/getchild';
  static const String categoryProduct = 'category/product';
  static const String collectionProduct = 'collection/product';
  static const String uploadfiles = 'save/uploadfiles';

// //sales Person
//   static const String spCustomerOrderDetails =
//       'api/salesperson/customer/orders-detail';
  static const String orderDetails = "delivery-boy/find/OrderById";
  static const String spCustomerOrderDetails = 'api/salesperson/customerOrders';
  static const String spAllCustomer = 'api/salesperson/getAllCustomer';
  static const String salesMonthlyOverView = 'api/salesperson/sales';
  static const String spCancelOrderDetails =
      'api/salesperson/orderCancelRequest';
  static const String spGetCustomer = 'api/salesperson/get-customer';
  static const String creditRequestSalesPerson =
      '/credit-limit-requests/creditRequest';
  static const String creditSalesPersonOverView =
      '/credit-limit-requests/customerCreditOverview';
  static const String creditSalesPersonApprove =
      '/credit-limit-requests/approvedList';
  static const String saleMonthlyOverview = 'api/salesperson/sales';
  static const String saleCustomerBranch = 'api/salesperson/customerBranch';
  static const String salesCustomerOrder = '/api/order/find/OrderById';
  static const String creditLimitUpdateRequest =
      'credit-limit-requests/updateStatusBySalesPerson';
  static const String cancelReturn = 'return/findById';
  static const String cancelRequestApprove = '/api/salesperson/updateStatus';
  static const String customerGetBranch = 'customer-branch/branchManager';
}
