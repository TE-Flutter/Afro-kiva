import 'package:flutter/material.dart';
import 'package:hotel_app/models/app_routes.dart';
import 'package:hotel_app/models/appcolors.dart';
import 'package:get/get.dart';

import '../models/hotel_model.dart';
import '../screens/homepages/details.dart';

class HomeWidget extends StatelessWidget {
  final String hotelImgUrl;
  final String hotelName;
  final String duration;
  final int hotelPrice;
  final String hotelRatings;
  final String hotelReviews;
  final String hotelDesc;
  final String roomDesc;

  const HomeWidget(
      {Key? key,
      required this.hotelImgUrl,
      required this.hotelName,
      required this.duration,
      required this.hotelPrice,
      required this.hotelRatings,
      required this.hotelDesc,
      required this.hotelReviews,
      required this.roomDesc,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Get.to(() => const DetailsScreen(), arguments: [
            hotelImgUrl,
            hotelName,
            duration,
            hotelDesc,
            hotelPrice,
            hotelReviews,
            hotelRatings,
            roomDesc,
          ]);
        },
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(hotelImgUrl)),
              ),
              child: Container(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  //color: Colors.lightBlue[50],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 9,
                      spreadRadius: 1,
                      offset: const Offset(2, 3),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 0,
                      spreadRadius: 1,
                      offset: Offset(-1, 0),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    const Icon(
                      Icons.star,
                      size: 22,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      hotelRatings,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '$hotelReviews Reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey[800]),
                    ),
                  ]),

                  //SizedBox (height)
                  const SizedBox(height: 8),
                  Text(
                    hotelName,
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),

                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\₽' + hotelPrice.toString(),
                            style: TextStyle(
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 3),
                          const Text('/'),
                          const SizedBox(width: 3),
                          Text(
                            '$duration nights',
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: otherColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
