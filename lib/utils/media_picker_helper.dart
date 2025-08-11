// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:hrms/widgets/common_picker_widget.dart';
// import 'package:permission_handler/permission_handler.dart';

// class MediaPickerHelper {
//     MediaPickerHelper._privateConstructor();

//   static final MediaPickerHelper instance =
//       MediaPickerHelper._privateConstructor();

//   Future<List<XFile>?> pickImages(
//       BuildContext context, PickerType value) async {
//     List<XFile>? files;
//     if (Platform.isAndroid) {
//       files = await onclickMedia(value, context, true);
//     } else if (Platform.isIOS) {
//       files = await onClickIOSMedia(value, context, true);
//     }
//     return files;
//   }


//    Future<List<XFile>?> onclickMedia(
//       PickerType type, BuildContext context, bool isMultiSelect) async {
//     try {
//       if (type == PickerType.camera) {
//         return await onclickCamera()
//             .then((xFile) => xFile != null ? [xFile] : null);
//       } else if (type == PickerType.gallery) {
//         return await onclickGallery(isMultiSelect: isMultiSelect);
//       }
//     } catch (e) {
//       return null;
//     }
//     return null;
//   }

//   Future<List<XFile>?> onClickIOSMedia(
//       PickerType type, BuildContext context, bool isMultiSelect) async {
//     return await onclickMedia(type, context, isMultiSelect);
//   }



//   Future<XFile?> onclickCamera() async {
//     try {
//       ImagePicker picker = ImagePicker();
//       var status = await Permission.camera.request();
//       if (status.isGranted) {
//         return await picker.pickImage(
//             source: ImageSource.camera, imageQuality: 25);
//       }
//     } catch (e) {
//       return null;
//     }
//     return null;
//   }

//   Future<List<XFile>?> onclickGallery({bool isMultiSelect = false}) async {
//     try {
//       ImagePicker picker = ImagePicker();
//       var status = await Permission.photos.request();
//       if (status.isGranted) {
//         if (isMultiSelect) {
//           return await picker.pickMultiImage();
//         } else {
//           XFile? xFile = await picker.pickImage(source: ImageSource.gallery);
//           return xFile != null ? [xFile] : null;
//         }
//       }
//     } catch (e) {
//       return null;
//     }
//     return null;
//   }
// }