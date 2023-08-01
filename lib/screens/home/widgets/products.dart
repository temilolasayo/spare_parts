import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.productName,
    required this.imageUrl,
  });

  final String productName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      margin: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(imageUrl),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            productName,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              fontSize: 12,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Icon(Icons.keyboard_arrow_down,
              color: Color.fromRGBO(0, 0, 0, 0.2)),
        ],
      ),
    );
  }
}
