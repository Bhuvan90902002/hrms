import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hrms/configs/app_configs.dart';
import 'package:hrms/injector/injector.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule._();

  static const String dioInstanceName = 'dioInstance';
  static const String creditLimitDio = 'creditLimitDio';
  static final GetIt _injector = Injector.instance;

  static void setup() {
    _setupDio();
  }

  static void _setupDio() {
    _injector.registerLazySingleton<Dio>(
      () {
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfigs.baseUrl,
          ),
        );

        if (!kReleaseMode) {
          dio.interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              request: false,
            ),
          );
        }
        return dio;
      },
      instanceName: dioInstanceName,
    );

     _injector.registerLazySingleton<Dio>(
      () {
        final Dio dio = Dio(BaseOptions(
            baseUrl: "https://gmartapi.gramosoft.tech/credit/clm/")
            // baseUrl: "http://192.168.1.4:3008/clm")
        );
        if (!kReleaseMode) {
          dio.interceptors.add(PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseHeader: true,
            request: false,
          ));
        }
        return dio;
      },
      instanceName: creditLimitDio,
    );
  }
}