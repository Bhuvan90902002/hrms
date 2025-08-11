import 'package:hrms/utils/api_error_codes.dart';

class ErrorMessages {
  static const Map<String, String> messages = {
    ErrorCodes.txncodenull: "Transaction code cannot be null.",
    ErrorCodes.customerName: "Customer name is required.",
    ErrorCodes.customerType: "Customer type is missing.",
    ErrorCodes.customerIndicator: "Customer indicator is invalid.",
    ErrorCodes.address1: "Address line 1 is required.",
    ErrorCodes.address2: "Address line 2 cannot be empty.",
    ErrorCodes.address3: "Address line 3 is not valid.",
    ErrorCodes.city: "City name is required.",
    ErrorCodes.state: "State name is missing.",
    ErrorCodes.postalCode: "Postal code is invalid.",
    ErrorCodes.customerCountry: "Customer country is missing.",
    ErrorCodes.emailAddress: "Invalid email address.",
    ErrorCodes.tokenExpired: "Your session has expired. Please log in again.",
    ErrorCodes.unAuth: "Unauthorized access. Please login.",
    ErrorCodes.invalidOtp: "The OTP entered is incorrect.",
    ErrorCodes.productNotFound: "The requested product was not found.",
    ErrorCodes.invalidCouponCode: "The coupon code entered is invalid.",
    ErrorCodes.refundAlreadyApplied:
        "A refund request has already been applied.",
    ErrorCodes.stockOutOfOrder: "Stock is currently unavailable.",
    ErrorCodes.passwordValidation:
        "Password must be at least 8 characters long.",
    ErrorCodes.success: "Operation completed successfully.",
  };

  static String getMessage(String errorCode) {
    return messages[errorCode] ?? "An unknown error occurred.";
  }

}
