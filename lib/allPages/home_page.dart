import 'package:flutter/material.dart';
import 'package:food_delivary/widget/categorises_items.dart';
import 'package:food_delivary/widget/main_bottom_navigetor_bar.dart';
import 'package:food_delivary/widget/popular_item.dart';
import 'package:food_delivary/widget/profile_app_bar.dart';
import 'package:food_delivary/widget/searchbox_widget.dart';

import '../widget/items_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  profileAppBar,
        body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning,",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "Bessie Cooper",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 8,
                ),
                SearchBoxWidget(),
                SizedBox(
                  height: 15,
                ),
                ItemsWidget(
                  title: 'Categorises',
                  more: 'More',
                ),
                SizedBox(
                  height: 10,
                ),
                CategorisesItem(),
                SizedBox(
                  height: 5,
                ),
                ItemsWidget(
                  title: 'Popular',
                  more: 'More',
                ),
                SizedBox(
                  height: 10,
                ),
                PopularItem()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MainBottomNavigationBar(),
    );
  }
}
