import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/utils/app_stayles.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

int order=0;

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(

        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ),

      body: Container(
        margin: EdgeInsets.all(8),



        child: Column(


          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Image(image: AssetImage("assets/images/salad2.png"),fit: BoxFit.fill,
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height/2.2,

             ),
             SizedBox(
               height: 15.h,
             ),

             Container(
                 //padding: EdgeInsets.all(4),
                 child: Text("Mediterrenean",
                   style: CustomTextStyles.boldTextStyle(
                     fontSize: 24
                   ),)),


             Row(
               children: [
                 Text("CheckPia salad",style: CustomTextStyles.boldTextStyle(
                   fontSize: 20
                 ),),
                 Spacer(),
                 Container(
                   child: GestureDetector(
                       onTap: () {
                         order++;
                         setState(() {

                         });
                       },
                       child: Icon(Icons.add,color: Colors.white,)),
                   decoration: BoxDecoration(

                       color: Colors.black,
                      borderRadius: BorderRadius.circular(6)
                   ),
                 ),
                 SizedBox(
                   width: 8.w,
                 ),
                 Text("$order",style: CustomTextStyles.boldTextStyle(
                   fontSize: 24

                 ),),
                 SizedBox(
                   width: 8.w,
                 ),
                 Container(
                   child: GestureDetector(
                       onTap: () {
                         if(order>0){
                           order--;
                           setState(() {

                           });
                         }
                       },
                       child: Icon(Icons.remove,color: Colors.white,)),
                   decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(6)
                   ),
                 ),

               ],
             ),
             SizedBox(
               height: 10.h,
             ),
             Text(
                 "It seems like there might be a typo in your request. If you’re referring to “chickpea,” it’s a highly nutritious legume known by various names such as gram or Bengal gram,"
                     " chana, garbanzo bean, or Egyptian pea",
             maxLines: 3,
               style: CustomTextStyles.boldTextStyle(
                 fontSize: 15,

               ).copyWith(
                  fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 20.h,
             ),
             Row(
               children: [
                 Text("Delievery Time",style: CustomTextStyles.boldTextStyle(
                   fontSize: 20
                 ),),
                 SizedBox(
                   width: 30.w,
                 ),
                 Icon(Icons.alarm),
                  Text("30 min",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),)

               ],
             ),
             Spacer(),

             Row(
               children: [
                 Column(
                   children: [
                     Text("Total Price",style: CustomTextStyles.boldTextStyle(
                       fontSize: 16
                     ),),
                     Text("\$28",style: CustomTextStyles.boldTextStyle(
                       fontSize: 20
                     ),),


                   ],

                 ),
                 Spacer(),
                 Container(
                   
                   width: 150.w,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(6),
                     color: Colors.black,

                   ),
                   child:

                   Row(
                     children: [
                       Text("  Add To Card",style: CustomTextStyles.boldTextStyle(

                       ).copyWith(
                           color: Colors.white,
                           fontSize: 20
                       ),),
                       SizedBox(
                         width: 4.w,
                       ),
                       Icon(Icons.add_shopping_cart,color: Colors.white,)

                     ],
                   )
                 )
               ],
             )

           ],
        ),
      ),


    );
  }
}
