import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/2_application/app/go_router_observer.dart';
import 'package:todo_app/2_application/pages/home/home_page.dart';
import 'package:todo_app/2_application/pages/settings/setting_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home/dashboard',
  observers: [GoRouterObserver()],
  routes: [
    // GoRoute(
    //   path: '/home/settings',
    //   builder: (context, state) {
    //     return const SettingPage();
    //   },
    // ),
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => child,
        routes: [
          GoRoute(
            path: '/home/:tab',
            builder: (context, state) => HomePage(
              key: state.pageKey,
              tab: state.params['tab'] ?? 'dashboard',
            ),
          )
        ]),
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) {
    //     return const HomePage();
    //   },
    // ),
  ],
);
