import 'package:flutter/material.dart';

import '../urls/asset_urls.dart';

class ProductViewWidget extends StatelessWidget {
  const ProductViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            Container(
              height: 380,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.amberAccent.withAlpha(30),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
        Positioned(
          right: 10,
          top: 10,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.favorite_outlined,
                color: Colors.red,
                size: 40,
              ),
            ),
          ),
        ),
        Positioned(
          top: 40,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200)),
            child: Center(child: Image.asset(
              AssetUrls.viewSPhoto,
              fit: BoxFit.cover,
            )),
          ),
        ),
      ],
    );
  }
}