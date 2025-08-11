// import 'package:flutter/material.dart';
// import 'package:gramomart/data/entities/features/order/save_order_response.dart';
// import 'package:gramomart/router/app_router.dart';
// import 'package:gramomart/services/payment_service/razorpay_payment_service.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// class RazorpayPaymentImpl extends RazorpayPaymentService {
//   final Razorpay _razorpay = Razorpay();

//   RazorpayPaymentImpl() {
//     initialize();
//   }

//   SaveOrderResponse _paymentRequest = SaveOrderResponse();

//   void initialize() async {
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }

//   @override
//   void dispose() {
//     _razorpay.clear();
//   }

//   @override
//   Future<void> makePayment(
//       {required Map<String, dynamic> request,
//       required SaveOrderResponse saveOrderResponse}) async {
//     try {
//       _paymentRequest = saveOrderResponse;
//       _razorpay.open(request);
//     } catch (e) {
//       print(e);
//       dispose();
//     }
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) async {
//     Map<String, dynamic> request = {
//       "txnCode": _paymentRequest.data?.code,
//       "paymentDetails": response.paymentId,
//       "paymentStatus": "paid",
//       "paymentMethod": "razorpay"
//     };
//     print("response payment completed ===> ${response}");
//     AppRouter.removeAll(
//         AppRouter.paymentStatusScreen, {"isCod": false, "request": request});
//     debugPrint("Payment Success: ${response.paymentId}");
//   }

//   void _handlePaymentError(PaymentFailureResponse response) async {
//     debugPrint("Payment failue: ${response.code}");
//     dispose();
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) async {
//     debugPrint("External Wallet Used: ${response.walletName}");
//     dispose();
//   }
// }
