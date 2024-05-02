import 'package:flutter_news_app/routes/route_names.dart';
import 'package:flutter_news_app/views/home_view.dart';
import 'package:flutter_news_app/views/not_found_view.dart';
import 'package:go_router/go_router.dart';

class AppRouteConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: "/${AppRouteName.home}",
    errorBuilder: (context, state) {
      return const NotFoundView();
    },
    routes: [
      GoRoute(
        path: "/${AppRouteName.home}",
        name: AppRouteName.home,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
