import 'package:go_router/go_router.dart';
import 'package:paint_burak/pages/about_us/about_us.dart';
import 'package:paint_burak/pages/contact_us/contact_us.dart';
import 'package:paint_burak/routing/app_routes.dart';

import '../pages/home/home.dart';

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomePageName,
      path: HomePageRoute,
      builder: (context, state) => Home(),
    ),
    GoRoute(
      name: AboutUsPageName,
      path: AboutUsPageRoute,
      builder: (context, state) => AboutUs(),
    ),
    GoRoute(
      name: ContactUsPageName,
      path: ContactUsPageRoute,
      builder: (context, state) => ContactUs(),
    ),
  ],
);
