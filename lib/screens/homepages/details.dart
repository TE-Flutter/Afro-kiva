import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/hotel_detailscontroller.dart';
import '../../models/appcolors.dart';
import '../../widgets/button_widget.dart';

class DetailsScreen extends GetView<DetailsController> {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var data = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hotel Details',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("${data[0]}"),
                              fit: BoxFit.cover)),
                      height: height * 0.25,
                      width: width),
                  const SizedBox(height: 12),
                  Text('${data[1]}',
                      style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(height: 10),
                  Text('₽${data[4]} per night',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15)),
                  const SizedBox(height: 10),
                  Row(children: [
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    const SizedBox(width: 5),
                    Text(
                      '(${data[5]} Reviews)',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  Text("Description",
                      style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  const SizedBox(height: 10),
                  Text(
                    '${data[3]}',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Text("Amenities",
                      style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Tv'),
                      Text('Wi_Fi'),
                      Text('Ac'),
                      Text('Free parking'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text("Room Details",
                      style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  const SizedBox(height: 10),
                  Text(
                    '${data[7]}',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  const Button(
                    text: 'Book Room',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
