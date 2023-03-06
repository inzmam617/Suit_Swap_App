import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'PostProductDetails.dart';

class PostProductPage extends StatefulWidget {
  const PostProductPage({Key? key}) : super(key: key);

  @override
  State<PostProductPage> createState() => _PostProductPageState();
}

class _PostProductPageState extends State<PostProductPage> {
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
        title: const Text("Post Product",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: SizedBox(
              height: 180,
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey,blurRadius: 3.5)
                    ]
                  ),
                  // color: Colors.white,
                  height: 180,
                  width: MediaQuery.of(context).size.width / 3,
                  child: InkWell(
                    onTap: (){
                      print("object");
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         SvgPicture.asset("assets/Group 1831.svg",height: 60,),
                          SizedBox(height: 25,),
                          Text("Upload Image" ,style: TextStyle(color: Colors.black,fontSize: 12),)
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 180,
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage("assets/istockphoto-1189191538-170667a.jpg" )),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(color: Colors.grey,blurRadius: 3.5)
                              ]
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: (){
                                print("object");
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                  borderRadius: BorderRadius.all(Radius.circular(100))
                                ),
                                child: Center(
                                  child:  Icon(Icons.close, size: 15,),

                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // ),
              ]),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text("you can add up to 7 images!" ,style: TextStyle(color: Colors.black),),
          ),
          SizedBox(height: 50,),
          Center(
            child: SizedBox(
                width: 200,
                height: 35,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        )),
                        backgroundColor: MaterialStateProperty.all(Color(0xffFD8A00))
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return const PostProductDetails();
                      }));
                    }, child: Text("Proceed"))),
          )
        ],
      ),
    );
  }
}
