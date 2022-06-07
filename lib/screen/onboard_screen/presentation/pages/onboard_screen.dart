import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/utility/dimens.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushNamed(context, "/home");
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: Theme.of(context).textTheme.headline1!,
      bodyTextStyle: Theme.of(context).textTheme.bodyText2!,
      bodyPadding: const EdgeInsets.fromLTRB(edgePage, 0.0, 16.0, edgePage),
      pageColor: whiteColor,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Add To Cart",
          body: "Masukan semua barang yang kalian inginkan kedalam keranjang",
          image: _buildImage('add_to_cart.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Checkout",
          body: "Lakukan checkout semua pesanan kalian",
          image: _buildImage('checkout.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Payment",
          body: "Lakukan Pembayaran dengan berbagai metode pembayaran",
          image: _buildImage('payment.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Success",
          body: "Pembayaran sangat mudah dan simple",
          image: _buildImage('success_payment.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Delivery",
          body: "Barang sampai ditujuan dengan aman dan tepat waktu",
          image: _buildImage('shipping_delivery.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        _onIntroEnd(context);
      },
      showBackButton: false,
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: Text("Done", style: Theme.of(context).textTheme.headline6),
    );
  }
}
