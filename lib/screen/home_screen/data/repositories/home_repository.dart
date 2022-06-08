import '../models/home_banner.dart';

class HomeRepository {
  Future<List<HomeBanner>> getBanner() async {
    var listBanner = [
      HomeBanner(id: "1", image: "1.png"),
      HomeBanner(id: "2", image: "2.png"),
      HomeBanner(id: "3", image: "3.png"),
      HomeBanner(id: "4", image: "4.png"),
    ];

    return listBanner;
  }
}
