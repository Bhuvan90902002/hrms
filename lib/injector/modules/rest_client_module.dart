
import 'package:hrms/injector/injector.dart';
import 'package:hrms/injector/modules/dio_module.dart';
import 'package:hrms/services/network/rest_api_client.dart';

class RestClientModule {
  RestClientModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<RestApiClient>(
      () => RestApiClient(
        injector(instanceName: DioModule.dioInstanceName),
      ),
    );
    // injector.registerFactory<CreditLimitApi>(
    //   () => CreditLimitApi(
    //     injector(instanceName: DioModule.creditLimitDio), // correct Dio
    //   ),
    // );

   
  }
}
