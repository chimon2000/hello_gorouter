import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_gorouter/src/login/login_view.dart';
import 'package:hello_gorouter/src/sample_feature/sample_feature.dart';
import 'package:hello_gorouter/src/settings/settings.dart';

class AppRouter extends ChangeNotifier {
  var router = loggedOutRoutes;

  void login() {
    router = loggedInRoutes;

    notifyListeners();
  }

  void logout() {
    router = loggedOutRoutes;
    notifyListeners();
  }
}

final loggedInRoutes = GoRouter(
  routes: [
    GoRoute(
      path: SampleItemListView.routeName,
      builder: (context, state) => const SampleItemListView(),
    ),
    GoRoute(
      path: SampleItemDetailsView.routeName,
      builder: (context, state) => const SampleItemDetailsView(),
    ),
    GoRoute(
      path: SettingsView.routeName,
      builder: (context, state) => const SettingsView(),
    ),
  ],
);

final loggedOutRoutes = GoRouter(
  routes: [
    GoRoute(
      path: LoginView.routeName,
      builder: (context, state) => const LoginView(),
    ),
  ],
);
