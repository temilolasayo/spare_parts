import 'package:flutter/material.dart';
import 'package:spare_parts/screens/details/widgets/product_details.dart';
import 'package:spare_parts/screens/home/widgets/products.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final productList = [
    const ProductDetail(
      productName: "Belt Tightener Assembly",
      productPrice: "₦ 34,800",
      imageUrl: "assets/images/BeltTightening.png",
      iconImageUrl: "assets/images/add-cart.png",
      cardColor: "0xffFDF6E8",
      sparePartType: "Engine",
      descriptionList:
          "Specially designed & precisely manufactured engine parts to enhance the life mahindra empower engine and better fuel efficiency.",
    ),
    const ProductDetail(
      productName: "Ball Joint M10 RH",
      productPrice: "₦ 45,000",
      imageUrl: "assets/images/BallJoint.png",
      iconImageUrl: "assets/images/add-cart.png",
      cardColor: "0xffFFE1D6",
      sparePartType: "Gear Mechanism",
      descriptionList:
          "Ball joints of your front suspension provide pivoting movement between the steering knuckles and control arms to provide a safe and smooth ride.",
    ),
    const ProductDetail(
      productName: "Belt Tightener Assembly",
      productPrice: "₦ 48,000",
      imageUrl: "assets/images/BeltTightening.png",
      iconImageUrl: "assets/images/add-cart.png",
      cardColor: "0xffD6FFEB",
      sparePartType: "Engine",
      descriptionList:
          "Specially designed & precisely manufactured engine parts to enhance the life mahindra empower engine and better fuel efficiency. ",
    ),
    const ProductDetail(
      productName: "Ball Joint M10 RH",
      productPrice: "₦ 50,000",
      imageUrl: "assets/images/BallJoint.png",
      iconImageUrl: "assets/images/add-cart.png",
      cardColor: "0xffdbd6ff",
      sparePartType: "Gear Mechanism",
      descriptionList:
          "Ball joints of your front suspension provide pivoting movement between the steering knuckles and control arms to provide a safe and smooth ride.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF7F7F7),
              //  fillColor: Color.fromRGBO(247, 247, 247, 1),
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  borderSide: BorderSide.none),
              hintText: 'Type here to search',
              hintStyle:
                  TextStyle(fontSize: 12, color: Color.fromRGBO(0, 0, 0, 0.2)),
            ),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 16.0,
          ),
          child: Row(
            children: [
              Products(
                productName: "Volvo",
                imageUrl: 'assets/images/volvo.png',
              ),
              Products(
                productName: "Volvo FMX",
                imageUrl: 'assets/images/volvo.png',
              ),
              Products(
                productName: "Volvo Trucks",
                imageUrl: 'assets/images/volvo.png',
              ),
              Products(
                productName: "Ashok",
                imageUrl: 'assets/images/volvo.png',
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
            ),
            children: [
              ...productList,
            ],
          ),
        ),
      ],
    );
  }
}


