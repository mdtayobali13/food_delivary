import 'package:flutter/material.dart';
import 'package:food_delivary/widget/payment_button.dart';
import 'package:food_delivary/widget/product_count_button.dart';
import 'package:food_delivary/widget/product_view.dart';
import 'package:food_delivary/widget/profile_app_bar.dart';

class FoodReviewScreen extends StatefulWidget {
  const FoodReviewScreen({super.key});

  @override
  State<FoodReviewScreen> createState() => _FoodReviewScreenState();
}

class _FoodReviewScreenState extends State<FoodReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProductViewWidget(),
                  ProductCountButton(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "4.8",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 20),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "5k+ Rating",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Vulputate tincidunt convallis pulvinar egestas \nconsequat, aliquam lectus nibh. Leo purus nisi, nibh \n condimentum aliquam eu quis. Ultrices arcu \n pharetra. \n \n Convallis pulvinar egestas consequat",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PaymentButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


