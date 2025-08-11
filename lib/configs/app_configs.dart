
class AppConfigs {
  AppConfigs._();

  static String baseUrl = 'https://api.gramomart.com/gramo/';

  static const String defaultLocale = 'en';

  static const String headerOrigin = 'https://aureola.vcandoit.in';

  // "https://sekarz.vcandoit.in";
  // 'https://aureola.vcandoit.in';
  static const int ANDROID_VERSION = 1;
  static const String forceUpdateKey = "app_version";
  static const String userType = "customer";
  static const String usertTypeSales = "SalesPerson";
  static const String salesPerson = 'salesperson';
  static const String userAgent = "mobile";
  static const String rupeeSymbol = "₹";
  static const String razorPayKey = "rzp_test_KKT1VgMGauKTe0";

  // Image base url

  static const String cdnImagebaseUrl =
      'https://d3c0mq9zcsdncs.cloudfront.net/';

  //
  // static void configDev() {
  //   baseUrl = "http://192.168.0.129:8081";
  //   // baseUrl = 'https://api.gramomart.com/gramo/';
  // }

  static void configDev() {
    //dhinesh
    // baseUrl="http://210.18.187.83:3008";

    //sathya
    //baseUrl = "http://192.168.0.122:3005/";
    //navin
    // baseUrl = "http://192.168.1.14:3005/";

    baseUrl = "https://gmartapi.gramosoft.tech/jimpex/";

    // baseUrl = "http://10.100.50.102:3005/";

    // baseUrl = "http://192.168.31.111:3005/";
    // 192.168.31.111

    // baseUrl = 'https://api.gramomart.com/gramo/';
  }

  static void configTest() {
    // baseUrl = 'http://210.18.187.83:3005/';
    // sathya
    // 192.168.1.21:3005
    // baseUrl = 'http://192.168.31.111:3005/';
    baseUrl = 'http://192.168.1.6:3005/';
    //dinesh
    // baseUrl = 'http://192.168.31.79:3005/';

    // '"http://192.168.0.113:8084/';
  }

  static void configProduction() {
    baseUrl = '';
  }

}
