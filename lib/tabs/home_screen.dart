import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/utils/app_routes.dart';
import 'package:food_delivery/utils/app_stayles.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool icCream = false, salade = false, pizza = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //endDrawerEnableOpenDragGesture: false,
      body: Container(

        margin:EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Hello Belal",
                    style: CustomTextStyles.boldTextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Delicious food",
                style: CustomTextStyles.boldTextStyle(fontSize: 24),
              ),
              Text(
                " Discover and Get Great Food",
                style: CustomTextStyles.boldTextStyle(fontSize: 14)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              showItem(),
              SizedBox(
                height: 15.h,
              ),
              smallDetailsCat(),
              SizedBox(
                height: 15.h,
              ),
              smallDetails("assets/images/salad4.png"),
              smallDetails("assets/images/salad2.png"),

              //smallDetails(),
              // SizedBox(
              //   height: 5.h,
              // ),
              // smallDetails(),
            ],
          ),
        ),
      ),
    );
  }

  showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icCream = true;
            salade = false;
            pizza = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            color: icCream ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  //  color: Colors.black
                  ),
              margin: EdgeInsets.all(8),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage("assets/images/ice-cream.png"),
                color: icCream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icCream = false;
            salade = true;
            pizza = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            color: salade ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  //  color: Colors.black
                  ),
              margin: EdgeInsets.all(8),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage("assets/images/salad.png"),
                color: salade ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icCream = false;
            salade = false;
            pizza = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            color: pizza ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  //  color: Colors.black
                  ),
              margin: EdgeInsets.all(8),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage("assets/images/pizza.png"),
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icCream = false;
            salade = false;
            pizza = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            color: burger ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  //  color: Colors.black
                  ),
              margin: EdgeInsets.all(8),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage("assets/images/burger.png"),
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  smallDetailsCat() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
           Navigator.pushNamed(context, AppRoutes.details);
            },
            child: Container(
              margin: EdgeInsets.all(4),
              child: Material(
                elevation: 5,
                //borderOnForeground: true,

                // shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20),

                child: Container(
                  // margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(14),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage("assets/images/salad2.png"),
                        fit: BoxFit.cover,
                        height: 150.h,
                        width: 150.w,
                      ),
                      Text(
                        "Veggie toco hash",
                        style: CustomTextStyles.boldTextStyle(fontSize: 20),
                      ),
                      Text(
                        "Fresh and Health",
                        style: CustomTextStyles.boldTextStyle(fontSize: 13)
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "\$25",
                        style: CustomTextStyles.boldTextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Material(
              elevation: 5,
              //borderOnForeground: true,

              // shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(20),

              child: Container(
                // margin: EdgeInsets.all(4),
                padding: EdgeInsets.all(14),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/images/salad4.png"),
                      fit: BoxFit.cover,
                      height: 150.h,
                      width: 150.w,
                    ),
                    Text(
                      "Mix veg salad",
                      style: CustomTextStyles.boldTextStyle(fontSize: 20),
                    ),
                    Text(
                      "Fresh and Health",
                      style: CustomTextStyles.boldTextStyle(fontSize: 13)
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$28",
                      style: CustomTextStyles.boldTextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  smallDetails(String path){
    return Container(
      child: Container(
        margin: EdgeInsets.all(4),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(12),

          child: Row(
            children: [
              Image(
                image: AssetImage("$path"),
                fit: BoxFit.cover,
                height: 120.h,
                width: 120.w,
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text("mediterranean checkPia salad",
                      style: CustomTextStyles.boldTextStyle(fontSize: 22).copyWith(
                        fontWeight: FontWeight.w500
                      ),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text("Honey good cheese ",
                      style: CustomTextStyles.
                      boldTextStyle(fontSize: 14).copyWith(
                        fontWeight: FontWeight.w400
                      ),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text("\$28",
                      style: CustomTextStyles.boldTextStyle(fontSize: 22).copyWith(
                          fontWeight: FontWeight.w500
                      ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
