import 'package:flutter/material.dart';
class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //bottomNavigationBar start here
      bottomNavigationBar: Container(
        height: 332,
        width: 375,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
     child: Column(children: [
       Container(
         height: 5,
         width: 44,
         decoration: BoxDecoration(
           color: Color(0xffEAEAEA),
           borderRadius: BorderRadius.circular(2.5),
         ),
       ),
     const SizedBox(height: 20,),
       Text('10 minutes left',style: TextStyle(
         color: Color(0xff303336),
         fontSize: 16,
         fontWeight: FontWeight.w600,
       ),),
       const SizedBox(height: 10,),
       RichText(text: const TextSpan(
         text: 'Delivery to ',style: TextStyle(
         color: Color(0xff808080),
         fontSize: 12,
         fontWeight: FontWeight.w400,
       ),
         children:<TextSpan> [
           TextSpan(
             text: ' Jl. Kpg Sutoyo ',style: TextStyle(
             color: Color(0xff303336),
             fontSize: 16,
             fontWeight: FontWeight.w600,
           ),
           ),
         ],
       ),
       ),
const SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  CustomDivider(color: Color(0xff36C07E),),
  CustomDivider(color: Color(0xff36C07E),),
  CustomDivider(color: Color(0xff36C07E),),
  CustomDivider(color: Color(0xffDFDFDF),),
],),
   const SizedBox(height: 20,),
       Container(
         padding: EdgeInsets.only(left: 14,top: 16,right: 14,bottom: 16),
     height: 90,
     width: 315,
     decoration: BoxDecoration(
       color: Color(0xffFFFFFF),
       borderRadius: BorderRadius.circular(14),
       border: Border.all(color: Color(0xffEAEAEA),),
     ),
   child: ListTile(
     title:  Text('Delivered your order',style: TextStyle(
       color: Color(0xff303336),
       fontSize: 14,
       fontWeight: FontWeight.w600,
     ),),
     subtitle:  Text('We deliver your goods to you in\n the shortes possible time.',style: TextStyle(
       color: Color(0xff808080),
       fontSize: 12,
       fontWeight: FontWeight.w400,
     ),),
 leading: Container(
   height: 62,
   width: 62,
   decoration: BoxDecoration(
     color: Color(0xffFFFFFF),
       borderRadius: BorderRadius.circular(12),
       border: Border.all(color: Color(0xffDEDEDE),),
   ),
 child: Icon(Icons.delivery_dining_outlined,color: Color(0xffC67C4E),),
 ),
   ),
       ),
   const SizedBox(height: 5,),
   /*last portion start*/
       ListTile(
         title:  Text('Johan Hawn',style: TextStyle(
           color: Color(0xff303336),
           fontSize: 14,
           fontWeight: FontWeight.w600,
         ),),
         subtitle:  Text('Personal Courier',style: TextStyle(
           color: Color(0xff808080),
           fontSize: 12,
           fontWeight: FontWeight.w400,
         ),),
      leading: Image.asset('assets/person.png'),
         trailing: Container(
           height: 62,
           width: 62,
           decoration: BoxDecoration(
             color: Color(0xffFFFFFF),
             borderRadius: BorderRadius.circular(12),
             border: Border.all(color: Color(0xffDEDEDE),),
           ),
           child: Icon(Icons.phone_in_talk,color: Color(0xffDEDEDE),),
         ),
       ),
       /*last portion end*/
       const SizedBox(height: 10,),
       Container(
         height: 5,
         width: 134,
         decoration: BoxDecoration(
           color:Color(0xffDEDEDE),
         ),
       ),
     ],),
      ),
      //bottomNavigationBar end here
   body: Stack(children: [
     Positioned.fill(child: Image.asset('assets/maps.png',
       fit: BoxFit.cover,
     ),),

     ListView(children: [
/*first portion start here*/
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Container(height: 44,
             width: 44,
             decoration: BoxDecoration(
               color: Color(0xffFFFFFF),
               borderRadius: BorderRadius.circular(14),
             ),
           child: Center(
             child: Icon(Icons.arrow_back_ios,color: Colors.black,),
           ),
           ),
           Container(height: 44,
             width: 44,
             decoration: BoxDecoration(
               color: Color(0xffFFFFFF),
               borderRadius: BorderRadius.circular(14),
             ),
             child: Center(
               child: Icon(Icons.gps_fixed,color: Colors.black,),
             ),
           ),
         ],),
       ),
       /*first portion end here*/
       /*second portion start here*/
       Padding(
         padding: const EdgeInsets.only(left: 50),
         child: Row(
           children: [
             Icon(Icons.location_pin,color: Color(0xffC67C4E),),
             Image.asset('assets/Vector 2.png'),
             Container(
               margin:  EdgeInsets.only(right: 50,top: 170),
               child: Image.asset('assets/ride.png'),),
           ],
         ),
       ),
       /*second portion end here*/


     ],),

   ],),
    );
  }
}
/*customDivider start here*/
class CustomDivider extends StatelessWidget {
  final Color color;

  CustomDivider({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 71.25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
/*customDivider end here*/