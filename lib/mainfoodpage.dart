// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery_app/cart.dart';
import 'package:food_delivery_app/settings.dart';
import 'package:food_delivery_app/widget/big_text.dart';
import 'package:food_delivery_app/widget/icon_and_text.dart';
import 'package:food_delivery_app/widget/small_text.dart';

import 'dimensions.dart';

class MainFoodPage extends StatelessWidget {
  String name;
  String email;
  String mobile;
  String password;

  MainFoodPage(this.name, this.email, this.mobile, this.password, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          margin: EdgeInsets.only(left: 0),
          child: Text("Hii, $name"),
        ),
        elevation: 4.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            Settings(name, email, mobile, password))));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              //shows image in the row -> Image Section
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/samosa.png"))),
              ),
              //text Container
              Expanded(
                child: Container(
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Name of the food
                        BigText(
                          text: "Samosa",
                          pageno: 1,
                          name: name,
                          email: email,
                          mobile: mobile,
                          password: password,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Description of the food
                        SmallText(
                          text: "With Indian Characteristics",
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Small icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: const Color(0xFFFFC107)),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.7km",
                                iconColor: const Color(0xFF0277BD)),
                            IconAndTextWidget(
                                icon: Icons.schedule,
                                text: "30 mins",
                                iconColor: const Color(0xFFfcab88)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //shows image in the row -> Image Section
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/pizza.png"))),
              ),
              //text Container
              Expanded(
                child: Container(
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Name of the food
                        BigText(
                          text: "Pizza",
                          pageno: 2,
                          name: name,
                          email: email,
                          mobile: mobile,
                          password: password,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Description of the food
                        SmallText(
                          text: "With Indian Characteristics",
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Small icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: const Color(0xFFFFC107)),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.7km",
                                iconColor: const Color(0xFF0277BD)),
                            IconAndTextWidget(
                                icon: Icons.schedule,
                                text: "45 mins",
                                iconColor: const Color(0xFFfcab88)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //shows image in the row -> Image Section
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/burger.png"))),
              ),
              //text Container
              Expanded(
                child: Container(
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Name of the food
                        BigText(
                          text: "Burger",
                          pageno: 3,
                          name: name,
                          email: email,
                          mobile: mobile,
                          password: password,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Description of the food
                        SmallText(
                          text: "With Indian Characteristics",
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Small icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: const Color(0xFFFFC107)),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.7km",
                                iconColor: const Color(0xFF0277BD)),
                            IconAndTextWidget(
                                icon: Icons.schedule,
                                text: "42 mins",
                                iconColor: const Color(0xFFfcab88)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //shows image in the row -> Image Section
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/momo.png"))),
              ),
              //text Container
              Expanded(
                child: Container(
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Name of the food
                        BigText(
                          text: "Momos",
                          pageno: 4,
                          name: name,
                          email: email,
                          mobile: mobile,
                          password: password,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Description of the food
                        SmallText(
                          text: "With Indian Characteristics",
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Small icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: const Color(0xFFFFC107)),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.7km",
                                iconColor: const Color(0xFF0277BD)),
                            IconAndTextWidget(
                                icon: Icons.schedule,
                                text: "25 mins",
                                iconColor: const Color(0xFFfcab88)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //shows image in the row -> Image Section
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/ice_cream.png"))),
              ),
              //text Container
              Expanded(
                child: Container(
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Name of the food
                        BigText(
                          text: "Ice Cream",
                          pageno: 5,
                          name: name,
                          email: email,
                          mobile: mobile,
                          password: password,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Description of the food
                        SmallText(
                          text: "With Indian Characteristics",
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Small icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: const Color(0xFFFFC107)),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.7km",
                                iconColor: const Color(0xFF0277BD)),
                            IconAndTextWidget(
                                icon: Icons.schedule,
                                text: "25 mins",
                                iconColor: const Color(0xFFfcab88)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //shows image in the row -> Image Section
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/hot_dog.png"))),
              ),
              //text Container
              Expanded(
                child: Container(
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Name of the food
                        BigText(
                          text: "Hot Dog",
                          pageno: 6,
                          name: name,
                          email: email,
                          mobile: mobile,
                          password: password,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Description of the food
                        SmallText(
                          text: "With Indian Characteristics",
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        //Small icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: const Color(0xFFFFC107)),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.7km",
                                iconColor: const Color(0xFF0277BD)),
                            IconAndTextWidget(
                                icon: Icons.schedule,
                                text: "40 mins",
                                iconColor: const Color(0xFFfcab88)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Cart())));
        },
        child: Icon(Icons.shopping_cart_outlined),
      ),
    ));
  }
}
