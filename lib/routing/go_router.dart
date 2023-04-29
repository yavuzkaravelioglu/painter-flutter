import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/pages/about_us/about_us.dart';
import 'package:paint_burak/pages/contact_us/contact_us.dart';
import 'package:paint_burak/pages/not_found/not_found.dart';
import 'package:paint_burak/routing/app_routes.dart';

import '../pages/home/home.dart';
import '../pages/projects/projects.dart';
import '../pages/services/services.dart';

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: HomePageRoute,
  errorBuilder: (context, state) => const NotFound(),
  routes: [
    GoRoute(
      name: HomePageName,
      path: HomePageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: Home(),
      ),
    ),
    GoRoute(
      name: ServicesPageName,
      path: ServicesPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: Services(),
      ),
    ),
    GoRoute(
      name: ProjectsPageName,
      path: ProjectsPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: Projects(),
      ),
    ),
    GoRoute(
      name: AboutUsPageName,
      path: AboutUsPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: AboutUs(),
      ),
    ),
    GoRoute(
      name: ContactUsPageName,
      path: ContactUsPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: ContactUs(),
      ),
    ),
  ],
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    transitionDuration: Duration(milliseconds: 120),
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.bounceIn).animate(animation),
        child: child,
      );
    },
  );
}
