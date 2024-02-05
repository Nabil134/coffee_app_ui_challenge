import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,),),
        title: Text('Order', style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff2F2D2C),
        ),),
      ),
  //bottomNavigatorBar start here
  bottomNavigationBar: Container(
    height: 121,
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
    Row(
      children: [
      Icon(Icons.money),
      const SizedBox(width: 10,),
      Container(
        height: 24,
        width: 51,
        decoration: BoxDecoration(
          color: Color(0xffC67C4E),
          borderRadius: BorderRadius.circular(20),
        ),
     child: Center(
       child: Text('Cash',style: TextStyle(
         color: Color(0xffFFFFFF),
         fontSize: 12,
         fontWeight: FontWeight.w400,
       ),),
     ),
      ),
      Container(
        height: 24,
        width: 51,
        decoration: BoxDecoration(
          color: Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text('\$ 5.53',style: TextStyle(
            color: Color(0xff2F2D2C),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),),
        ),
      ),

const SizedBox(width: 180,),
      Icon(Icons.do_not_disturb_on_total_silence_sharp),
    ],),
   const SizedBox(height: 10,),
    GestureDetector(
      onTap: (){
      },
      child: Container(height: 62,
        width: 315,
        decoration: BoxDecoration(
          color: Color(0xffC67C4E),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text('Order', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),),
        ),
      ),
    ),

  ],),
  ),
   //bottomNavigatorBar end here
   body: Container(
     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
     child: SingleChildScrollView(child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
       /*first portion start here*/
       Container(
         height: 48,
         width: 315,
         decoration: BoxDecoration(
           color: Color(0xffF2F2F2),
           borderRadius: BorderRadius.circular(14),
         ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 153,
            decoration: BoxDecoration(
              color: Color(0xffFC67C4E),
              borderRadius: BorderRadius.circular(10),
            ),
          child: Center(child: Text('Deliver',style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),),),
          ),
          Container(
            height: 40,
            width: 153,
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Deliver',style: TextStyle(
              color: Color(0xff2F2D2C),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),),
          ),
        ],
      ),
       ),
       /*first portion end here*/
         const SizedBox(height: 10,),
         /*second portion start here*/
         Text('Delivery Address',style: TextStyle(
           color: Color(0xff2F2D2C),
           fontSize: 16,
           fontWeight: FontWeight.w600,
         ),),
         /*second portion end here*/
         const SizedBox(height: 10,),
         /*third portion start here*/
         Text('Jl. Kpg Sutoyo',style: TextStyle(
           color: Color(0xff2F2D2C),
           fontSize: 14,
           fontWeight: FontWeight.w600,
         ),),
         /*third portion end here*/
         const SizedBox(height: 10,),
         /*forth portion start here*/
         Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',style: TextStyle(
           color: Color(0xff808080),
           fontSize: 12,
           fontWeight: FontWeight.w400,
         ),),
         /*forth portion end here*/
         const SizedBox(height: 10,),
         /*fifth portion start here*/
         Row(children: [
           reuseablecontainer(text: 'Edit Address', icon: Icons.edit),
           const SizedBox(width: 10,),
           reuseablecontainer(text: 'Add Note', icon: Icons.note_add),
         ],),
         /*fifth portion end here*/
         Divider(
           color: Color(0xffEAEAEA),
         ),
/*six portion start here*/
       ListTile(
         title: Text('Cappucino',style: TextStyle(
           color: Color(0xff2F2D2C),
           fontSize: 16,
           fontWeight: FontWeight.w600,
         ),),
         subtitle: Text('Cappucino',style: TextStyle(
           color: Color(0xff9B9B9B),
           fontSize: 12,
           fontWeight: FontWeight.w400,
         ),),
       leading: Image.asset('assets/coffee1.png'),
         trailing: Row(
           mainAxisSize: MainAxisSize.min,
           children: [
           Container(
             height: 28,
             width: 28,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
             ),
          child: Icon(Icons.minimize),
           ),
             Text('1',style: TextStyle(
               color: Color(0xff2F2D2C),
               fontSize: 12,
               fontWeight: FontWeight.w600,
             ),),
             Container(
               height: 28,
               width: 28,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
               ),
               child: Icon(Icons.add),
             ),
         ],),
       ),
         /*six portion end here*/
         Divider(
           color: Color(0xffEAEAEA),
         ),
         /*seven portion start here*/
         Container(
           height: 56,
           width: 315,
           decoration: BoxDecoration(
             color: Color(0xffEAEAEA),
             borderRadius: BorderRadius.circular(14),
           ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Icon(Icons.discount,color: Color(0xffC67C4E),),
           Text('1 Discount is applied',style: TextStyle(
             color: Color(0xff2F2D2C),
             fontSize: 14,
             fontWeight: FontWeight.w600,
           ),),
           Icon(Icons.arrow_forward_ios,color: Color(0xff2F2D2C),),
         ],),
         ),
         /*seven portion end here*/

     ],),),
   ),
    );
  }
}
/*reuseablecontainer start here*/
class reuseablecontainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const reuseablecontainer({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 120,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xffDEDEDE),),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(text,style: TextStyle(
            color: Color(0xff303336),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),),
        ],),
    );
  }
}

/*reuseablecontainer end here*/