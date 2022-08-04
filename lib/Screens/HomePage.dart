import 'package:e_commerce_app/Widgets/ProductWidget.dart';
import 'package:e_commerce_app/data/dummyData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      body: Padding(
        padding: EdgeInsets.only(left: 50.w),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 243.w,
              child: Text(
                "Order online collect in store",
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),
          ),
          SizedBox(
            height: 56.h,
          ),
          Container(
            height: 33.h,
            child: TabBar(
              isScrollable: true,
              labelColor: Color.fromARGB(255, 89, 86, 233),
              indicatorColor: Color.fromARGB(255, 89, 86, 233),
              unselectedLabelColor: Color.fromARGB(255, 154, 154, 157),
              controller: _tabController,
              tabs: [
                Tab(
                  text: "Wearable",
                ),
                Tab(
                  text: "Laptops",
                ),
                Tab(
                  text: "Phones",
                ),
                Tab(
                  text: "Drones",
                ),
                Tab(
                  text: "Drones",
                ),
                Tab(
                  text: "Drones",
                ),
                Tab(
                  text: "Wearable",
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 67.h),
            height: 320.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductWidget(product: products[index])),
          ),
          TextButton(
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "see more",
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: Color.fromARGB(255, 89, 86, 233))),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 89, 86, 233),
                  )
                ],
              ))
        ])),
      ),
    );
  }
}