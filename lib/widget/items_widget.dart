import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({
    required this.title,
    required this.more,
    super.key,
  });

  String title;
  String more;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            more,
            style: TextStyle(color: Colors.grey.shade500),
          ),
        ),
      ],
    );
  }
}
