import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurStyle: BlurStyle.outer,
                offset: Offset(4.0, 4.0),
                blurRadius: 15)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$19.99",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "Check out",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width:20,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Icon(Icons.delete_outline, color: Colors.red,size: 30,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}