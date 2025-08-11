import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

mixin class AppMixins {
  String getDateFormat(DateTime date, String formate) {
    DateFormat dateFormat = DateFormat(formate);
    var result = dateFormat.format(date);
    return result;
  }

  DateTime getUTCDateFormat(String date, String formate) {
    String dateString = date;
    DateFormat format = DateFormat(formate);
    DateTime dateTime = format.parse(dateString);

    return dateTime;
  }

  String getDateFormate(DateTime date, String formate) {
    DateFormat dateFormat = DateFormat(formate);
    var result = dateFormat.format(date);
    return result;
  }

  convertUtcToFormatDate(String date, String existingFormat, String newFormat) {
    DateTime _date = getUTCDateFormat(date, existingFormat);
    var result = getDateFormat(_date, newFormat);

    return result;
  }

  getTimeFromString(String time, String format) {
    // String timeString = "08:00 PM";'HH:mm'
    DateTime parsedTime = DateFormat.jm().parse(time);
    String formattedTime = DateFormat(format).format(parsedTime);

    return formattedTime;
  }

  double checkValueDouble(dynamic value) {
    if (value == null) {
      return 0.0;
    } else if (value.toString().isEmpty) {
      return 0.0;
    } else if (value is String) {
      return double.parse(value);
    } else if (value is int) {
      return value.toDouble();
    } else {
      return value;
    }
  }

  int checkValueInt(dynamic value) {
    if (value == null) {
      return 0;
    } else if (value.toString().isEmpty) {
      return 0;
    } else if (value is String) {
      return int.parse(value);
    } else if (value is double) {
      return value.toInt();
    } else {
      return value;
    }
  }

  // void navigateToHome(
  //     {required BuildContext context,
  //     required int userId,
  //     required String accessToken,
  //     // required String refreshToken,
  //     // required String userLoginName,
  //     // required String userPassword,
  //     required int ownerId,
  //     required int customerBranchId,
  //     required int salesPersonId,
  //     required String userType,
  //     required String cusSalesPersonName,
  //     required int cusSalesPersonId,
  //     required String userName,
  //     required bool isSalesPerson}) async {
  //   try {
  //     await SharedPrefController.instance
  //         .setBoolData(key: SharedPrefKeys.isLoggedIn, value: true);
  //     await SharedPrefController.instance
  //         .setIntegerData(key: SharedPrefKeys.userId, value: userId);
  //     await SharedPrefController.instance
  //         .setIntegerData(key: SharedPrefKeys.salesPersonId, value: salesPersonId);
  //     await SharedPrefController.instance.setIntegerData(
  //         key: SharedPrefKeys.customerBranchId, value: customerBranchId);
  //     await SharedPrefController.instance.setIntegerData(
  //         key: SharedPrefKeys.customerBranchId, value: customerBranchId);
  //     await SharedPrefController.instance
  //         .setStringData(key: SharedPrefKeys.userType, data: userType);
  //     await SharedPrefController.instance.setStringData(
  //         key: SharedPrefKeys.cusSalesPersonName, data: cusSalesPersonName);
  //     await SharedPrefController.instance
  //         .setIntegerData(key: SharedPrefKeys.ownerId, value: ownerId);
  //     await SharedPrefController.instance
  //         .setStringData(key: SharedPrefKeys.accessToken, data: accessToken);
  //     // await SharedPrefController.instance
  //     //     .setStringData(key: SharedPrefKeys.accessToken, data: accessToken);
  //     // await SharedPrefController.instance
  //     //     .setStringData(key: SharedPrefKeys.refreshToken, data: refreshToken);
  //     await SharedPrefController.instance
  //         .setStringData(key: SharedPrefKeys.userName, data: userName);
  //     // await SharedPrefController.instance
  //     //     .setStringData(key: SharedPrefKeys.userName, data: userName);
  //     await SharedPrefController.instance
  //         .setBoolData(key: SharedPrefKeys.isSalesPerson, value: isSalesPerson);
  //     bool storedIsSalesPerson = await SharedPrefController.instance
  //             .getBoolData(key: SharedPrefKeys.isSalesPerson) ??
  //         false;

  //     if (storedIsSalesPerson) {
  //       context.goNamed(AppRouter.salesDboardScreen);
  //     } else {
  //       context.goNamed(AppRouter.dashboardScreenName);
  //     }
  //   } catch (e) {
  //     debugPrint(e as String?);
  //   }
  // }

  // String capitalizeString(String? input) {
  //   if (input == null || input.isEmpty) {
  //     return '';
  //   }
  //   return input[0].toUpperCase() + input.substring(1);
  // }
  // String cdnUrl({required String path}) {
  //   String url = '';

  //   if (path.isNotEmpty) {
  //     url = AppConfigs.cdnImagebaseUrl + path;
  //   } else {
  //     url = path;
  //   }
  //   return url;
  // }

  Future<T> loadJson<T>(
      String path, T Function(Map<String, dynamic>) fromJson) async {
    String jsonString = await rootBundle.loadString(path);
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return fromJson(jsonMap);
  }

  double calculateDiscountedAmount({
    required double amount,
    required double discountValue,
    required String discountType, // "percent" or "fixed"
  }) {
    if (discountType == "percent") {
      return amount - (amount * discountValue / 100);
    } else {
      return amount - discountValue;
    }
  }

  String convertTimestamp(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('MMM dd, yyyy').format(date);
  }

  String formatDate(String isoDate) {
    DateTime dateTime = DateTime.parse(isoDate);
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  String convertTime(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('hh:mm a').format(date);
  }

  String convertDateTime(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('MMM dd, yyyy - hh:mm a').format(date);
  }

  String convertTimeCalOrder(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('dd MMM, yyyy').format(date);
  }

  // Future<String> convertToBase64(XFile file) async {
  //   File imageFile = File(file.path);
  //   List<int> imageBytes = await imageFile.readAsBytes();
  //   String base64String = base64Encode(imageBytes);
  //   return base64String;
  // }

  String convertSecondsToCustomFormat(int totalSeconds) {
    int days = totalSeconds ~/ 86400;
    int hours = (totalSeconds % 86400) ~/ 3600;

    return "${days}d ${hours}h";
  }

  String timeElapsedSince(String pastDateString) {
    // ✅ Use the correct format
    DateTime pastDate =
        DateFormat("MMM dd, yyyy - hh:mm a").parse(pastDateString);
    DateTime now = DateTime.now(); // Current time

    Duration difference = now.difference(pastDate); // Find difference

    int days = difference.inDays;
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;

    return "$days days $hours hours $minutes minutes ago";
  }

  int convertToSeconds(String timeString) {
    List<String> parts = timeString.split(" "); // Split into words
    int days = 0, hours = 0, minutes = 0;

    for (int i = 0; i < parts.length; i++) {
      if (parts[i] == "days") {
        days = int.parse(parts[i - 1]);
      } else if (parts[i] == "hours") {
        hours = int.parse(parts[i - 1]);
      } else if (parts[i] == "minutes") {
        minutes = int.parse(parts[i - 1]);
      }
    }

    return (days * 86400) + (hours * 3600) + (minutes * 60);
  }

  String formatNumberWithCommas(dynamic number) {
    double numValue = double.tryParse(number.toString()) ?? 0;
    String numStr = numValue.toStringAsFixed(0);
    StringBuffer formatted = StringBuffer();
    int count = 0;

    for (int i = numStr.length - 1; i >= 0; i--) {
      formatted.write(numStr[i]);
      count++;
      if (count % 3 == 0 && i != 0) {
        formatted.write(',');
      }
    }

    return formatted.toString().split('').reversed.join('');
  }

  // showMsg(context, {String? text}) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: CustomTextWidget(
  //         text: text ?? 'Added to cart successfully!',
  //         textStyle: Theme.of(context)
  //             .textTheme
  //             .bodyMedium
  //             ?.copyWith(color: AppColors.white),
  //       ),
  //       duration: Duration(seconds: 2),
  //       behavior: SnackBarBehavior.floating,
  //     ),
  //   );
  // }

  double calculateOverallRating(List<int> ratings) {
    if (ratings.isEmpty) return 0.0; // Avoid division by zero

    int sum = ratings.reduce((a, b) => a + b);
    double average = sum / ratings.length;

    return double.parse(average.toStringAsFixed(1)); // Round to 1 decimal place
  }

  String formatText(String text, int maxChars) {
    return text.replaceAllMapped(
        RegExp('.{1,$maxChars}'), (match) => '${match.group(0)}\n');
  }

  String formatDateTime(String dateString,
      {String format = "dd MMM yyyy, h:mm a"}) {
    try {
      DateTime dateTime = DateTime.parse(dateString);
      return DateFormat(format).format(dateTime.toLocal());
    } catch (e) {
      return "Invalid Date";
    }
  }

  String formatDateTrackTime(String isoTime) {
    try {
      DateTime dateTime = DateTime.parse(isoTime).toLocal(); // Convert to local time
      return DateFormat('MMM d  h:mm a').format(dateTime);   // Example: Feb 10  4:55 AM
    } catch (e) {
      return 'Invalid time';
    }
  }

  String convertCalOrder(String endDate) {
    DateTime date = DateTime.parse(endDate);
    return DateFormat('d MMM yyyy').format(date);
  }

  String formatOrderDate(String? isoDate) {
    if (isoDate == null) return 'N/A';
    final date = DateTime.tryParse(isoDate);
    if (date == null) return 'N/A';
    return DateFormat('dd/MM/yyyy').format(date);
  }




  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
