import 'package:get/get.dart';
import 'package:hotel_app/screens/homepages/details.dart';
import 'package:hotel_app/screens/homepages/home.dart';

import '../pages/navbar.dart';
import '../screens/homepages/favorite_page.dart';
import '../screens/homepages/profile_page.dart';
import '../screens/homepages/saved_bookings.dart';
import '../screens/homepages/search_page.dart';
import '../screens/login_screen.dart';


class AppPages {
  static List<GetPage> routes = [
    GetPage(name: nav, page: () => const NavBarDefault()),
    GetPage(name: profile, page: () => const ProfilePage()),
    GetPage(name: search, page: () => const SearchPage()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: favorite, page: () => const FavoritePage()),
    GetPage(name: savedforlater, page: () => const SavedForLater()),
    GetPage(name: login, page: () =>  LoginPage()),
    GetPage(name: details, page: () => const DetailsScreen()),
  ];

  static gethome() => home;
  static getprofile() => profile;
  static getsearch() => search;
  static getfavorite() => favorite;
  static getnav() => nav;
  static getsavedlater() => savedforlater;
  static getlogin() => login;
  static getdetails() => details;

  static String home = '/home';
  static String profile = '/profile_screen';
  static String search = '/search_screen';
  static String favorite = '/favorite_screen';
  static String nav = '/';
  static String savedforlater = '/saved_bookings';
  static String login = '/login_screen';
  static String details = '/details';
}
