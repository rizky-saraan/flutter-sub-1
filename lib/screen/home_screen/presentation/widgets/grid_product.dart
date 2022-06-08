import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';

class GridProduct extends StatelessWidget {
  GridProduct({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/product-default.png",
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  myProducts[index]["name"],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
