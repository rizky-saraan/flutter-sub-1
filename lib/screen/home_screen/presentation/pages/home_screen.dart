import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/home_screen/domain/services/home_service.dart';
import 'package:flutter_sub_1/screen/home_screen/presentation/widgets/home_drawer.dart';

import '../../../../core/utility/colors.dart';
import '../../../../core/utility/strings.dart';
import '../../data/models/home_banner.dart';

class HomeScreen extends StatefulWidget {
  final String? title;

  const HomeScreen({Key? key, this.title}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedDestination = 0;
  HomeService? homeService; //declare home service
  List<HomeBanner>? listBanner = []; //declare list banner

  @override
  void initState() {
    //initialize home service
    homeService = HomeService();
    _getBanner();
    super.initState();
  }

  _getBanner() async {
    listBanner = await homeService?.getBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings?.storeName,
        ),
        backgroundColor: primaryColor,
      ),
      drawer: const HomeDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            banner(),
          ],
        ),
      ),
    );
  }

  Widget banner() {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0),
      items: ["1.png", "2.png", "3.png", "4.png"].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(color: primaryColor),
              child: Image.asset(
                "assets/images/banner/$i",
                width: MediaQuery.of(context).size.width,
              ),
            );
          },
        );
      }).toList(),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
