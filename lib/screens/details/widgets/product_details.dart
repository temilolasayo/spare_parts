import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spare_parts/screens/details/details.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.imageUrl,
    required this.iconImageUrl,
    required this.cardColor,
    required this.sparePartType,
    required this.descriptionList,
  });

  final String productName;
  final String imageUrl;
  final String productPrice;
  final String iconImageUrl;
  final String cardColor;
  final String sparePartType;
  final String descriptionList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        // print(productName),
        //  print(context),
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              productDetail: ProductDetail(
                productName: productName,
                productPrice: productPrice,
                imageUrl: imageUrl,
                iconImageUrl: iconImageUrl,
                cardColor: cardColor,
                sparePartType: sparePartType,
                descriptionList: descriptionList,
              ),
            ),
          ),
        )
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
            margin: const EdgeInsets.only(
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: Color(int.parse(cardColor)),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                          height: 1.1,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Type',
                            style: TextStyle(
                                color: Color(0xff9A9A9A),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            sparePartType,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Color.fromRGBO(0, 0, 0, 0.5)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            productPrice,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18.0, 
                                fontFamily: ''),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Image(
                            image: AssetImage(iconImageUrl),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 150.0,
                    width: 150.0,
                    child: Image.asset(
                      imageUrl,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: SvgPicture.asset(
              "assets/svgs/bookmark.svg",
              width: 15.0,
              height: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}

