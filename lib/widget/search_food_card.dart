import 'package:flutter/material.dart';

import '../urls/asset_urls.dart';

class SearchFoodCard extends StatelessWidget {
  const SearchFoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  elevation: 5,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 100), // Space for the positioned image
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Vegetable Curry",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Found in 15 nearby restaurants",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.grey, fontSize: 14),
                                ),
                                SizedBox(height:5),
                                Row(
                                  children: [
                                    Text(
                                      "\$5.99 /person",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "4.7",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Positioned Circular Image
                Positioned(
                  top: -20,
                  left: 20,
                  child: ClipOval(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueGrey[50],
                      child: Image.asset(
                        AssetUrls.searchFood, // Replace with your image asset
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
