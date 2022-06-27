import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';

import '../../../home_screen/data/models/product.dart';
import 'detail_product_image.dart';
import 'favorite_button.dart';

class DetailAppBar extends StatefulWidget {
  final Product? product;
  final bool? centerTitle;

  const DetailAppBar({
    Key? key,
    this.product,
    this.centerTitle,
  }) : super(key: key);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        widget.product?.name ?? "",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        FavoriteButton(
          press: () {
            setState(() {
              isFavorite = !isFavorite;
              Flushbar(
                message: (isFavorite)
                    ? "Barang berhasil disimpan diwishlist!"
                    : "Barang telah dihapus dari Wishlist",
                duration: const Duration(seconds: 3),
                isDismissible: false,
                margin: const EdgeInsets.all(8),
                borderRadius: BorderRadius.circular(8),
                flushbarStyle: FlushbarStyle.FLOATING,
                mainButton: OutlinedButton(
                  onPressed: () {
                    if (isFavorite) {
                      //goto wishlist page
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    (isFavorite) ? "Lihat" : "Oke",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: whiteColor),
                  ),
                ),
              ).show(context);
            });
          },
          isFavorite: isFavorite,
        ),
      ],
      backgroundColor: primaryColor,
      centerTitle: widget.centerTitle,
      expandedHeight: 200.0,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: DetailProductImage(
          imagePath: widget.product?.image ?? "",
        ),
      ),
    );
  }
}
