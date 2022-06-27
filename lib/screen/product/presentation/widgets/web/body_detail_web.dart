import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/widgets/custom_app_bar.dart';
import 'package:flutter_sub_1/screen/product/presentation/widgets/web/detail_product_button_web.dart';
import 'package:flutter_sub_1/screen/product/presentation/widgets/web/detail_product_desc_web.dart';

import '../../../../home_screen/data/models/product.dart';
import 'detail_product_image_web.dart';

class BodyDetailWeb extends StatefulWidget {
  final Product? product;

  const BodyDetailWeb({Key? key, this.product}) : super(key: key);

  @override
  State<BodyDetailWeb> createState() => _BodyDetailWebState();
}

class _BodyDetailWebState extends State<BodyDetailWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: true,
        title: widget.product?.name ?? "",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailProductImageWeb(product: widget.product),
              const SizedBox(width: 20),
              DetailProductDescWeb(product: widget.product),
              const DetailProductButtonWeb(),
            ],
          ),
        ),
      ),
    );
  }
}
