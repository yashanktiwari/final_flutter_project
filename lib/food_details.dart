// ignore_for_file: no_logic_in_create_state, must_be_immutable, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_delivery_app/cart.dart';
import 'package:food_delivery_app/dimensions.dart';
import 'package:food_delivery_app/mainfoodpage.dart';
import 'package:food_delivery_app/widget/big_text_without_tap.dart';
import 'package:food_delivery_app/widget/expandable_text_widget.dart';
import 'data.dart';
import 'liked.dart';

class FoodDetails extends StatefulWidget {
  int pageno;
  String name;
  String email;
  String mobile;
  String password;
  FoodDetails(this.pageno, this.name, this.email, this.mobile, this.password,
      {Key? key})
      : super(key: key);

  @override
  State<FoodDetails> createState() =>
      _FoodDetailsState(pageno, name, email, mobile, password);
}

class _FoodDetailsState extends State<FoodDetails> {
  int pageno;
  String name;
  String email;
  String mobile;
  String password;

  int count_samosa = 0;
  int count_pizza = 0;
  int count_hot_dog = 0;
  int count_ice_cream = 0;
  int count_burger = 0;
  int count_momo = 0;

  void _incrementItem() {
    setState(() {
      objData.arr[pageno]++;
    });
  }

  void _decrementItem() {
    setState(() {
      objData.arr[pageno]--;
    });
  }

  void _likeItem() {
    setState(() {
      objLiked.liked[pageno] = !objLiked.liked[pageno];
    });
  }

  _FoodDetailsState(
      this.pageno, this.name, this.email, this.mobile, this.password);

