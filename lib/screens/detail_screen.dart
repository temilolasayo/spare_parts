import 'package:flutter/material.dart';
import 'package:spare_parts/main.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.productDetail});

  final ProductDetail productDetail;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff453885),
      padding: const EdgeInsets.only(left: 50, right: 50),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          productDetail.productName,
          style: const TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
        ),
        titleTextStyle: const TextStyle(color: Color(0xff453885)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Image(
              image: AssetImage('lib/assets/images/bookmark-purple.png'),
              width: 15,
              height: 15,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              color: Color(int.parse(productDetail.cardColor)),
              child: Expanded(
                child: Image(
                  image: AssetImage(productDetail.imageUrl),
                  width: 500,
                  height: 340,
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productDetail.productPrice,
                          style: const TextStyle(
                              fontSize: 32.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                        Image(
                          image: AssetImage(productDetail.iconImageUrl),
                          width: 28.0,
                          height: 35.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Type',
                          style: TextStyle(
                              color: Color(0xff9A9A9A),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                        Text(productDetail.sparePartType,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0)),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xff9A9A9A),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                  Text(productDetail.descriptionList,
                      style: const TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 18.0)),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Type',
                          style: TextStyle(
                              color: Color(0xff9A9A9A),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                        Text(productDetail.sparePartType,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SparePartApp()))
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 50.0,
                            color: Color(0xff453885),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: raisedButtonStyle,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text('Buy now'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
