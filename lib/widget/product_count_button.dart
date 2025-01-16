import 'package:flutter/material.dart';
import 'package:food_delivary/urls/asset_urls.dart';

class ProductCountButton extends StatefulWidget {
  const ProductCountButton({
    super.key,
  });

  @override
  State<ProductCountButton> createState() => _ProductCountButtonState();
}

class _ProductCountButtonState extends State<ProductCountButton> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "2.5 Km . 5 Mins",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Shrimps Pasta",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                width: 110,
              ),
              GestureDetector(
                onTap: () {
                   if(val!=0){
                     val--;
                   }
                   setState(() {

                   });
                },
                child: Container(
                  height: 30,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(4, 4),
                            blurRadius: 10
                        )
                      ]
                  ),
                  child: Image.asset(AssetUrls.minusPng),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4, 4),
                          blurRadius: 15
                      )
                    ]
                ),
                child: Center(
                  child: Text(
                    "$val",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  val++;
                  setState(() {

                  });
                },
                child: Container(
                  height: 30,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4, 4),
                          blurRadius: 15
                        )
                      ]
                  ),
                  child: Image.asset(AssetUrls.plusPng),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}