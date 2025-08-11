// import 'package:dio/dio.dart';
// import 'package:gramomart/configs/api_configs.dart';
// import 'package:gramomart/data/entities/features/approveReject/approve_reject_response.dart';
// import 'package:gramomart/data/entities/features/cancelRequest/cancel_request_response.dart';
// import 'package:gramomart/data/entities/features/credit_limits/credit_dash_response.dart';
// import 'package:gramomart/data/entities/features/credit_limits/credit_limit_request_response.dart';
// import 'package:gramomart/data/entities/features/credit_limits/credit_limit_response.dart';
// import 'package:gramomart/data/entities/features/credit_request/credit_request_response.dart';
// import 'package:gramomart/data/entities/features/outstanding/outstanding_response.dart';
// import 'package:gramomart/data/entities/features/redeemPoints/super_coin_response.dart';
// import 'package:gramomart/data/entities/features/salesCredit/credit_overview_request.dart';
// import 'package:gramomart/data/entities/features/salesCredit/sales_credit_response.dart';

// //import 'package:gramomart/data/entities/features/credit_limits/credit_limit_response.dart';
// import 'package:retrofit/error_logger.dart';
// import 'package:retrofit/http.dart';

// part 'credit_limit_api_client.g.dart';

// @RestApi()
// @RestApi(baseUrl: "https://gmartapi.gramosoft.tech/credit/clm/")
// // @RestApi(baseUrl: "http://192.168.1.4:3008/clm")
// abstract class CreditLimitApi {
//   factory CreditLimitApi(Dio dio, {String baseUrl}) = _CreditLimitApi;

//   @GET("${ApiConfig.creditLimitRequest}/{userId}")
//   Future<CreditLimitRes> creditLimit(
//     @Path("userId") int userId,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @GET(ApiConfig.creditLimitDash)
//   Future<CreditDashResponse> creditDash(
//     @Query("customerId") int id,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @GET(ApiConfig.salesCreditLimitDash)
//   Future<CreditDashResponse> salesCreditDash(
//     @Query("id") int id,
//   );

//   @POST(ApiConfig.creditLimitRequestCreate)
//   Future<CreditRequestResponse> increaseCreditLimit(
//     @Body() Map<String, dynamic> request,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @POST(ApiConfig.creditRequestSalesPerson)
//   Future<CreditRequestSales> salesCreditLimit(
//     @Body() Map<String, dynamic> request,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @POST(ApiConfig.creditLimitUpdateRequest)
//   Future<CreditLimitRes> approveRejectRequest(
//     @Body() Map<String, dynamic> request,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @GET(ApiConfig.creditSalesPersonOverView)
//   Future<CreditOverviewRequest> salesCreditLimitOverView(
//     @Query("page") int page,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @POST(ApiConfig.creditSalesPersonApprove)
//   Future<CreditRequestSales> salesApproveRejectSales(
//     @Body() Map<String, dynamic> request,
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//   );

//   @GET(ApiConfig.getCreditLimits)
//   Future<CreditLimitResponse> getCreditLimits(
//     @Header("Origin") String origin,
//     @Header("Verify") bool verify,
//     @Header("Authorization") String authorization,
//     @Query("page") int page,
//     @Query("custId") int userId,
//     @Body() Map<String, dynamic> request,
//   );

//   @GET(ApiConfig.getOutstanding)
//   Future<OutstandingResponse> getOutstanding(
//     @Header("verify") bool verify,
//     @Header("Authorization") String authorization,
//     @Body() Map<String, dynamic> request,
//   );
// }
