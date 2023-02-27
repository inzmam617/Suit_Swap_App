import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../HomePages/Home.dart';
import '../SignIn/SignIn.dart';

class SliderPagesThree extends StatelessWidget {
  const SliderPagesThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Stack(
            children: [
              Image.asset(
                "assets/sareeThree.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){

                    },
                      child: SvgPicture.asset("assets/backbutton.svg",height: MediaQuery.of(context).size.height / 6 ,)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const HomePage();
                          }));

                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(color: Colors.black),
                        )),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(children: [
            SvgPicture.asset("assets/circles_round.svg"),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: const [
                        Text(
                          "Lorem ipsum dolor \n sit amet consectur",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, \n consectetur adipiscing elit.",
                          style: TextStyle(color: Colors.black),
                        ),

                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 30),
                      child: SvgPicture.asset("assets/scrollthree.svg"),
                    ),

                    InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const SignIn();
                          }));

                        },
                        child: SvgPicture.asset("assets/redbutton.svg",height: MediaQuery.of(context).size.height / 6))
                  ],
                )
              ],
            )
          ])
        ],
      )
      ,
    );
  }
}
