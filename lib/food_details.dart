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
                            "Samosa is a fried or baked pastry with a savory filling, including ingredients such as spiced potatoes, onions, and peas. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region. Samosas are often accompanied by chutney, and have origins in medieval times or earlier. Samosas are a popular entrée, appetizer, or snack in the cuisines of South Asia, the Middle East, Central Asia, East Africa and their diasporas. Soon as it starts drizzling from the sky in monsoon, you always persuade your friends, family or anyone nearby to cook/order some crispy brown samosas and savour it with a cup of piping hot tea. You miss eating samosas every single day throughout your college, school and work life. Your canteen memories are incomplete without some crisp samosas, chai and the spicy and sweet chutney. It doesn’t matter if you have a plate of pizzas, pasta or cold drinks infront of you, Chai and samosa is your first love and go-to combination for every evening time snack with your family or friends. You have tasted so many fillings from pasta, cheesy and chowmein but nothing beats spicy aaloo fillings made with cumin seeds, asafoetida, green chillies, coriander, red chillies, ginger and lot of love. If you a true samosa lover and eat like you don’t care about the world then probably most of your your t-shirts, jeans, bag and even your mobile screen is full of oil stains and fingerprints from gobbling up samosas.",
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
                                "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese,and often various other ingredients (such as various types of sausage, anchovies, mushrooms, onions, olives, vegetables, meat, ham, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo. Italy, pizza served in a restaurant is presented unsliced, and is eaten with the use of a knife and fork. In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
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
                                    "Burger is a food consisting of fillings —usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, reli“special sauce”, often a variation of Thousand Island dressing; and are frequently placed on sesame seed buns. A hambuHamburgers are typically sold at fast-food restaurants, diners, and specialty and high-end restaurants. There are many international and regional variations of hamburgers.",
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
                                        "Momos are emerging as one of the most favorite street food items in India. To those who aren t aware (which will be rare, but for the sake of momo s history, keep reading), Momos are dumplings native to Tibet and Nepal. Traditionally, momo is prepared with minced meat filling, but now, one can find numerous variations. Ground vegetable, paneer, tofu and cheese are some of the fillings used in momos. There are 2 types of momos steamed and fried, which are served with a delicious dip! If you enjoy momos and are thinking about going to the nearest momo joint to hog on some, you should certainly visit these places in India, especially to taste the mouth-wateringly yummy momos!",
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
                                            "Ice cream is a sweetened frozen food typically eaten as a snack or dessert. It may be made from milk or cream and is flavoured with a sweetener, either sugar or an alternative, and a spice, such as cocoa or vanilla, or with fruit such as strawberries or peaches. It can also be made by whisking a flavored cream base and liquid nitrogen together. Food coloring is sometimes added, in addition to stabilizers. The mixture is cooled below the freezing point of water and stirred to incorporate air spaces and to prevent detectable ice crystals from forming. The result is a smooth, semi-solid foam that is solid at very low temperatures. It becomes more malleable as its temperature increases.",
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
                                            "Hot dog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter (Frankfurter Würstchen, also just called frank). The names of these sausages also commonly refer to their assembled dish. Some consider a hot dog to technically be a sandwich. Hot dog preparation and condiments vary worldwide. Typical condiments include mustard, ketchup, relish, onions in tomato sauce, and cheese sauce. Common garnishes include sauerkraut, diced onions, jalapeños, chili, grated cheese, coleslaw, bacon, and olives. Hot dog variants include the corn dog and pigs in a blanket.",
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
