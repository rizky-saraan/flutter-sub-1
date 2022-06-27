import '../models/home_banner.dart';
import '../models/product.dart';

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

  Future<List<Product>> getListProduct() async {
    var listProduct = [
      Product(
          id: "1",
          name: "Kaos 30s Red",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/red-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "2",
          name: "Kaos 30s Green",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/green-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "3",
          name: "Kaos 30s Purple",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/purple-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "4",
          name: "Kaos 30s Blue",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/cobalt-blue-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "5",
          name: "Purse with shoulder strap Brown",
          price: "250000",
          image:
              "https://burst.shopifycdn.com/photos/brown-purse-with-shoulder-strap.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "6",
          name: "Pair of navy blue skate shoes",
          price: "15000",
          image:
              "https://burst.shopifycdn.com/photos/pair-of-navy-blue-skate-shoes.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "7",
          name: "Braided iphone cable black",
          price: "45000",
          image:
              "https://burst.shopifycdn.com/photos/black-braided-iphone-cable.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "8",
          name: "Swim shorts",
          price: "105000",
          image:
              "https://burst.shopifycdn.com/photos/swim-shorts.jpg?width=925&format=pjpg&exif=1&iptc=1"),
    ];

    return listProduct;
  }
}
