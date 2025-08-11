

// import 'package:flutter/cupertino.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:permission_handler/permission_handler.dart';


// class DocumentHelper {
//   static onclickCamera() async {
//     try {
//       ImagePicker picker = ImagePicker();
//       XFile? xFile;

//       xFile =
//       await picker.pickImage(source: ImageSource.camera, imageQuality: 25);
//       if (xFile != null) {
//         return xFile;
//       }
//     } catch (e) {
//       return null;
//     }
//   }

//   static Future<dynamic> onclickGallery(
//       {FileType? fileType,
//         List<String>? allowedExtensions,
//         bool allowMultiple = false}) async {
//     try {
//       FilePickerResult? result = await FilePicker.platform.pickFiles(
//           type: fileType ?? FileType.any,
//           allowedExtensions: allowedExtensions,
//           allowMultiple: allowMultiple);
//       return allowMultiple ? result!.files : result!.files[0];
//     } catch (e) {
//       return null;
//     }
//   }




//   static Future<dynamic> onclickMedia(PickerType type,BuildContext context,bool isMultiSelect) async {
//     try {
//       if (type == PickerType.camera) {
//         ImagePicker picker = ImagePicker();
//         XFile? xFile;
//         var status = await PermissionsRepo.getPermissions(
//             Permission.camera, context);
//         if (status) {
//           xFile = await picker.pickImage(
//               source: ImageSource.camera, imageQuality: 25);
//           if (xFile != null) {
//             PlatformFile platformFile = PlatformFile(
//               name: xFile.name,
//               path: xFile.path,
//               bytes: await xFile.readAsBytes(),
//               size: await xFile.length(),
//             );
//             return [platformFile];
//           }
//         }
//       }else if (type == PickerType.gallery)  {
//         var status = await PermissionsRepo.getPermissions(
//             Permission.photos, context);
//         if (status)  {
//           try {
//             FilePickerResult? result = await FilePicker.platform.pickFiles(
//                 type: FileType.image,
//                 allowMultiple: isMultiSelect);
//             return result?.files;
//           } catch (e) {
//             return null;
//           }
//         }
//       } else {
//         var status = await PermissionsRepo.getPermissions(Permission.storage, context);
//         if (status) {
//           try {
//             FilePickerResult? result = await FilePicker.platform.pickFiles(
//                 type: FileType.custom,
//                 allowedExtensions:['pdf', 'xls', 'xlsx'],
//                 allowMultiple: isMultiSelect);
//             return result?.files;
//           } catch (e) {
//             return null;
//           }
//         }
//       }
//     } catch (e) {
//       return null;
//     }
//   }




//   static Future<List<PlatformFile>?> onClickIOSMedia(
//       PickerType type, BuildContext context, bool isMultiSelect) async {
//     try {
//       if (type == PickerType.gallery) {
//         final picker = ImagePicker();
//         XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

//         if (pickedFile != null) {
//           PlatformFile platformFile = PlatformFile(
//             name: pickedFile.name,
//             path: pickedFile.path,
//             bytes: await pickedFile.readAsBytes(),
//             size: await pickedFile.length(),
//           );
//           return [platformFile];
//         } else {
//           return null;
//         }
//       } else if (type == PickerType.camera) {
//         ImagePicker picker = ImagePicker();
//         XFile? xFile = await picker.pickImage(
//           source: ImageSource.camera,
//           imageQuality: 25,
//         );

//         if (xFile != null) {
//           PlatformFile platformFile = PlatformFile(
//             name: xFile.name,
//             path: xFile.path,
//             bytes: await xFile.readAsBytes(),
//             size: await xFile.length(),
//           );
//           return [platformFile];
//         } else {
//           return null;
//         }
//       } else {
//         FilePickerResult? result = await FilePicker.platform.pickFiles(
//           type: FileType.custom,
//           allowedExtensions: ['pdf', 'xls', 'xlsx'],
//           allowMultiple: isMultiSelect,
//         );

//         if (result != null) {
//           return result.files.map((file) {
//             if (file.path == null) {
//               return PlatformFile(
//                 name: file.name,
//                 bytes: file.bytes,
//                 size: file.size,
//               );
//             }
//             return file;
//           }).toList();
//         } else {
//           return null;
//         }
//       }
//     } catch (e) {
//       return null;
//     }
//   }

// }
