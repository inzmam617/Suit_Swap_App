import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class PostProductDetails extends StatefulWidget {
  const PostProductDetails({Key? key}) : super(key: key);

  @override
  State<PostProductDetails> createState() => _PostProductDetailsState();
}

class _PostProductDetailsState extends State<PostProductDetails> {
  bool selectedblack = false;
  bool selectedblue = false;
  bool selectedred = false;
  bool selectedpurple = false;
  bool selectedbrown = false;
  bool selecteddarkblue = false;

  bool xs = true;
  bool s = false;
  bool m = false;
  bool l = false;
  bool xl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Post Product",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Specify Details",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Price"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Product Name",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Product Category",
                        suffixIcon: Transform.rotate(
                            angle: 180 * math.pi / 180,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                            ))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Material Condition",
                        suffixIcon: Transform.rotate(
                            angle: 180 * math.pi / 180,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                            ))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Fabric",
                        suffixIcon: Transform.rotate(
                            angle: 180 * math.pi / 180,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                            ))),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Colors",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 2.0)
                        ]),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedblack = !selectedblack;
                              });
                            },
                            child: selectedblack
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        //color: Colors.blueGrey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                      ),
                                    ),
                                  ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedblue = !selectedblue;
                              });
                            },
                            child: selectedblue
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Color(0xff97AABD),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        //color: Colors.blueGrey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff97AABD),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                      ),
                                    ),
                                  ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedred = !selectedred;
                              });
                            },
                            child: selectedred
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffB82222),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        //color: Colors.blueGrey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffB82222),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                      ),
                                    ),
                                  ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedpurple = !selectedpurple;
                              });
                            },
                            child: selectedpurple
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffBEA9A9),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        //color: Colors.blueGrey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffBEA9A9),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                      ),
                                    ),
                                  ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedbrown = !selectedbrown;
                              });
                            },
                            child: selectedbrown
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffE2BB8D),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        //color: Colors.blueGrey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffE2BB8D),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                      ),
                                    ),
                                  ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selecteddarkblue = !selecteddarkblue;
                              });
                            },
                            child: selecteddarkblue
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Color(0xff151867),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        //color: Colors.blueGrey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff151867),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Sizes",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 2.0)
                        ]),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                xs = !xs;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 35,
                              decoration: BoxDecoration(
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 3.5
                                  //   )
                                  // ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: xs
                                          ? Colors.black
                                          : const Color(0xffFD8A00)),
                                  color: xs
                                      ? Colors.white
                                      : const Color(0xffFD8A00)),
                              child: Center(
                                child: Text(
                                  "XS",
                                  style: TextStyle(
                                      color: xs ? Colors.black : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                s = !s;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 35,
                              decoration: BoxDecoration(
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 3.5
                                  //   )
                                  // ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: s
                                          ? Colors.black
                                          : const Color(0xffFD8A00)),
                                  color: s
                                      ? Colors.white
                                      : const Color(0xffFD8A00)),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                      color: s ? Colors.black : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                m = !m;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 35,
                              decoration: BoxDecoration(
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 3.5
                                  //   )
                                  // ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: m
                                          ? Colors.black
                                          : const Color(0xffFD8A00)),
                                  color: m
                                      ? Colors.white
                                      : const Color(0xffFD8A00)),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                      color: m ? Colors.black : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                l = !l;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 35,
                              decoration: BoxDecoration(
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 3.5
                                  //   )
                                  // ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: l
                                          ? Colors.black
                                          : const Color(0xffFD8A00)),
                                  color: l
                                      ? Colors.white
                                      : const Color(0xffFD8A00)),
                              child: Center(
                                child: Text(
                                  "L",
                                  style: TextStyle(
                                      color: l ? Colors.black : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                xl = !xl;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 35,
                              decoration: BoxDecoration(
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 3.5
                                  //   )
                                  // ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: xl
                                          ? Colors.black
                                          : const Color(0xffFD8A00)),
                                  color: xl
                                      ? Colors.white
                                      : const Color(0xffFD8A00)),
                              child: Center(
                                child: Text(
                                  "XL",
                                  style: TextStyle(
                                      color: xl ? Colors.black : Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 2.0)
                        ]),
                    child:  Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Product Description:" ,style: TextStyle(color: Colors.black),),
                          SizedBox(height: 10,),
                          Text("Ensure the production quality is representative of your deliveries.Need help with your video? Check out our Fiverr expert audio/video talent here.",
                          style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Specify Details" ,style: TextStyle(color: Colors.orange),),
                  
                  Row(
                    children: [
                      Expanded(child: TextFormField(
                        decoration: InputDecoration(hintText: "City"),
                      )),
                      SizedBox(width: 20,),
                      Expanded(child: TextFormField(
                        decoration: InputDecoration(hintText: "Postal Cose"),
                      )),

                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Country"
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/Path_34175.svg"),
                      TextButton(onPressed: (){}, child: Text("Get my current location" ,style: TextStyle(color: Colors.orange),))
                    ],
                  ),


                  SizedBox(height: 20,),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Row(


              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 35,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            )),
                            backgroundColor: MaterialStateProperty.all(Color(0xffFD8A00))
                        ),
                        onPressed: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          //   return const PostProductDetails();
                          // }));
                        }, child: Text("Proceed"))),
                SizedBox(width: 20,),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 35,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(color: Colors.orange)),
                          // side: MaterialStateProperty.all(),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            )),
                            backgroundColor: MaterialStateProperty.all(Colors.white)
                        ),
                        onPressed: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          //   return const PostProductDetails();
                          // }));
                        }, child: Text("Save as Draft",style: TextStyle(color: Colors.orange),)))
              ],
            ),),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
