import 'package:flutter/material.dart';
import 'package:seven_days_flutter/widgets/theme.dart';

class CartList extends StatelessWidget {
  final double price;
  final int amount;
  final String foodName;
  final String imageUrl;
  final String place;

  const CartList({
    super.key,
    required this.price,
    required this.amount,
    required this.foodName,
    required this.imageUrl,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                width: 80,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: randomListHeadingText,
                  ),
                  Text(
                    place,
                    style: randomListDescText,
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12,
                      elevation: 0,
                      shadowColor: Colors.white,
                      minimumSize: const Size(22, 22),
                      shape: const CircleBorder(),
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                      ),
                    ),
                    child: const Text('-'),
                    onPressed: () => {},
                  ),
                  Text(
                    amount.toString(),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(22, 22),
                      shape: const CircleBorder(),
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                      ),
                    ),
                    child: const Text('+'),
                    onPressed: () => {},
                  ),
                ],
              ),
              Text('\$$price', style: randomListPriceText),
            ],
          ),
        ],
      ),
    );
  }
}
