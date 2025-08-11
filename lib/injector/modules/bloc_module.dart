
import 'package:hrms/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    var instance = Injector.instance;

    //instance
      // ..registerFactory<LoginBloc>(() => LoginBloc(
      //     authRepo: Injector.instance()))
      // ..registerFactory<SignupBloc>(() => SignupBloc(
      //     logService: Injector.instance(), authrepo: Injector.instance()))
      // ..registerFactory<HomeBloc>(() => HomeBloc(
      //     authRepo: Injector.instance(),
      //     homeRepo: Injector.instance(),
      //     cartRepo: Injector.instance()))
      // ..registerFactory<FilterBrandBloc>(
      //     () => FilterBrandBloc(homeRepo: Injector.instance()))
      // ..registerFactory<DraftBloc>(
      //     () => DraftBloc(homeRepo: Injector.instance()))
      // ..registerFactory<CollectionBloc>(
      //         () => CollectionBloc(homeRepo: Injector.instance(), cartRepo: Injector.instance(),addressBloc: Injector.instance()))
      // ..registerFactory<MainCategoriesBloc>(() => MainCategoriesBloc(
      //     homeRepo: Injector.instance(), cartRepo: Injector.instance(), addressBloc: Injector.instance()))
      // ..registerFactory<ReturnProductBloc>(
      //     () => ReturnProductBloc(homeRepo: Injector.instance()))
      // ..registerFactory<FavoriteBloc>(
      //     () => FavoriteBloc(homeRepo: Injector.instance()))
      // ..registerFactory<SalesProfileBloc>(
      //         () => SalesProfileBloc(homeRepo:Injector.instance(), authRepo: Injector.instance(), logService: Injector.instance(), cartRepo: Injector.instance()))
      // ..registerFactory<AccountDetailsBloc>(
      //     () => AccountDetailsBloc(authRepo: Injector.instance()))
      // ..registerFactory<ProfileBloc>(() => ProfileBloc(
      //     authRepo: Injector.instance(),
      //     logService: Injector.instance(),
      //     homeRepo: Injector.instance(),
      //     cartRepo: Injector.instance()))
      // ..registerFactory<ViewAddressBloc>(() => ViewAddressBloc(
      //     authRepo: Injector.instance(), cartRepo: Injector.instance(), cartBloc: Injector.instance()))
      // ..registerFactory<AddAddressBloc>(
      //     () => AddAddressBloc(authRepo: Injector.instance()))
      // ..registerFactory<CartBloc>(() => CartBloc(
      //     cartRepo: Injector.instance(), authrepo: Injector.instance()))
      // ..registerFactory<SummaryBlocBloc>(() => SummaryBlocBloc(
      //     razorpayPaymentService: Injector.instance(),
      //     cartRepo: Injector.instance()))
      // ..registerFactory<MyOrdersBloc>(() => MyOrdersBloc(
      //     cartRepo: Injector.instance(), logService: Injector.instance(), authRepo: Injector.instance()))
      // ..registerFactory<PaymentStatusBloc>(() => PaymentStatusBloc(
      //     cartRepo: Injector.instance()))
      // ..registerFactory<CouponBloc>(() => CouponBloc(
      //       cartRepo: Injector.instance(),
      //       logService: Injector.instance(),
      //     ))
      // ..registerFactory<CreditBloc>(() => CreditBloc(
      //       cartRepo: Injector.instance(),
      //       homeRepo: Injector.instance(), authRepo: Injector.instance(),
      //     ))
      // ..registerFactory<OutstandingBloc>(() => OutstandingBloc(
      //   homeRepo: Injector.instance()
      // ))
      // ..registerFactory<RedeemPointsBloc>(() => RedeemPointsBloc(
      //   homeRepo: Injector.instance()
      // ))
      // ..registerFactory<ReturnOrdersBloc>(() => ReturnOrdersBloc(
      //       homeRepo: Injector.instance(),
      //     ))
      // ..registerFactory<FlashDealBloc>(() => FlashDealBloc(
      //   homeRepo: Injector.instance(), cartRepo:  Injector.instance(),addressBloc:  Injector.instance(),
      // ))
      // ..registerFactory<AllProductBlocBloc>(() => AllProductBlocBloc(
      //       cartRepo: Injector.instance(),
      //     ))
      // ..registerFactory<SalesOrderCancelRequestBloc>(
      //     () => SalesOrderCancelRequestBloc(salesPersonRepo: Injector.instance()))
      // ..registerFactory<CreditOverviewSalesBloc>(
      //         () => CreditOverviewSalesBloc(homeRepo: Injector.instance()))
      // ..registerFactory<SalesCustomerCreditBloc>(
      //         () => SalesCustomerCreditBloc(homeRepo: Injector.instance()))
      // ..registerFactory<SalCustomerDetailsBloc>(
      //         () => SalCustomerDetailsBloc(homeRepo: Injector.instance()))
      // ..registerFactory<ApproveRejectCreditBloc>(
      //         () => ApproveRejectCreditBloc(salesPersonRepo: Injector.instance(), homeRepo: Injector.instance()))
      // ..registerFactory<SpCustomerOrderBlocBloc>(() => SpCustomerOrderBlocBloc(
      //     logService: Injector.instance(),
      //     salesPersonRepo: Injector.instance(), homeRepo: Injector.instance()));

  }
}
