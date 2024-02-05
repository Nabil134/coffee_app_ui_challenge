import 'package:flutter/material.dart';
class LoactionAndSearch extends StatefulWidget {
  const LoactionAndSearch({super.key});

  @override
  State<LoactionAndSearch> createState() => _LoactionAndSearchState();
}

class _LoactionAndSearchState extends State<LoactionAndSearch> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0,1],
              colors: [
                const Color(0xff131313),
                const Color(0xff313131),
              ],
            ),
          ),
        child: Column(children: [
          const SizedBox(height: 40,),
          ListTile(
            title: Text('Location',style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xffB7B7B7),
            ),),
            subtitle: Row(
              children: [
                Text('Bilzen, Tanjungbalai',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffDDDDDD),
                ),),
                Icon( Icons.keyboard_arrow_down_outlined,color: Color(0xffDDDDDD), ),
              ],
            ),
            trailing: Image.asset('assets/profile.png',
              fit: BoxFit.cover,
            ),
          ),
          //Search Portion
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child:  TextField(
              decoration: InputDecoration(
                hintText: 'Search Coffee',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff989898),
                ),
                fillColor: Color(0xff313131),
                filled: true,
                prefixIcon: Padding(
                  padding:  EdgeInsets.zero,
                  child: Icon(Icons.search,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                suffixIcon: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffC67C4E),
                  ),
                  child: Image.asset('assets/furnitur-icon.png'),),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          //Search Portion
        ],),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
          child:
          Image.asset('assets/banner.png'),
        ),
    ],
    );
  }
}
