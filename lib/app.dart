import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms/app_router/router_heleper.dart';
import 'package:hrms/core/dimensions/app_dimension.dart';
import 'package:hrms/core/themes/app_theme.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
   AppDimension().init(context);
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => Injector.instance<LoginBloc>(),
        // ),
        // BlocProvider(
        //   create: (context) => Injector.instance<SignupBloc>(),
        // ),
        // BlocProvider(
        //   create: (context) => Injector.instance<SalesProfileBloc>(),
        // ),
        // BlocProvider(create: (context) => Injector.instance<HomeBloc>()),
        // BlocProvider(create: (context) => Injector.instance<ReturnProductBloc>()),
        // BlocProvider(create: (context) => Injector.instance<FilterBrandBloc>()),
        // BlocProvider(
        //     create: (context) => Injector.instance<MainCategoriesBloc>()),
        // BlocProvider(
        //     create: (context) => Injector.instance<CollectionBloc>()),
        // BlocProvider(create: (context) => Injector.instance<FavoriteBloc>()),
        // BlocProvider(create: (context) => Injector.instance<ReturnOrdersBloc>()),
        // BlocProvider(create: (context) => Injector.instance<RedeemPointsBloc>()),
        // BlocProvider(
        //     create: (context) => Injector.instance<AccountDetailsBloc>()),
        // BlocProvider(create: (context) => Injector.instance<ProfileBloc>()),
        // BlocProvider(create: (context) => Injector.instance<SalCustomerDetailsBloc>()),
        // BlocProvider(create: (context) => Injector.instance<ViewAddressBloc>()),
        // BlocProvider(create: (context) => Injector.instance<AddAddressBloc>()),
        // BlocProvider(create: (context) => Injector.instance<CartBloc>()),
        // BlocProvider(create: (context) => Injector.instance<SummaryBlocBloc>()),
        // BlocProvider(create: (context) => Injector.instance<MyOrdersBloc>()),
        // BlocProvider(create: (context) => Injector.instance<CreditBloc>()),
        // BlocProvider(create: (context) => Injector.instance<OutstandingBloc>()),
        // BlocProvider(
        //     create: (context) => Injector.instance<PaymentStatusBloc>()),
        // BlocProvider(create: (context) => Injector.instance<DraftBloc>()),
        // BlocProvider(create: (context) => Injector.instance<CouponBloc>()),
        // BlocProvider(
        //     create: (context) => Injector.instance<AllProductBlocBloc>()),
        // BlocProvider(
        //     create: (context) =>
        //         Injector.instance<CreditOverviewSalesBloc>()),
        // BlocProvider(
        //     create: (context) =>
        //         Injector.instance<ApproveRejectCreditBloc>()),
        // BlocProvider(
        //     create: (context) =>
        //         Injector.instance<FlashDealBloc>()),
        // BlocProvider(
        //     create: (context) =>
        //         Injector.instance<SalesOrderCancelRequestBloc>()),
        // BlocProvider(
        //     create: (context) =>
        //         Injector.instance<SalesCustomerCreditBloc>()),
        // BlocProvider(
        //     create: (context) => Injector.instance<SpCustomerOrderBlocBloc>()),
      ],
      child: MaterialApp.router(
        themeMode: Theme.of(context).brightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
