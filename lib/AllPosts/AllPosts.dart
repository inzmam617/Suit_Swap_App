import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Account/AccountPage.dart';
import '../Cart/CartPage.dart';
import '../HomePages/Home.dart';
import '../MyCloset/MyClosetPage.dart';
import '../Post/PostPage.dart';
import '../SliderPages/SliderPageOne.dart';
import '../bottom_icons_icons.dart';
import 'ProductDetails/ProductDetails.dart';

class SeeAllPosts extends StatefulWidget {
  const SeeAllPosts({Key? key}) : super(key: key);

  @override
  State<SeeAllPosts> createState() => _SeeAllPostsState();
}

class _SeeAllPostsState extends State<SeeAllPosts> {
  List pages = [
    const HomePage(),
    const CartPage(),
    const PostPage(),
    const MyClosetPage(),
    const AccountPage (),

  ];
  int currentIndex = 0;
  void _onItemTapped(int Index){
    setState(() {

      currentIndex = Index;

    });
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
      return pages[Index];
    }));
    print(Index);

  }
  bool like = false;
  List dress = [
    "dressTen.png",
    "dressEleven.png",
    "dressThirteen.png",
    "dressOne.png",
    "dressTwo.png",
    "dressThree.png",
    "dressFour.png",
    "dressFive.png",
    "dressSix.png",
    "dressSeven.png",
    "dressEight.png",
    "dressNine.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
              ),
            ),
            margin: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                          Icons.home_filled,
                          //color: Colors.grey,
                        )),
                    //label: '',
                  ),
                  BottomNavigationBarItem(
                    label: "Cart",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                            BottomIcons.buy
                          // color: Colors.grey,
                        )),
                    //label: '',
                  ),
                  BottomNavigationBarItem(
                    label: "Post",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                            BottomIcons.camera
                          //  color: Colors.grey,
                        )),
                  ),
                  BottomNavigationBarItem(
                    label: "My Closet" ,

                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                            BottomIcons.iconly_light_bag
                          //  color: Colors.grey,
                        )),
                    //label: '',
                  ),
                  BottomNavigationBarItem(
                    label: "Account",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                            BottomIcons.profile
                          // color: Colors.grey,
                        )),
                    //label: '',
                  ),




                ],
                currentIndex: 0,
                selectedIconTheme: IconThemeData(color: Colors.red,size: 25) ,
                unselectedIconTheme: IconThemeData(color: Colors.grey,size: 20),
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: _onItemTapped,
                selectedFontSize: 9,
                unselectedFontSize: 8,
                type: BottomNavigationBarType.fixed,
              ),
            ),
          ),
        ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child:  GridView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:
                ((MediaQuery.of(context).size.width /2) /270),
                crossAxisCount: 2),
            itemCount: dress.length,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          return ProductDetails();
                        }));
                      },
                      child: Container(width:
                      MediaQuery.of(context).size.width /
                          2.5,
                        height: 170,
                        decoration: BoxDecoration(
                            image:  DecorationImage(
                                image: AssetImage(
                                  "assets/" + dress[index],
                                ),
                                fit: BoxFit.cover),
                            borderRadius:
                            BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.end,
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            Transform.translate(
                              offset: const Offset(-10, 10),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    like = !like;
                                  });
                                },
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration:
                                    const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                    child: like == true
                                        ? Center(   child: SvgPicture.asset('assets/Heart.svg'))
                                        : Center(
                                        child: SvgPicture.asset(
                                            'assets/EHeart.svg'))),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                     const SizedBox(
                        height: 10,
                      ),

                    const Text(
                      "Cotton Shirt",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text(
                      '\$50',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  )
                              ),
                              backgroundColor:
                              MaterialStateProperty.all(Color(0xffD10909))),
                          onPressed: () {},
                          child: const Text(
                            "Add to Card",
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          )),
                    ),
                  ],
                ),
              );
            })
      )

    );
  }
}
