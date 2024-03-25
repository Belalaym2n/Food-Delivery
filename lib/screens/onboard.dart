import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/models/onBoardModel.dart';
import 'package:food_delivery/screens/sign_up.dart';
import 'package:food_delivery/utils/app_routes.dart';
import 'package:food_delivery/utils/app_stayles.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}


int currentIndex=0;

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
            controller: _controller,
            itemCount: OnBoardModel.content.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, i) {
              return Padding(
                // padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0,
                //   ),
                padding:
                currentIndex==0?

                EdgeInsets.all(0): EdgeInsets.only(top:
                40.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Image.asset(
                      OnBoardModel.content[i].image,
                      height:  520.h,
                      width: MediaQuery.of(context).size.width ,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height:  currentIndex==0?
                      40.0.h:40.h,

                    ),
                    Text(
                      OnBoardModel.content[i].tittle,
                      style: CustomTextStyles.boldTextStyle(
                        fontSize: 24
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      OnBoardModel.content[i].describtion,
                      style: CustomTextStyles.boldTextStyle(
                          fontSize: 14
                      ),
                    ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:

                    List.generate(
                      OnBoardModel.content.length,
                          (index) =>
                              buildDot(index, context),
                    ),
                  ),
                ),
                currentIndex==0?SizedBox(
                  height: 20,
                ):SizedBox(
                  height: 0
                  ,
                ),
                InkWell(
                  onTap: () {
                    if (currentIndex == OnBoardModel.content.length - 1) {
                      Navigator.pushReplacementNamed(context, AppRoutes.login);
                    }
                    _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red, borderRadius:
                    BorderRadius.circular(20)),
                    height: 60,
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        currentIndex == OnBoardModel.content.length - 1?
                        "Start": "Next",
                        style: TextStyle(color: Colors.white, fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                ),
                ]
              ));
            }),
          ),
        ],),


    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }

}
