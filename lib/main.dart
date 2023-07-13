import 'package:flutter/material.dart';
import 'package:spare_parts/screens/detail_screen.dart';

void main() => runApp(const SparePartApp());

class SparePartApp extends StatelessWidget {
  const SparePartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham'),
      home: const SparePart(),
    );
  }
}

class SparePart extends StatelessWidget {
  const SparePart({super.key});

  @override
  Widget build(BuildContext context) {
    const productList = [
                  ProductDetail(productName: "Belt Tightener Assembly", productPrice: "₦ 34,800", imageUrl: "lib/assets/images/BeltTightening.png",iconImageUrl: "lib/assets/images/add-cart.png",cardColor: "0xffFDF6E8", sparePartType: "Engine", descriptionList: "Specially designed & precisely manufactured engine parts to enhance the life mahindra empower engine and better fuel efficiency.", ),
                  ProductDetail(productName: "Ball Joint M10 RH", productPrice: "₦ 45,000", imageUrl: "lib/assets/images/BallJoint.png",iconImageUrl: "lib/assets/images/add-cart.png",cardColor: "0xffFFE1D6", sparePartType: "Gear Mechanism", descriptionList: "Ball joints of your front suspension provide pivoting movement between the steering knuckles and control arms to provide a safe and smooth ride.",),   
                  ProductDetail(productName: "Belt Tightener Assembly", productPrice: "₦ 48,000", imageUrl: "lib/assets/images/BeltTightening.png",iconImageUrl: "lib/assets/images/add-cart.png",cardColor: "0xffD6FFEB", sparePartType: "Engine", descriptionList: "Specially designed & precisely manufactured engine parts to enhance the life mahindra empower engine and better fuel efficiency. ", ),   
                  ProductDetail(productName: "Ball Joint M10 RH", productPrice: "₦ 50,000", imageUrl: "lib/assets/images/BallJoint.png",iconImageUrl: "lib/assets/images/add-cart.png",cardColor: "0xffdbd6ff", sparePartType: "Gear Mechanism", descriptionList: " Ball joints of your front suspension provide pivoting movement between the steering knuckles and control arms to provide a safe and smooth ride.",),   

                ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('spare parts', style: TextStyle(fontFamily: 'Gotham', fontSize: 25.0),), titleTextStyle: const TextStyle(color: Color(0xff453885)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Image(image: AssetImage('lib/assets/images/icon.png')),
            onPressed: () {
            },
          ),
       ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Image(image: AssetImage('lib/assets/images/search_icon.png')), label: ""),
        BottomNavigationBarItem(icon: Image(image: AssetImage('lib/assets/images/cart.png')), label: ""),     
        BottomNavigationBarItem(icon: Image(image: AssetImage('lib/assets/images/bookmark-white.png')), label: ""),    
        BottomNavigationBarItem(icon: Image(image: AssetImage('lib/assets/images/user.png')), label: ""),
      ]),
      body: const Column(
        children: [ 
          Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
           // style: TextStyle(backgroundColor: Color(0xff#FDF6E8)),           
              decoration: InputDecoration(
                filled: true,
                fillColor:Color(0xffF7F7F7),
               // border: InputBorder.none,
                border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(13)),
                borderSide: BorderSide.none),
                hintText: 'Type here to search',
                hintStyle: TextStyle(fontSize: 12,color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
              
            ),
        ),  
             
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0,),
            child: Row(
              children: [
                Products(productName :"Volvo", imageUrl: 'lib/assets/images/volvo.png', ),
                Products(productName :"Volvo FMX", imageUrl: 'lib/assets/images/volvofmx.png', ),
                Products(productName :"Volvo Trucks", imageUrl: 'lib/assets/images/volvo.png', ),  
                Products(productName :"Ashok", imageUrl: 'lib/assets/images/volvofmx.png', ),      
              ],
            ),
          ),
        ), 
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: productList,
              ),
            ),
          ),
        ),
        ],
        
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,required this.productName,required this.productPrice, required this.imageUrl,
    required this.iconImageUrl, required this.cardColor, required this.sparePartType, required this.descriptionList,
  });

  final  String productName; 
  final String imageUrl;
  final String productPrice;
  final String iconImageUrl;
  final String cardColor;
  final String sparePartType;
  final String descriptionList;


  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: () => {
        // print(productName),
        //  print(context),
           Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(productDetail: ProductDetail(productName: productName, productPrice: productPrice, imageUrl: imageUrl, iconImageUrl: iconImageUrl, cardColor: cardColor, sparePartType: sparePartType, descriptionList: descriptionList,),),
        
          ),
          
        )
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SizedBox(
          width: 400,
          height: 210,
          child: Card(
              shape: const  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(13))),
              color: Color(int.parse(cardColor)),
            child: Padding(
             padding: const EdgeInsets.only(left:20.0, top: 10.0, right: 10.0, bottom:30.0),
              child: Row(children: [
                Expanded(
                  child: Column(
                    children: [                 
                         Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child:   Expanded(child: Text( productName, style: const TextStyle(height: 1.1,  fontSize: 23.0, fontWeight: FontWeight.w300),)),
                        ),
                 Padding(
                            padding:  EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                             const     Text('Type', style: TextStyle(color: Color(0xff9A9A9A), fontWeight: FontWeight.bold,fontSize: 12.0),),
              Text(sparePartType, style: const TextStyle( fontWeight: FontWeight.bold,fontSize: 12.0)),
                                         
                              ],),
                          ),
                         Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                               Text(productPrice, style: const TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
                         Image(image: AssetImage(iconImageUrl),
                         width: 28.0,
                         height: 35.0,                                     ),
                         
                            ],),     
                    ],
                     
                             ),
                ),
                Expanded(child: Image(image: AssetImage(imageUrl),)),    
                  const  Padding(
              padding: EdgeInsets.only(bottom: 120.0, ),
              child: Image(image: AssetImage("lib/assets/images/bookmark-white.png"), width: 15.0, height: 15.0,),
                    ),
                    
                ],),
            ),
          ),
        ),
      ),
    );
  }
}

class Products extends StatelessWidget {
  const Products({
    super.key,required this.productName,required this.imageUrl,
  });

  final  String productName; 
   final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 200,
      height: 100,
      child: Card( 
        
       child: Padding(
         padding: const EdgeInsets.only(left:10.0, top: 30.0, right: 5.0, bottom: 30),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Image(image: AssetImage(imageUrl),),
                 Text(productName, style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),),
                const Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(0, 0, 0, 0.5)),
       
          ],
         ),
       ) ,        
      ),
    );
  }
}
