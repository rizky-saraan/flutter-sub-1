import 'package:flutter_sub_1/screen/home_screen/data/models/home_banner.dart';

import '../../data/models/product.dart';
import '../../data/repositories/home_repository.dart';

class HomeService {
  HomeRepository? _repository;

  HomeService() {
    _repository = HomeRepository();
  }

  Future<List<HomeBanner>> getBanner() async {
    List<HomeBanner> listBanner = await _repository!.getBanner();
    return listBanner;
  }

  Future<List<Product>> getListProduct() async {
    List<Product> listProduct = await _repository!.getListProduct();
    return listProduct;
  }
}
