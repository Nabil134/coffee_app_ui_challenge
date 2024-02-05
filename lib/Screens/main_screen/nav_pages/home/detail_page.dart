import 'package:coffeeappui/Screens/main_screen/nav_pages/home/order_page.dart';
import 'package:coffeeappui/data/coffee_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
int value=0;
class DetailPage extends StatefulWidget {
  final int index;
  final Map<String,String> data;
  const DetailPage({super.key,required this.data,required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _currentSelectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,),),
        title: Text('Detail', style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff2F2D2C),
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border, color: Colors.black,),
          ),
        ],
      ),
      /*bottomNavigator start here*/
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Price', style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9B9B9B),
                ),),
                Text(
                  '\$ ${widget.data['price']}', style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffC67C4E),
                ),),
              ],),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>OrderPage()));
              },
              child: Container(height: 62,
                width: 217,
                decoration: BoxDecoration(
                  color: Color(0xffC67C4E),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text('Buy Now', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigator end here*/
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*first portion start here*/
              Image.asset(
                'assets/${widget.data['image']}', height: 226.h, width: 315.w,),
              /*first portion end here*/
              /*second portion start here*/
              ListTile(
                title: Text('Cappucino', style: TextStyle(
                  color: Color(0xff2F2D2C),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),),
                subtitle: Text(' ${widget.data['subtitle']}', style: TextStyle(
                  color: Color(0xff9B9B9B),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),),
              ),
              /*second portion end here*/
              /*third portion start here*/
              ListTile(
                title: Row(children: [
                  Icon(Icons.star, color: Colors.yellow,),
                  Text(' ${widget.data['rating']}', style: TextStyle(
                    color: Color(0xff2F2D2C),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),),
                  Text(' (230)', style: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset('assets/beanicon.png'),
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset('assets/milkicon.png'),
                    ),
                  ],),
              ),
              /*third portion end here*/
              const SizedBox(height: 5,),
              Divider(
                color: Color(0xffEAEAEA),
              ),
              /*four portion start here*/
              Text('Description', style: TextStyle(
                color: Color(0xff2F2D2C),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),),
              /*four portion end here*/
              const SizedBox(height: 5,),
              /*fifth portion start here*/
FoodDescription(index:widget.index),
              /*fifth portion end here*/
              const SizedBox(height: 5,),
              /*six portion start here*/
              Text('Size', style: TextStyle(
                color: Color(0xff2F2D2C),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),),
              /*six portion end here*/
              const SizedBox(height: 5,),
              /*last portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              _singleCategoryItemWidget(title: "S",
                  color1: _currentSelectedCategory==0?Color(0xffFFFFF):Color(0xffFFF5EE),
                  color2: _currentSelectedCategory==0?Color(0xffDEDEDE):Color(0xffC67C4E),
                  onTap: (){
                setState(() {
_currentSelectedCategory=0;
                });
              }),
                _singleCategoryItemWidget(title: "M",
                    color1: _currentSelectedCategory==1?Color(0xffFFFFF):Color(0xffFFF5EE),
                    color2: _currentSelectedCategory==1?Color(0xffDEDEDE):Color(0xffC67C4E),
                    onTap: (){
                      setState(() {
                        _currentSelectedCategory=1;
                      });
                    }),
                _singleCategoryItemWidget(title: "L",
                    color1: _currentSelectedCategory==2?Color(0xffFFF5EE):Color(0xffFFFFF),
                    color2: _currentSelectedCategory==2?Color(0xffC67C4E):Color(0xffDEDEDE),
                    onTap: (){
                      setState(() {
                        _currentSelectedCategory=2;
                      });
                    }),
            ],),
              /*last portion end here*/
          ]),
        ),
      ),
    );
  }
}
/*FoodDescription start here*/
class FoodDescription extends StatefulWidget {
  const FoodDescription({super.key,required this.index});
  final int index;

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
  bool _showFullText=false;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
    return  Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      width: he.width,
      child: Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _showFullText?
          Text(
            coffeeList[widget.index].description,
            style: const TextStyle(
              color: Color(0xff9B9B9B),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),):
          Text(
            coffeeList[widget.index].description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xff9B9B9B),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),),
          _buildButton(),
        ],),),
    );
  }
  /*_buildButton start here*/
  Widget _buildButton(){
    return TextButton(onPressed: (){
      setState(() {
        _showFullText=!_showFullText;
      });
    }, child:Text(_showFullText?"Read less":"Read more",style: TextStyle(
      color: Color(0xffC67C4E),
    ),),);
  }
/*_buildButton end here*/
}
/*FoodDescription end here*/


/*_SingleCategoryItemWidget start here*/
_singleCategoryItemWidget({VoidCallback? onTap,Color? color1,Color? color2,String? title}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 43,
      width: 96,
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffDEDEDE),),
      ),
      child: Center(
        child: Text('$title',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: color2,
        ),),
      ),
    ),
  );
}
/*_SingleCategoryItemWidget start here*/
/**/