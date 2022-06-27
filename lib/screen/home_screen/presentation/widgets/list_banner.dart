import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/home_screen/presentation/widgets/item_banner.dart';

class ListBanner extends StatelessWidget {
  final List<String>? banner;

  const ListBanner({Key? key, required this.banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ratio = (kIsWeb) ? .4 : .2;
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * ratio,
        aspectRatio: 16 / 9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: banner?.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return ItemBanner(
              image: image,
            );
          },
        );
      }).toList(),
    );
  }
}
