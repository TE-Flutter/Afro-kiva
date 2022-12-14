import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hotels {
  final String hotelImgUrl;
  final String hotelName;
  final String duration;
  final int hotelPrice;
  final String hotelRatings;
  final String hotelReviews;
  final String hotelDesc;
  final String roomDetails;

  Hotels({
    required this.hotelImgUrl,
    required this.hotelName,
    required this.duration,
    required this.hotelPrice,
    required this.hotelRatings,
    required this.hotelReviews,
    required this.hotelDesc,
    required this.roomDetails,
  });

  static List<Hotels> hotels = [
    Hotels(
      hotelImgUrl: 'lib/images/hotels/hotel-1.jpeg',
      hotelName: 'Crystal Hotel',
      duration: '3',
      hotelRatings: '4.0',
      hotelReviews: '230',
      hotelPrice: 3000,
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-2.jpeg",
      hotelName: "Polikoff Hotel",
      duration: '2',
      hotelPrice: 2000,
      hotelRatings: "4.5",
      hotelReviews: "88",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus."
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-3.jpeg",
      hotelName: "ParkInn Hotel",
      duration: '1',
      hotelPrice: 2600,
      hotelRatings: "3.5",
      hotelReviews: "128",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-4.jpeg",
      hotelName: "RiverSide Nevsky Hotel",
      duration: '3',
      hotelPrice: 6000,
      hotelRatings: "5.0",
      hotelReviews: "288",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-5.jpg",
      hotelName: "Radisson Sonya Hotel",
      duration: '2',
      hotelPrice: 2100,
      hotelRatings: "4.2",
      hotelReviews: "68",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-6.jpg",
      hotelName: "Azimut Hotel",
      duration: '3',
      hotelPrice: 950,
      hotelRatings: "4.6",
      hotelReviews: "680",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-7.jpeg",
      hotelName: "Parklane Resort Hotel",
      duration: '2',
      hotelPrice: 2500,
      hotelRatings: "4.2",
      hotelReviews: "68",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-8.jpeg",
      hotelName: "Simple Seasons Hotel",
      duration: '1',
      hotelPrice: 1900,
      hotelRatings: "4.8",
      hotelReviews: "628",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi. ",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-9.jpeg",
      hotelName: "Four Seasons Hotel",
      duration: '2',
      hotelPrice: 2700,
      hotelRatings: "4.8",
      hotelReviews: "308",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
    Hotels(
      hotelImgUrl: "lib/images/hotels/hotel-10.jpeg",
      hotelName: "Bristol Hotel",
      duration: '2',
      hotelPrice: 2100,
      hotelRatings: "4.9",
      hotelReviews: "298",
      hotelDesc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel mi nec nisi lobortis bibendum id quis lectus. Quisque non urna sed turpis bibendum posuere elementum varius nisi.",
      roomDetails: "Vivamus non commodo ligula. Vestibulum bibendum tincidunt ipsum, sit amet iaculis quam placerat vel. Donec ac justo gravida, vehicula ante in, malesuada lacus.",
    ),
  ];
}
