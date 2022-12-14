import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_app/models/app_routes.dart';
import 'package:hotel_app/pages/navbar.dart';

import '../../controllers/navigation_controller.dart';
import '../../widgets/navbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavBarController _navigator = Get.find();
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
    );
  }
}
