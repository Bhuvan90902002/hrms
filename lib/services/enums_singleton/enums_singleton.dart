// import 'package:gramomart/data/repositories/auth_repo/auth_repo.dart';

// class EnumsSingleton {
//   static EnumsSingleton? _instance;
//   final AuthRepo _authRepo;

//   dynamic
//       apiData; // You can change the type to whatever your API returns, e.g. Map, List, etc.

//   EnumsSingleton._internal(this._authRepo);

//   static void initialize(AuthRepo authRepo) {
//     if (_instance == null) {
//       _instance = EnumsSingleton._internal(authRepo);
//     }
//   }

//   static EnumsSingleton get instance {
//     if (_instance == null) {
//       throw Exception(
//           "EnumsSingleton not initialized. Call initialize() first.");
//     }
//     return _instance!;
//   }

//   Future<void> fetchAndStoreData() async {
//     try {
//       final response = await _authRepo.getEnumType(); // Make API call
//       apiData = response; // Store data in singleton
//     } catch (e) {
//       // Handle error
//       print('API call failed: $e');
//     }
//   }
// }
