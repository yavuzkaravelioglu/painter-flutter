import 'package:get/get.dart';
import 'app_routes.dart';
import '../pages/about_us/about_us.dart';
import '../pages/contact_us/contact_us.dart';
import '../pages/home/home.dart';

class AppRouting {
  final String pageName;
  final String routeName;

  AppRouting(this.pageName, this.routeName);

  static final List<GetPage> routes = [
    GetPage(name: HomePageRoute, page: () => Home()),
    GetPage(name: AboutUsPageRoute, page: () => AboutUs()),
    GetPage(name: ContactUsPageRoute, page: () => ContactUs()),
  ];

  static final List<AppRouting> menuItems = [
    AppRouting(HomePageName, HomePageRoute),
    AppRouting(AboutUsPageName, AboutUsPageRoute),
    AppRouting(ContactUsPageName, ContactUsPageRoute)
  ];
}
