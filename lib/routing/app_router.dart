import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/en',
      routes: [
        // Main feed
        ShellRoute(),
        // Coming Soon feed
        ShellRoute(),
        // My Series
        ShellRoute(),
      ],
    ),
    // Search
    GoRoute(path: '/search'),
    // Settings/Account/More
    GoRoute(path: '/more'),
  ],
);
