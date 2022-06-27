import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/product/presentation/widgets/mobile/detail_product_desc_mobile.dart';

import '../../../../home_screen/data/models/product.dart';
import 'detail_app_bar.dart';
import 'detail_product_button_mobile.dart';

class BodyDetailMobile extends StatefulWidget {
  final Product? product;

  const BodyDetailMobile({Key? key, this.product}) : super(key: key);

  @override
  State<BodyDetailMobile> createState() => _BodyDetailMobileState();
}

class _BodyDetailMobileState extends State<BodyDetailMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailAppBar(product: widget.product),
          DetailProductDescMobile(product: widget.product),
        ],
      ),
      bottomNavigationBar: const DetailProductButtonMobile(),
    );
  }
}
