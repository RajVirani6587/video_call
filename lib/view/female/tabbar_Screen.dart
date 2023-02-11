import 'package:flutter/material.dart';

import 'contrary_screen.dart';

class ContraryTabbar_Screen extends StatefulWidget {
  const ContraryTabbar_Screen({Key? key}) : super(key: key);

  @override
  State<ContraryTabbar_Screen> createState() => _ContraryTabbar_ScreenState();
}

class _ContraryTabbar_ScreenState extends State<ContraryTabbar_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DefaultTabController(
                  length: 2, // length of tabs
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TabBar(
                        indicatorWeight: 3,
                        indicatorColor: Colors.purple.shade900,
                        labelColor: Colors.purple.shade900,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                        tabs: [
                          Tab(text: "Contrary"),
                          Tab(text: "language "),
                        ],
                      ),
                      Container(
                        height: 0.7,
                        width: double.infinity,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 820,
                        child: Column(
                          children: [
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Contrary_Screen(),
                                  Contrary_Screen(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