  @override
  Widget build(BuildContext context) {
    return pageno == 1
        ? Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  toolbarHeight: 80,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFfcf4e4),
                        child: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainFoodPage(
                                        name, email, mobile, password)));
                          },
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xFFfcf4e4),
                        child: IconButton(
                          icon: Icon(Icons.shopping_cart_outlined),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()));
                          },
                        ),
                      ),
                    ],
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(20),
                    child: Container(
                      child: Center(
                          child: BigTextWithoutTap(
                        size: Dimensions.font26,
                        text: "Samosa",
                      )),
                      width: double.maxFinite,
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            topLeft: Radius.circular(Dimensions.radius20),
                          )),
                    ),
                  ),
                  pinned: true,
                  backgroundColor: const Color(0xFF0277BD),
                  expandedHeight: 300,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      "images/samosa.png",
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                    child: Column(
                  children: [
                    Container(
                      child: ExpandableTextWidget(
                        text:
                            "McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.",
                      ),
                      margin: EdgeInsets.only(
                          left: Dimensions.width20, right: Dimensions.width20),
                    )
                  ],
                ))
              ],
            ),
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Add and Remove icon with price multiplied by the number
                Container(
                  padding: EdgeInsets.only(
                    left: Dimensions.width20 * 1.25,
                    right: Dimensions.width20 * 1.25,
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {
                            if (objData.arr[pageno] > 0) _decrementItem();
                          },
                          icon: Icon(Icons.remove),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFF0277BD),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      BigTextWithoutTap(
                        size: Dimensions.font24,
                        text: " Rs 12  X  ${objData.arr[pageno]}",
                        color: const Color(0xFF332d2b),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {
                            _incrementItem();
                          },
                          icon: Icon(Icons.add),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFF0277BD),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                //Add to cart button
                Container(
                  height: Dimensions.bottomHeightBar,
                  padding: EdgeInsets.only(
                      top: Dimensions.height30,
                      bottom: Dimensions.height30,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFECEFF1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20 * 2),
                        topRight: Radius.circular(Dimensions.radius20 * 2),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Addition and Substraction symbols
                      Container(
                          padding: EdgeInsets.only(
                              top: Dimensions.height20 / 2,
                              bottom: Dimensions.height20 / 2,
                              left: Dimensions.width20 / 2,
                              right: Dimensions.width20 / 2),
                          margin: EdgeInsets.only(left: Dimensions.width10),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Container(
                              child: IconButton(
                                onPressed: () {
                                  _likeItem();
                                },
                                icon: objLiked.liked[pageno] == false
                                    ? (Icon(
                                        Icons.favorite_outline_outlined,
                                        color: Colors.red,
                                      ))
                                    : (Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )),
                              ),
                            ),
                          )),
                      //Button at the bottom
                      Container(
                        padding: EdgeInsets.only(
                            top: Dimensions.height15,
                            bottom: Dimensions.height15,
                            left: Dimensions.width15,
                            right: Dimensions.width15),
                        child: InkWell(
                          onTap: () {},
                          child: BigTextWithoutTap(
                            text: "Total = Rs ${objData.arr[pageno] * 12}",
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: const Color(0xFF0277BD)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : pageno == 2
            ? Scaffold(
                backgroundColor: Colors.white,
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      toolbarHeight: 80,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFFfcf4e4),
                            child: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainFoodPage(
                                            name, email, mobile, password)));
                              },
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0xFFfcf4e4),
                            child: IconButton(
                              icon: Icon(Icons.shopping_cart_outlined),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cart()));
                              },
                            ),
                          ),
                        ],
                      ),
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(20),
                        child: Container(
                          child: Center(
                              child: BigTextWithoutTap(
                            size: Dimensions.font26,
                            text: "Pizza",
                          )),
                          width: double.maxFinite,
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimensions.radius20),
                                topLeft: Radius.circular(Dimensions.radius20),
                              )),
                        ),
                      ),
                      pinned: true,
                      backgroundColor: const Color(0xFF0277BD),
                      expandedHeight: 300,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.asset(
                          "images/pizza.png",
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: Column(
                      children: [
                        Container(
                          child: ExpandableTextWidget(
                            text:
                                "McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.",
                          ),
                          margin: EdgeInsets.only(
                              left: Dimensions.width20,
                              right: Dimensions.width20),
                        )
                      ],
                    ))
                  ],
                ),
                bottomNavigationBar: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Add and Remove icon with price multiplied by the number
                    Container(
                      padding: EdgeInsets.only(
                        left: Dimensions.width20 * 1.25,
                        right: Dimensions.width20 * 1.25,
                        top: Dimensions.height10,
                        bottom: Dimensions.height10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                if (objData.arr[pageno] > 0) _decrementItem();
                              },
                              icon: Icon(Icons.remove),
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFF0277BD),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          BigTextWithoutTap(
                            size: Dimensions.font24,
                            text: " Rs 120  X  ${objData.arr[pageno]} ",
                            color: const Color(0xFF332d2b),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {
                                _incrementItem();
                              },
                              icon: Icon(Icons.add),
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFF0277BD),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                    ),
                    //Add to cart button
                    Container(
                      height: Dimensions.bottomHeightBar,
                      padding: EdgeInsets.only(
                          top: Dimensions.height30,
                          bottom: Dimensions.height30,
                          left: Dimensions.width20,
                          right: Dimensions.width20),
                      decoration: BoxDecoration(
                          color: const Color(0xFFECEFF1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius20 * 2),
                            topRight: Radius.circular(Dimensions.radius20 * 2),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Addition and Substraction symbols
                          Container(
                            padding: EdgeInsets.only(
                                top: Dimensions.height20 / 2,
                                bottom: Dimensions.height20 / 2,
                                left: Dimensions.width20 / 2,
                                right: Dimensions.width20 / 2),
                            margin: EdgeInsets.only(left: Dimensions.width10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {
                                _likeItem();
                              },
                              icon: objLiked.liked[pageno] == false
                                  ? (Icon(
                                      Icons.favorite_outline_outlined,
                                      color: Colors.red,
                                    ))
                                  : (Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )),
                            ),
                          ),
                          //Button at the bottom
                          Container(
                            padding: EdgeInsets.only(
                                top: Dimensions.height15,
                                bottom: Dimensions.height15,
                                left: Dimensions.width15,
                                right: Dimensions.width15),
                            child: InkWell(
                              onTap: () {},
                              child: BigTextWithoutTap(
                                text: "Total = Rs ${objData.arr[pageno] * 120}",
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                color: const Color(0xFF0277BD)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : pageno == 3
                ? Scaffold(
                    backgroundColor: Colors.white,
                    body: CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          toolbarHeight: 80,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xFFfcf4e4),
                                child: IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MainFoodPage(
                                                name,
                                                email,
                                                mobile,
                                                password)));
                                  },
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: const Color(0xFFfcf4e4),
                                child: IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cart()));
                                  },
                                ),
                              ),
                            ],
                          ),
                          bottom: PreferredSize(
                            preferredSize: Size.fromHeight(20),
                            child: Container(
                              child: Center(
                                  child: BigTextWithoutTap(
                                size: Dimensions.font26,
                                text: "Burger",
                              )),
                              width: double.maxFinite,
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(Dimensions.radius20),
                                    topLeft:
                                        Radius.circular(Dimensions.radius20),
                                  )),
                            ),
                          ),
                          pinned: true,
                          backgroundColor: const Color(0xFF0277BD),
                          expandedHeight: 300,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Image.asset(
                              "images/burger.png",
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                            child: Column(
                          children: [
                            Container(
                              child: ExpandableTextWidget(
                                text:
                                    "McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.",
                              ),
                              margin: EdgeInsets.only(
                                  left: Dimensions.width20,
                                  right: Dimensions.width20),
                            )
                          ],
                        ))
                      ],
                    ),
                    bottomNavigationBar: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Add and Remove icon with price multiplied by the number
                        Container(
                          padding: EdgeInsets.only(
                            left: Dimensions.width20 * 1.25,
                            right: Dimensions.width20 * 1.25,
                            top: Dimensions.height10,
                            bottom: Dimensions.height10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    if (objData.arr[pageno] > 0)
                                      _decrementItem();
                                  },
                                  icon: Icon(Icons.remove),
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF0277BD),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              BigTextWithoutTap(
                                size: Dimensions.font24,
                                text: " Rs 60  X  ${objData.arr[pageno]} ",
                                color: const Color(0xFF332d2b),
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    _incrementItem();
                                  },
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF0277BD),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                        ),
                        //Add to cart button
                        Container(
                          height: Dimensions.bottomHeightBar,
                          padding: EdgeInsets.only(
                              top: Dimensions.height30,
                              bottom: Dimensions.height30,
                              left: Dimensions.width20,
                              right: Dimensions.width20),
                          decoration: BoxDecoration(
                              color: const Color(0xFFECEFF1),
                              borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(Dimensions.radius20 * 2),
                                topRight:
                                    Radius.circular(Dimensions.radius20 * 2),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Addition and Substraction symbols
                              Container(
                                padding: EdgeInsets.only(
                                    top: Dimensions.height20 / 2,
                                    bottom: Dimensions.height20 / 2,
                                    left: Dimensions.width20 / 2,
                                    right: Dimensions.width20 / 2),
                                margin:
                                    EdgeInsets.only(left: Dimensions.width10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius20),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    _likeItem();
                                  },
                                  icon: objLiked.liked[pageno] == false
                                      ? (Icon(
                                          Icons.favorite_outline_outlined,
                                          color: Colors.red,
                                        ))
                                      : (Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )),
                                ),
                              ),
                              //Button at the bottom
                              Container(
                                padding: EdgeInsets.only(
                                    top: Dimensions.height15,
                                    bottom: Dimensions.height15,
                                    left: Dimensions.width15,
                                    right: Dimensions.width15),
                                child: InkWell(
                                  onTap: () {},
                                  child: BigTextWithoutTap(
                                    text:
                                        "Total = Rs ${objData.arr[pageno] * 60}",
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    color: const Color(0xFF0277BD)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : pageno == 4
                    ? Scaffold(
                        backgroundColor: Colors.white,
                        body: CustomScrollView(
                          slivers: [
                            SliverAppBar(
                              automaticallyImplyLeading: false,
                              toolbarHeight: 80,
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: const Color(0xFFfcf4e4),
                                    child: IconButton(
                                      icon: Icon(Icons.clear),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MainFoodPage(name, email,
                                                        mobile, password)));
                                      },
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: const Color(0xFFfcf4e4),
                                    child: IconButton(
                                      icon: Icon(Icons.shopping_cart_outlined),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Cart()));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              bottom: PreferredSize(
                                preferredSize: Size.fromHeight(20),
                                child: Container(
                                  child: Center(
                                      child: BigTextWithoutTap(
                                    size: Dimensions.font26,
                                    text: "Momo",
                                  )),
                                  width: double.maxFinite,
                                  padding: EdgeInsets.only(top: 5, bottom: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            Dimensions.radius20),
                                        topLeft: Radius.circular(
                                            Dimensions.radius20),
                                      )),
                                ),
                              ),
                              pinned: true,
                              backgroundColor: const Color(0xFF0277BD),
                              expandedHeight: 300,
                              flexibleSpace: FlexibleSpaceBar(
                                background: Image.asset(
                                  "images/momo.png",
                                  width: double.maxFinite,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SliverToBoxAdapter(
                                child: Column(
                              children: [
                                Container(
                                  child: ExpandableTextWidget(
                                    text:
                                        "McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.",
                                  ),
                                  margin: EdgeInsets.only(
                                      left: Dimensions.width20,
                                      right: Dimensions.width20),
                                )
                              ],
                            ))
                          ],
                        ),
                        bottomNavigationBar: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //Add and Remove icon with price multiplied by the number
                            Container(
                              padding: EdgeInsets.only(
                                left: Dimensions.width20 * 1.25,
                                right: Dimensions.width20 * 1.25,
                                top: Dimensions.height10,
                                bottom: Dimensions.height10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        if (objData.arr[pageno] > 0)
                                          _decrementItem();
                                      },
                                      icon: Icon(Icons.remove),
                                      color: Colors.white,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF0277BD),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  BigTextWithoutTap(
                                    size: Dimensions.font24,
                                    text: " Rs 2  X  ${objData.arr[pageno]} ",
                                    color: const Color(0xFF332d2b),
                                  ),
                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        _incrementItem();
                                      },
                                      icon: Icon(Icons.add),
                                      color: Colors.white,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF0277BD),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ],
                              ),
                            ),
                            //Add to cart button
                            Container(
                              height: Dimensions.bottomHeightBar,
                              padding: EdgeInsets.only(
                                  top: Dimensions.height30,
                                  bottom: Dimensions.height30,
                                  left: Dimensions.width20,
                                  right: Dimensions.width20),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFECEFF1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        Dimensions.radius20 * 2),
                                    topRight: Radius.circular(
                                        Dimensions.radius20 * 2),
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //Addition and Substraction symbols
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: Dimensions.height20 / 2,
                                        bottom: Dimensions.height20 / 2,
                                        left: Dimensions.width20 / 2,
                                        right: Dimensions.width20 / 2),
                                    margin: EdgeInsets.only(
                                        left: Dimensions.width10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20),
                                      color: Colors.white,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        _likeItem();
                                      },
                                      icon: objLiked.liked[pageno] == false
                                          ? (Icon(
                                              Icons.favorite_outline_outlined,
                                              color: Colors.red,
                                            ))
                                          : (Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            )),
                                    ),
                                  ),
                                  //Button at the bottom
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: Dimensions.height15,
                                        bottom: Dimensions.height15,
                                        left: Dimensions.width15,
                                        right: Dimensions.width15),
                                    child: InkWell(
                                      onTap: () {},
                                      child: BigTextWithoutTap(
                                        text:
                                            "Total = Rs ${objData.arr[pageno] * 2}",
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radius20),
                                        color: const Color(0xFF0277BD)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : pageno == 5
                        ? Scaffold(
                            backgroundColor: Colors.white,
                            body: CustomScrollView(
                              slivers: [
                                SliverAppBar(
                                  automaticallyImplyLeading: false,
                                  toolbarHeight: 80,
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFfcf4e4),
                                        child: IconButton(
                                          icon: Icon(Icons.clear),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MainFoodPage(
                                                            name,
                                                            email,
                                                            mobile,
                                                            password)));
                                          },
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFfcf4e4),
                                        child: IconButton(
                                          icon: Icon(
                                              Icons.shopping_cart_outlined),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Cart()));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  bottom: PreferredSize(
                                    preferredSize: Size.fromHeight(20),
                                    child: Container(
                                      child: Center(
                                          child: BigTextWithoutTap(
                                        size: Dimensions.font26,
                                        text: "Ice Cream",
                                      )),
                                      width: double.maxFinite,
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                                Dimensions.radius20),
                                            topLeft: Radius.circular(
                                                Dimensions.radius20),
                                          )),
                                    ),
                                  ),
                                  pinned: true,
                                  backgroundColor: const Color(0xFF0277BD),
                                  expandedHeight: 300,
                                  flexibleSpace: FlexibleSpaceBar(
                                    background: Image.asset(
                                      "images/ice_cream.png",
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SliverToBoxAdapter(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: ExpandableTextWidget(
                                        text:
                                            "McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.",
                                      ),
                                      margin: EdgeInsets.only(
                                          left: Dimensions.width20,
                                          right: Dimensions.width20),
                                    )
                                  ],
                                ))
                              ],
                            ),
                            bottomNavigationBar: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                //Add and Remove icon with price multiplied by the number
                                Container(
                                  padding: EdgeInsets.only(
                                    left: Dimensions.width20 * 1.25,
                                    right: Dimensions.width20 * 1.25,
                                    top: Dimensions.height10,
                                    bottom: Dimensions.height10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: IconButton(
                                          onPressed: () {
                                            if (objData.arr[pageno] > 0)
                                              _decrementItem();
                                          },
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF0277BD),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      BigTextWithoutTap(
                                        size: Dimensions.font24,
                                        text:
                                            " Rs 30  X  ${objData.arr[pageno]} ",
                                        color: const Color(0xFF332d2b),
                                      ),
                                      Container(
                                        child: IconButton(
                                          onPressed: () {
                                            _incrementItem();
                                          },
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF0277BD),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ],
                                  ),
                                ),
                                //Add to cart button
                                Container(
                                  height: Dimensions.bottomHeightBar,
                                  padding: EdgeInsets.only(
                                      top: Dimensions.height30,
                                      bottom: Dimensions.height30,
                                      left: Dimensions.width20,
                                      right: Dimensions.width20),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFECEFF1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            Dimensions.radius20 * 2),
                                        topRight: Radius.circular(
                                            Dimensions.radius20 * 2),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //Addition and Substraction symbols
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: Dimensions.height20 / 2,
                                            bottom: Dimensions.height20 / 2,
                                            left: Dimensions.width20 / 2,
                                            right: Dimensions.width20 / 2),
                                        margin: EdgeInsets.only(
                                            left: Dimensions.width10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius20),
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            _likeItem();
                                          },
                                          icon: objLiked.liked[pageno] == false
                                              ? (Icon(
                                                  Icons
                                                      .favorite_outline_outlined,
                                                  color: Colors.red,
                                                ))
                                              : (Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                )),
                                        ),
                                      ),
                                      //Button at the bottom
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: Dimensions.height15,
                                            bottom: Dimensions.height15,
                                            left: Dimensions.width15,
                                            right: Dimensions.width15),
                                        child: InkWell(
                                          onTap: () {},
                                          child: BigTextWithoutTap(
                                            text:
                                                "Total = Rs ${objData.arr[pageno] * 30}",
                                            color: Colors.white,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius20),
                                            color: const Color(0xFF0277BD)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Scaffold(
                            backgroundColor: Colors.white,
                            body: CustomScrollView(
                              slivers: [
                                SliverAppBar(
                                  automaticallyImplyLeading: false,
                                  toolbarHeight: 80,
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFfcf4e4),
                                        child: IconButton(
                                          icon: Icon(Icons.clear),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MainFoodPage(
                                                            name,
                                                            email,
                                                            mobile,
                                                            password)));
                                          },
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFfcf4e4),
                                        child: IconButton(
                                          icon: Icon(
                                              Icons.shopping_cart_outlined),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Cart()));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  bottom: PreferredSize(
                                    preferredSize: Size.fromHeight(20),
                                    child: Container(
                                      child: Center(
                                          child: BigTextWithoutTap(
                                        size: Dimensions.font26,
                                        text: "Hot Dog",
                                      )),
                                      width: double.maxFinite,
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                                Dimensions.radius20),
                                            topLeft: Radius.circular(
                                                Dimensions.radius20),
                                          )),
                                    ),
                                  ),
                                  pinned: true,
                                  backgroundColor: const Color(0xFF0277BD),
                                  expandedHeight: 300,
                                  flexibleSpace: FlexibleSpaceBar(
                                    background: Image.asset(
                                      "images/hot_dog.png",
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SliverToBoxAdapter(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: ExpandableTextWidget(
                                        text:
                                            "McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.McDonald's is the world's leading food service retailer with more than 31,000 restaurants in 119 countries serving more than 50 million customers each day. In India, McDonald's is a joint-venture company managed by two Indians.",
                                      ),
                                      margin: EdgeInsets.only(
                                          left: Dimensions.width20,
                                          right: Dimensions.width20),
                                    )
                                  ],
                                ))
                              ],
                            ),
                            bottomNavigationBar: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                //Add and Remove icon with price multiplied by the number
                                Container(
                                  padding: EdgeInsets.only(
                                    left: Dimensions.width20 * 1.25,
                                    right: Dimensions.width20 * 1.25,
                                    top: Dimensions.height10,
                                    bottom: Dimensions.height10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: IconButton(
                                          onPressed: () {
                                            if (objData.arr[pageno] > 0)
                                              _decrementItem();
                                          },
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF0277BD),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      BigTextWithoutTap(
                                        size: Dimensions.font24,
                                        text:
                                            " Rs 40  X  ${objData.arr[pageno]} ",
                                        color: const Color(0xFF332d2b),
                                      ),
                                      Container(
                                        child: IconButton(
                                          onPressed: () {
                                            _incrementItem();
                                          },
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF0277BD),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ],
                                  ),
                                ),
                                //Add to cart button
                                Container(
                                  height: Dimensions.bottomHeightBar,
                                  padding: EdgeInsets.only(
                                      top: Dimensions.height30,
                                      bottom: Dimensions.height30,
                                      left: Dimensions.width20,
                                      right: Dimensions.width20),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFECEFF1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            Dimensions.radius20 * 2),
                                        topRight: Radius.circular(
                                            Dimensions.radius20 * 2),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //Addition and Substraction symbols
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: Dimensions.height20 / 2,
                                            bottom: Dimensions.height20 / 2,
                                            left: Dimensions.width20 / 2,
                                            right: Dimensions.width20 / 2),
                                        margin: EdgeInsets.only(
                                            left: Dimensions.width10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius20),
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            _likeItem();
                                          },
                                          icon: objLiked.liked[pageno] == false
                                              ? (Icon(
                                                  Icons
                                                      .favorite_outline_outlined,
                                                  color: Colors.red,
                                                ))
                                              : (Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                )),
                                        ),
                                      ),
                                      //Button at the bottom
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: Dimensions.height15,
                                            bottom: Dimensions.height15,
                                            left: Dimensions.width15,
                                            right: Dimensions.width15),
                                        child: InkWell(
                                          onTap: () {},
                                          child: BigTextWithoutTap(
                                            text:
                                                "Total = Rs ${objData.arr[pageno] * 40}",
                                            color: Colors.white,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius20),
                                            color: const Color(0xFF0277BD)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
  }
}
