import 'package:coffeeappui/Screens/main_screen/nav_pages/home/detail_page.dart';
import 'package:coffeeappui/components/location_and_search.dart';
import 'package:coffeeappui/data/coffee_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body:SingleChildScrollView(
        child: Column(children: [
          /*first portion start here*/
         LoactionAndSearch(),
          /*first portion end here*/
          const SizedBox(height: 20,),
          /*second portion start here*/
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Color(0xffC67C4E)
                            : Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(
                            color: currentIndex == index
                                ? Color(0xffFFFFFF)
                                : Color(0xff2F4B4E),
                          fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),

          /*second portion end here*/
          Container(
            height: 239,
            child:
buildCoffeeGridView(),
          ),
          ],),
      ),

    );
  }
}

/*_buildCoffeeGridView start here*/

buildCoffeeGridView() {
  return Expanded(
    child: GridView.builder(
      itemCount:COFFEE_LIST.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
childAspectRatio: 0.8,
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Expanded(
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(
data: COFFEE_LIST[index],
                  index: index,
                )),
              );
            },
            child: Column(
              children: [
              Container(
              height: 239.h,
              width: 149.w,
              // margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 132.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
'assets/${COFFEE_LIST[index]['image']}'
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 90, left: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12,
                          ),
                          Text(
                            '${COFFEE_LIST[index]['rating']}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text(
                      'Cappucino',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xff2F2D2C),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text('${COFFEE_LIST[index]['subtitle']}',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$ ${COFFEE_LIST[index]['price']}', style: TextStyle(fontWeight: FontWeight.w600,
                          fontSize: 18.sp, color: Color(0xff2F4B4E),),),
                        Container(height: 32, width: 32,
                          decoration: BoxDecoration(color: Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(10.r),),
                          child: Icon(Icons.add, color: Color(0xffFFFFFF),),),
                      ],),
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
/*_buildCoffeeGridView end here*/
/*resueableContainer start here*/
class reuseableContainer extends StatelessWidget {
  final String img;
  const reuseableContainer({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 239.h,
      width: 149.w,
      // margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 132,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  img,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90, left: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                  Text(
                    ' 4.8',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              'Cappucino',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: Color(0xff2F2D2C),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              'with Chocolate',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Color(0xff9B9B9B),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ 4.53', style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 18.sp, color: Color(0xff2F4B4E),),),
                Container(height: 32, width: 32,
                  decoration: BoxDecoration(color: Color(0xffC67C4E),
                    borderRadius: BorderRadius.circular(10.r),),
                  child: Icon(Icons.add, color: Color(0xffFFFFFF),),),
              ],),
          ),
        ],
      ),
    );
  }
}

/*resueableContainer end here*/