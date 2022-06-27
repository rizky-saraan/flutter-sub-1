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
          description: "- Type : Tshirt \n"
              "- Material : Cotton Combed 30s\n"
              "- Color : Red\n"
              "- Bentuk kerah : Kerah Bulat\n"
              "- Detail : Motif Polos\n"
              "- Bentuk lengan : Lengan pendek\n",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/red-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "2",
          name: "Kaos 30s Green",
          description: "- Type : Tshirt \n"
              "- Material : Cotton Combed 30s\n"
              "- Color : Green\n"
              "- Bentuk kerah : Kerah Bulat\n"
              "- Detail : Motif Polos\n"
              "- Bentuk lengan : Lengan pendek\n",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/green-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "3",
          name: "Kaos 30s Purple",
          description: "- Type : Tshirt \n"
              "- Material : Cotton Combed 30s\n"
              "- Color : Purple\n"
              "- Bentuk kerah : Kerah Bulat\n"
              "- Detail : Motif Polos\n"
              "- Bentuk lengan : Lengan pendek\n",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/purple-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "4",
          name: "Kaos 30s Blue",
          description: "- Type : Tshirt \n"
              "- Material : Cotton Combed 30s\n"
              "- Color : Blue\n"
              "- Bentuk kerah : Kerah Bulat\n"
              "- Detail : Motif Polos\n"
              "- Bentuk lengan : Lengan pendek\n",
          price: "75000",
          image:
              "https://burst.shopifycdn.com/photos/cobalt-blue-t-shirt.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "5",
          name: "Purse with shoulder strap Brown",
          description: "- Ukuran : 28x9x21 cm \n"
              "- Color : Brown\n"
              "- Free : dustbag guess\n"
              "- Penutup : turn-lock\n"
              "- Tersedia : tali panjang\n",
          price: "250000",
          image:
              "https://burst.shopifycdn.com/photos/brown-purse-with-shoulder-strap.jpg?width=925&format=pjpg&exif=1&iptc=1"),
      Product(
          id: "6",
          name: "DORKS SKATE SERIES",
          description: "DORKS SKATE SERIES BRAND LOCAL OF INDONESIA\n"
              "MATERIAL:\n"
              "- Premium \n"
              "- Ultralite Foam Insole\n"
              "- Premium Rubber\n"
              "- Perpaduan canvas dan suede.\n",
          price: "1099000",
          image:
              "https://images.tokopedia.net/img/cache/900/VqbcmM/2022/4/1/f627aa4e-3aca-4f47-853c-adc4912ab953.png"),
      Product(
          id: "7",
          description:
              "The CT-IV was originally designed for skateboarding in the late 90s and became one of the best-selling skate shoes of all time. Now the CT-IV has been re-released and re-imagined with new limited edition colours, materials.\n"
              "The CT-IV Classic features Globe's Nitrocel™ airbag sole, step-in sock liner, TPR ollie inserts and heel pull loop.\n\n\n"
              "Ready Size 9, 10, 11",
          name: "Sepatu Globe Original",
          price: "1595000",
          image:
              "https://images.tokopedia.net/img/cache/900/product-1/2019/9/21/58663618/58663618_d9368754-b8eb-48df-875f-b06cd13b2362_711_711"),
      Product(
          id: "8",
          name: "Nike Air Jordan 1",
          price: "1799000",
          description: "Nike Air Jordan 1 Retro High Dark Mocha readystock!\n\n"
              "Size available :\n"
              "36 EUR - 5.5US - 22.5 cm\n"
              "37.5 EUR - 6.5 US - 23.5 cm\n"
              "38 EUR - 7 US - 24 cm\n"
              "39 EUR - 8 US - 24.5 cm\n"
              "40 EUR - 7 US - 25 cm\n"
              "41 EUR - 8 US - 26 cm\n"
              "42 EUR - 8.5 US - 26.5 cm\n"
              "43 EUR - 9.5 US - 27.5 cm\n"
              "44 EUR - 10 US - 28 cm\n"
              "45 EUR - 11 US - 29 cm\n"
              "46 EUR - 12 US - 30 cm\n",
          image:
              "https://images.tokopedia.net/img/cache/900/VqbcmM/2021/8/31/93c75ce2-7042-45ab-bfbe-ed469fa6c496.jpg"),
    ];

    return listProduct;
  }
}
