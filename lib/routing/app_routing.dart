import 'package:get/get.dart';
import 'package:paint_burak/pages/services/services.dart';
import '../pages/review/review.dart';
import 'app_routes.dart';
import '../pages/about_us/about_us.dart';
import '../pages/projects/projects.dart';
import '../pages/contact_us/contact_us.dart';
import '../pages/home/home.dart';

class AppRouting {
  final String pageName;
  final String routeName;

  AppRouting(this.pageName, this.routeName);

  static final List<GetPage> routes = [
    GetPage(name: HomePageRoute, page: () => Home()),
    GetPage(name: ServicesPageRoute, page: () => Services()),
    GetPage(name: ProjectsPageRoute, page: () => Projects()),
    GetPage(name: AboutUsPageRoute, page: () => AboutUs()),
    GetPage(name: ReviewPageRoute, page: () => Review()),
    GetPage(name: ContactUsPageRoute, page: () => ContactUs()),
  ];

  static final List<AppRouting> menuItems = [
    AppRouting(HomePageName, HomePageRoute),
    AppRouting(ServicesPageName, ServicesPageRoute),
    AppRouting(ProjectsPageName, ProjectsPageRoute),
    AppRouting(AboutUsPageName, AboutUsPageRoute),
    AppRouting(ReviewPageName, ReviewPageRoute),
    AppRouting(ContactUsPageName, ContactUsPageRoute),
  ];
}
