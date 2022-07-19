import 'package:get/get.dart';

class Dimensions {
  static double screenHeight =
      Get.context!.height; //Accessing the height of the mobile screen
  static double screenWidth =
      Get.context!.width; //Accessing the height of the mobile screen

  static double pageView = screenHeight / 2.48;
  static double pageViewContainer = screenHeight / 3.6;
  static double pageViewTextContainer = screenHeight / 7.2;

  //Dynamic Height: padding and margin
  static double height10 = screenHeight / 79.1;
  static double height15 = screenHeight / 52.73;
  static double height20 = screenHeight / 39.55;
  static double height30 = screenHeight / 26.367;
  static double height45 = screenHeight / 15.578;
  static double height100 = screenHeight / 7.91;

  //Dynamic width: padding and margin
  static double width10 = screenHeight / 79.1;
  static double width15 = screenHeight / 52.73;
  static double width20 = screenHeight / 39.55;
  static double width30 = screenHeight / 26.367;
  static double width45 = screenHeight / 15.578;

  //font size
  static double font16 = screenHeight / 49.4375;
  static double font20 = screenHeight / 39.55;
  static double font24 = screenHeight / 32.958;
  static double font26 = screenHeight / 30.423;

  //Icon Size
  static double iconSize24 = screenHeight / 32.958;
  static double iconSize16 = screenHeight / 49.4375;

  //Dynamic Radius
  static double radius20 = screenHeight / 39.55;
  static double radius15 = screenHeight / 52.73;
  static double radius30 = screenHeight / 26.367;

  //Dynamic List View Size
  static double listView1000 = screenHeight / 0.791;
  static double listViewImgSize = screenWidth / 3.28;
  static double listViewTextContSize = screenWidth / 3.9;

  //Popular food
  static double popularFoodImgSize = screenHeight / 2.26;

  //Bottom height
  static double bottomHeightBar = screenHeight / 7.2;
}
