import 'package:flutter/material.dart';
import 'package:hotel_app/pages/hotels_listview.dart';

import '../../widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset('lib/images/logos/app_logo.png', height: 50),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                children: const [
                  HotelsView(),
                  // SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ));
  }
}
