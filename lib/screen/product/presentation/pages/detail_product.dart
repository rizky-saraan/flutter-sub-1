import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/product/presentation/widgets/web/body_detail_web.dart';

import '../../../home_screen/data/models/product.dart';
import '../widgets/mobile/body_detail_mobile.dart';

class DetailProduct extends StatefulWidget {
  final Product? product;

  const DetailProduct({Key? key, this.product}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return BodyDetailWeb(
            product: widget.product,
          );
        } else {
          return BodyDetailMobile(
            product: widget.product,
          );
        }
      },
    );
  }
}
