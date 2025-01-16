import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivary/allPages/search_result_page.dart';
import 'package:food_delivary/urls/asset_urls.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search for Lunch",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14
                  ),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 30,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            )),
        SizedBox(
          width: 15.0,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultPage(),));
          },
          child: SvgPicture.asset(
            AssetUrls.sliderIcon,
            height: 25,
            width: 25,
          ),
        ),
      ],
    );
  }
}