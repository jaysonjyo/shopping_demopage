import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingpage/UI/PRODUCT%20DETAILS.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//home all collections
class _HomeState extends State<Home> {
  List<String> addimages = [
    "assets/add1.jpg",
    "assets/add2.jpg",
    "assets/add3.jpg"
  ];
  List<String> brandimages = [
    'assets/shoo.jpg',
    'assets/shirt.jpg',
    'assets/MaxiDress.jpg',
    'assets/party wear.jpg',
    'assets/lipstick.jpg'
  ];
  List<String> brandnames = [
    'FootWear',
    'Shirt',
    'Maxi Dress',
    'Party Wear',
    'LipStick'
  ];

  int curentindex = 0;
  List<String> productimages = [
    'assets/shoo.jpg',
    'assets/shirt.jpg',
    'assets/MaxiDress.jpg'
  ];
  List<String> productimage = [
    'assets/shirt.jpg',
    'assets/MaxiDress.jpg',
    'assets/shoo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Shopping Now',
              textAlign: TextAlign.center,
              style: GoogleFonts.libreCaslonText(
                  textStyle: TextStyle(
                color: Color(0xFF4392F9),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              )),
            )
          ],
        ),
        leading: Icon(Icons.format_align_left),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: GestureDetector(
                onTap: () {}, child: Icon(Icons.shopping_cart_outlined)),
          ),
          //SizedBox(width: 10.w,)
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 343.w,
                height: 40.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0A000000),
                      blurRadius: 9.r,
                      offset: Offset(0, 2),
                      spreadRadius: 0.r,
                    )
                  ],
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                      border: InputBorder.none,
                      hintText: 'Search any Product..',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Color(0xFFBBBBBB),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 0.10.h),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFBBBBBB),
                      ),
                      suffixIcon: Icon(
                        Icons.keyboard_voice_rounded,
                        color: Color(0xFFBBBBBB),
                      )),
                  onTap: () {
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Featured',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 61.w,
                        height: 24.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x14000000),
                              blurRadius: 16.r,
                              offset: Offset(1, 1),
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Sort',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.sort_sharp,
                              size: 16.sp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 61.w,
                        height: 24.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x14000000),
                              blurRadius: 16.r,
                              offset: Offset(1, 1),
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Filter',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 0.11.h,
                              )),
                            ),
                            Icon(
                              Icons.filter_alt_outlined,
                              size: 16.sp,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 439.w,
                height: 87.h,
                child: ListView.separated(
                    itemCount: brandimages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 56.w,
                                height: 56.h,
                                decoration: ShapeDecoration(

                                  image: DecorationImage(
                                    image: NetworkImage(brandimages[index]),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: OvalBorder(),
                                )),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            brandnames[index],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xFF21003D),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, position) {
                      return SizedBox(
                        width: 18.w,
                      );
                    }),
              ),
              Container(
                width: 343.w,
                height: 220.h,
                child: Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: addimages.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        width: 343.w,
                        height: 189.h,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(addimages[itemIndex]),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                      ),
                      options: CarouselOptions(
                        height: 189.h,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            curentindex = index;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: curentindex,
                        count: 3,
                        effect: WormEffect(
                            dotColor: Color(0xFFDEDBDB),
                            dotHeight: 10.h,
                            dotWidth: 10.w,
                            activeDotColor: Color(0xFFFFA3B3)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 343.w,
                height: 60.h,
                decoration: ShapeDecoration(
                  color: Color(0xFF4392F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Deal of the Day',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.alarm,
                                color: Colors.white,
                                size: 16.sp,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                '22h 55m 20s remaining ',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 89.w,
                        height: 28.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.w, color: Colors.white),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View all',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16.sp,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity.w,
                height: 241.h,
                child: ListView.separated(
                    itemCount: productimages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      List<String> productnames = [
                        'FootWear',
                        'Shirt',
                        'Maxi Dress',
                      ];
                      List<String> productabout = [
                        'Explore stylish and comfortable footwear crafted for every occasion, blending functionality and elegance to keep you moving effortlessly.',
                        'Upgrade your wardrobe with premium shirts designed for versatile wear, offering a perfect balance of comfort, durability, and timeless style.',
                        'Step into elegance with flowy and chic maxi dresses, featuring exquisite designs and a flattering fit for any special occasion or casual outing.'
                      ];
                      List<String> productprice = ['1499', '999', '1999'];
                      List<String> productofferprice = ['1999', '1499', '2499'];
                      List<String> offer = ['25', '33', '20'];
                      List<String> description = [
                        "Upgrade your wardrobe with our versatile shirts, crafted with premium fabrics for unmatched comfort and timeless appeal. Perfect for work or casual outings.Now available at ₹999(33 % Off).",
                        "Embrace effortless elegance with our stunning maxi dresses. Featuring flattering fits and exquisite designs, they are ideal for both casual and formal occasions.Now available at ₹1999 (20% Off).",
                        "Step into style and comfort with our premium footwear collection. Designed for every occasion, this footwear offers exceptional durability and elegance.Now available at ₹1499 (25% Off)."
                      ];
                      List<String>ratings=['5','4','3'];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProductDetails(
                            listimage:productimages[index],
                            title:productnames[index],
                            rating:ratings[index],
                            priceoffer:productofferprice[index],
                            price:productprice[index] ,
                            offer:offer[index] ,
                            description:description[index],
                            about:productabout[index],

                          )));
                        },
                        child: Container(
                          width: 170.w,
                          height: 251.h,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r)),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 130.h,
                                width: 200.w,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(6.r),
                                        topLeft: Radius.circular(6.r)),
                                    child: Image.network(productimages[index],
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    SizedBox(
                                      width: 162.w,
                                      child: Text(
                                        productnames[index],
                                        maxLines: 1,
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      productabout[index],
                                      maxLines: 1,
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("₹${productprice[index]}",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "₹${productofferprice[index]}",
                                          //'₹4999'
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Color(0xFF808488),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          " ${offer[index]}%Off",
                                          //'50%Off',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Color(0xFFFE735C),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400,
                                          )),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 12.sp,
                                          tapOnlyMode: true,
                                          initialRating: double.parse(ratings[index]),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(ratings[index],
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                color: Color(0xFFA4A9B3),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, position) {
                      return SizedBox(
                        width: 15.w,
                      );
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 343.w,
                height: 84.h,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r))),
                child: Row(
                  children: [
                    Container(
                        width: 75.w,
                        height: 65.h,
                        child: Image.asset("assets/j.png")),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Special Offers',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            width: 171.w,
                            child: Text(
                              'We make sure you get the offer you need at best prices',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 343.w,
                height: 60.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFC6D86),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Trending Products ',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                                size: 16.sp,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'Last Date 29/02/22',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 89.w,
                        height: 28.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.w, color: Colors.white),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View all',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16.sp,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity.w,
                height: 186.h,
                child: ListView.separated(
                  itemCount: productimage.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    List<String> productname = [
                      'Shirt',
                      'Maxi Dress',
                      'FootWear',
                    ];
                    List<String> productabouts = [
                      'Upgrade your wardrobe with premium shirts designed for versatile wear, offering a perfect balance of comfort, durability, and timeless style.',
                      'Step into elegance with flowy and chic maxi dresses, featuring exquisite designs and a flattering fit for any special occasion or casual outing.',
                      'Explore stylish and comfortable footwear crafted for every occasion, blending functionality and elegance to keep you moving effortlessly.',
                    ];
                    List<String> productprices = [
                      '999',
                      '1999',
                      '1499',
                    ];
                    List<String> productofferprices = [
                      '1499',
                      '2499',
                      '1999',
                    ];
                    List<String> offers = [
                      '33',
                      '20',
                      '25',
                    ];
                    List<String> rating = ['4', '5', '3'];
                    List<String> description = [
                      ''
                          "Upgrade your wardrobe with our versatile shirts, crafted with premium fabrics for unmatched comfort and timeless appeal. Perfect for work or casual outings.Now available at ₹999(33 % Off).",
                      "Embrace effortless elegance with our stunning maxi dresses. Featuring flattering fits and exquisite designs, they are ideal for both casual and formal occasions.Now available at ₹1999 (20% Off).",
                      "Step into style and comfort with our premium footwear collection. Designed for every occasion, this footwear offers exceptional durability and elegance.Now available at ₹1499 (25% Off)."
                    ];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ProductDetails(
                              listimage: productimage[index],
                              title: productname[index],
                              rating: rating[index],
                              priceoffer: productofferprices[index],
                              price: productprices[index],
                              offer: offers[index],
                              description: description[index],
                              // id: id,
                              about: productabouts[index] ,)));
                      },
                      child: Container(
                          width: 142.w,
                          height: 186.h,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r)),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(6.r),
                                      topLeft: Radius.circular(6.r)),
                                  child: Image.network(
                                    productimage[index],
                                    fit: BoxFit.cover,
                                    width: 142.w,
                                    height: 110.h,
                                  )),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productname[index],
                                      maxLines: 1,
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    ),
                                    Text(
                                      "₹${productprices[index]}",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "₹${productofferprices[index]}",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Color(0xFF808488),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w300,
                                          )),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "${offers[index]}%Off",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Color(0xFFFE735C),
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5.h)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    );
                  },
                  separatorBuilder: (context, position) {
                    return SizedBox(
                      width: 15.w,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
