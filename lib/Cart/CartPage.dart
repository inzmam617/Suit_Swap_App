import 'package:flutter/material.dart';

import '../Account/AccountPage.dart';
import '../HomePages/Home.dart';
import '../MyCloset/MyClosetPage.dart';
import '../Post/PostPage.dart';
import '../bottom_icons_icons.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
              currentIndex: 1,
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
      body: Center(
        child: Text("MY CART PAGE"),
      ),
    );
  }
}
