import 'package:flutter/material.dart';
import 'package:flutter_news_app/constants/app_constants.dart';
import 'package:flutter_news_app/routes/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class NotFoundView extends StatefulWidget {
  const NotFoundView({super.key});

  @override
  State<NotFoundView> createState() => _NotFoundViewState();
}

class _NotFoundViewState extends State<NotFoundView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Lottie.asset(
            AppConstants.notFoundAnimationPath,
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              context.goNamed(AppRouteName.home);
            },
            child: const Text(
              "Go Home",
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
