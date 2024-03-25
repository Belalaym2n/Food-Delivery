import 'package:food_delivery/utils/app_images.dart';

class OnBoardModel{
  String image;
  String tittle;
  String describtion;


  OnBoardModel(this.image, this.tittle, this.describtion);

  static List<OnBoardModel>content=[
    OnBoardModel(AppImages.screen1,
        "Select from our best menu",
        "Pick your food from our menu\n         more than 35 items"),
    
    OnBoardModel(AppImages.screen2,
        "Easy and online payment",
        "You can pay cash on delivery and \n      Card payment is avilable"
    ),
    
    OnBoardModel(AppImages.screen3, "Quick Delivery at your doorstep ",
        "Delivery your food at your\n            Doorstep ")
  ];

}