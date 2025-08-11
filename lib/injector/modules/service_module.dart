import 'package:hrms/injector/injector.dart';
import 'package:hrms/services/log_service/debug_log_service.dart';
import 'package:hrms/services/log_service/log_services.dart';

class ServiceModule {
  static void init() {
    var instance = Injector.instance;

    instance
      ..registerFactory<LogService>(DebugLogService.new);
     // ..registerFactory<RazorpayPaymentService>(RazorpayPaymentImpl.new);
  }
}
