import 'package:flutter/material.dart';
import 'package:hotel_app/models/app_routes.dart';
import 'package:get/get.dart';
import 'package:hotel_app/screens/homepages/details.dart';
import '../models/hotel_model.dart';
import '../widgets/home_widget.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Hotels.hotels.length,
          itemBuilder: (BuildContext context, int index) {
            return HomeWidget(
              hotelImgUrl: Hotels.hotels[index].hotelImgUrl,
              hotelName: Hotels.hotels[index].hotelName,
              duration: Hotels.hotels[index].duration,
              hotelPrice: Hotels.hotels[index].hotelPrice,
              hotelRatings: Hotels.hotels[index].hotelRatings,
              hotelReviews: Hotels.hotels[index].hotelReviews,
              hotelDesc: Hotels.hotels[index].hotelDesc,
              roomDesc: Hotels.hotels[index].roomDetails,
            );
          }),
    );
  }
}
