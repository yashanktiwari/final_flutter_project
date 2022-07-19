// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/big_text_without_tap.dart';
import 'package:food_delivery_app/widget/small_text.dart';
import 'data.dart';
import 'dimensions.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Your Cart")),
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
                          BigTextWithoutTap(
                            text: "Samosa",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          //Description of the food
                          SmallText(
                            text: "Item Count : ${objData.arr[1]}",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
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
                          BigTextWithoutTap(
                            text: "Pizza",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          //Description of the food
                          SmallText(
                            text: "Item Count : ${objData.arr[2]}",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
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
                          BigTextWithoutTap(
                            text: "Burger",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          //Description of the food
                          SmallText(
                            text: "Item Count : ${objData.arr[3]}",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
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
                          BigTextWithoutTap(
                            text: "Momos",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          //Description of the food
                          SmallText(
                            text: "Item Count : ${objData.arr[4]}",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
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
                          BigTextWithoutTap(
                            text: "Ice Cream",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          //Description of the food
                          SmallText(
                            text: "Item Count : ${objData.arr[5]}",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
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
                          BigTextWithoutTap(
                            text: "Hot Dog",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          //Description of the food
                          SmallText(
                            text: "Item Count : ${objData.arr[6]}",
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF757575),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          padding: EdgeInsets.all(15),
          child: BigTextWithoutTap(
            text:
                "Grand Total = ${(objData.arr[1] * 12) + (objData.arr[2] * 120) + (objData.arr[3] * 60) + (objData.arr[4] * 2) + (objData.arr[5] * 30) + (objData.arr[6] * 40)}",
            color: const Color(0xFFF5F5F5),
          ),
        ),
      ),
    );
  }
}
