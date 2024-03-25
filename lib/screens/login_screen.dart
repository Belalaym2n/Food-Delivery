import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/utils/app_images.dart';
import 'package:food_delivery/utils/app_routes.dart';
import 'package:food_delivery/utils/app_stayles.dart';

import '../widgets/textField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.5,
              decoration: BoxDecoration(

                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFff5c30),
                        Color(0xFFe74b1a),
                      ])

              ),
            ),
            Container(
              margin:
              EdgeInsets.only(top: MediaQuery
                  .of(context)
                  .size
                  .height / 3),
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Text(""),
            ),

            Container(

              padding: EdgeInsets.all(20),

              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Center(child: Image(image: AssetImage(AppImages.appLogo))),

                  SizedBox(
                    height: 50.h,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),

                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 1.8,


                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,

                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 6.h,
                          ),

                          Text("Login",style:CustomTextStyles.boldTextStyle(

                            fontSize: 24,

                          ) ,),
                          SizedBox(
                            height: 15.h,
                          ),
                          textInpudField("Email",Icon(Icons.email),false),
                          SizedBox(
                            height: 15.h,
                          ),
                          textInpudField("Password",Icon(Icons.password),true),
                          SizedBox(
                            height: 15.h,
                          ),

                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text(
                                "Forget Password?  ",
                                textAlign: TextAlign.right,
                                style:CustomTextStyles.boldTextStyle(

                                fontSize: 20,

                              ) ,),
                            ),
                          ),
                          SizedBox(
                            height: 70.h,
                          ),
                          ElevatedButton(

                            style: ButtonStyle(
                              backgroundColor:MaterialStatePropertyAll(
                                  Color(0xFFff5c30)
                              ),

                              minimumSize: MaterialStatePropertyAll(
                                Size(200.w, 30.h)
                              )
                            ),
                              onPressed: (){

                          },
                              child: Text('Login',style: CustomTextStyles.boldTextStyle(
                                color: Colors.white,
                                fontSize: 20
                              ),))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signUp);
                    },
                    child: Text("Dont have an account? Sign UP",style: CustomTextStyles.boldTextStyle(
                      fontSize: 20

                    ),),
                  ),

                ],
              ),
            )


          ],
        ),
      ),
    );
  }


}
