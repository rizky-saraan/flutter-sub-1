import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utility/colors.dart';
import '../../../../home_screen/data/models/product.dart';
import '../favorite_button.dart';

class DetailProductImageWeb extends StatefulWidget {
  final Product? product;

  const DetailProductImageWeb({Key? key, this.product}) : super(key: key);

  @override
  State<DetailProductImageWeb> createState() => _DetailProductImageWebState();
}

class _DetailProductImageWebState extends State<DetailProductImageWeb> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: greyColor,
              width: 1,
            ),
          ),
          child: Hero(
            tag: widget.product?.id ?? "",
            child: Image.network(
              height: 400,
              width: MediaQuery.of(context).size.width * 0.4,
              widget.product?.image ?? "",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 40,
          bottom: 30,
          child: FavoriteButton(
            size: 32.0,
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
        ),
      ],
    );
  }
}
