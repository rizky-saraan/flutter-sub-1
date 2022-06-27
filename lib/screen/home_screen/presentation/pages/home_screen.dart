import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/widgets/custom_app_bar.dart';

import '../../data/models/product.dart';
import '../../domain/services/home_service.dart';
import '../widgets/grid_product.dart';
import '../widgets/list_banner.dart';

class HomeScreen extends StatefulWidget {
  final String? title;

  const HomeScreen({Key? key, this.title}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  HomeService? homeService; //declare home service
  List<String>? listBanner = []; //declare list banner
  List<Product>? listProduct = []; //declare list banner

  @override
  void initState() {
    //initialize home service
    homeService = HomeService();
    _getBanner();
    _getListProduct();
    super.initState();
  }

  _getBanner() async {
    var banner = await homeService?.getBanner();
    listBanner = banner!.map((e) => e.image.toString()).toList();
  }

  _getListProduct() async {
    listProduct = await homeService?.getListProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListBanner(banner: listBanner ?? []),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              GridProduct(
                listProduct: listProduct,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
