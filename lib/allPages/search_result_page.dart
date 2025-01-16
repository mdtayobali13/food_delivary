import 'package:flutter/material.dart';
import 'package:food_delivary/widget/categorises_items.dart';
import 'package:food_delivary/widget/items_widget.dart';
import 'package:food_delivary/widget/profile_app_bar.dart';
import 'package:food_delivary/widget/search_food_card.dart';
import 'package:food_delivary/widget/searchbox_widget.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBoxWidget(),
                SizedBox(height: 15),
                ItemsWidget(title: "Search results", more: "See More"),
                SizedBox(height: 15),
                SearchFoodCard(),
                ItemsWidget(title: "Neighbour's Search", more: "More"),
                CategorisesItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


