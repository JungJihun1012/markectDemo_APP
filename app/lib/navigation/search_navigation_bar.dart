import 'package:flutter/material.dart';

class SearchNavigationBar extends StatelessWidget {
  SearchNavigationBar({super.key});
  final List<Tab> tabs = <Tab>[
    Tab(text: '전체'),
    Tab(text: '인기'),
    Tab(text: '한식'),
    Tab(text: '양식'),
    Tab(text: '일식'),
    Tab(text: '편의'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: tabs
            ),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 1,
              children: List.generate(10, (index) {
                return Container(

                );  
              },
              )
            )
          ]
          ),
      )
      );
  }
}