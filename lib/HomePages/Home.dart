import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Account/AccountPage.dart';
import '../AllPosts/AllPosts.dart';
import '../Cart/CartPage.dart';
import '../FilterPage/FilterPage.dart';
import '../MyCloset/MyClosetPage.dart';
import '../Post/PostPage.dart';
import '../SliderPages/SliderPageOne.dart';
import '../bottom_icons_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const HomePage(),
    const CartPage(),
    const PostPage(),
    const MyClosetPage(),
    const AccountPage(),


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
  List dress = [
    "dressOne.png",
    "dressTwo.png",
    "dressThree.png",
    "dressFour.png",
    "dressFive.png",
    "dressSix.png",
    "dressSeven.png",
    "dressEight.png",
    "dressNine.png"
  ];
  List dresstwo = [
    "dressFour.png",
    "dressFive.png",
    "dressSix.png",
    "dressSeven.png",
    "dressEight.png",
    "dressNine.png"
  ];
  bool like = false;

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
        backgroundColor: const Color(0xffD10909),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Transform.translate(
                  offset: const Offset(-55, -90),
                  child: SvgPicture.asset("assets/BigCircle.svg")),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/BigCircle.svg")),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        width: 40,
                        height: 40,
                        child: Center(
                          child: SvgPicture.asset("assets/menu.svg"),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        width: 40,
                        height: 40,
                        child: Center(
                          child: SvgPicture.asset("assets/Chat.svg"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: MediaQuery.of(context).size.width - 100,
                        height: 45,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              //contentPadding: EdgeInsets.only(left: 35),
                              border: InputBorder.none,
                              hintText: "Search Now",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return FilterPage();
                          }));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          width: 45,
                          height: 45,
                          child: Center(
                            child: SvgPicture.asset("assets/settings.svg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    //height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Recommended"),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return const SeeAllPosts();
                                      }));
                                    },
                                    child: const Text(
                                      "see all",
                                      style: TextStyle(color: Colors.grey),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 220,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dress.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height: 170,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/" + dress[index],
                                                ),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Transform.translate(
                                              offset: const Offset(-10, 10),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    like = !like;
                                                  });
                                                },
                                                child: Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: const BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color:
                                                                  Colors.grey,
                                                              blurRadius: 5.0)
                                                        ],
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    100))),
                                                    child: like == true
                                                        ? Center(
                                                            child: SvgPicture.asset(
                                                                'assets/Heart.svg'))
                                                        : Center(
                                                            child: SvgPicture.asset(
                                                                'assets/EHeart.svg'))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
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
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "Products",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            // height: MediaQuery.of(context).size.height / 2 ,
                            child: GridView.builder(
                                physics: const ScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio:
                                            ((MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3) /
                                                230),
                                        crossAxisCount: 3),
                                itemCount: dresstwo.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: 170,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/" + dresstwo[index],
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
                                                  onTap: () {
                                                    setState(() {
                                                      like = !like;
                                                    });
                                                  },
                                                  child: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: const BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color:
                                                                    Colors.grey,
                                                                blurRadius: 5.0)
                                                          ],
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      100))),
                                                      child: like == true
                                                          ? Center(
                                                              child: SvgPicture
                                                                  .asset(
                                                                      'assets/Heart.svg'))
                                                          : Center(
                                                              child: SvgPicture
                                                                  .asset(
                                                                      'assets/EHeart.svg'))),
                                                ),
                                              ),
                                            ],
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
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
