import 'package:flutter/material.dart';
import 'package:flutter_news_app/constants/news_category.dart';
import 'package:flutter_news_app/services/news_services.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: newsCategory.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("News Wave"),
          bottom: TabBar(
            labelPadding: const EdgeInsets.only(
              bottom: 5,
            ),
            indicatorWeight: 4,
            indicator: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            tabs: newsCategory.map((e) => Text(e)).toList(),
          ),
        ),
      ),
    );
  }
}
