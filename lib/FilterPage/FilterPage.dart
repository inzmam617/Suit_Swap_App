import 'package:flutter/material.dart ';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  var selectRange = const RangeValues(78, 147);
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
        centerTitle: true,
        title: const Text(
          "Filter",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Price range",
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
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$${selectRange.start.toInt()}"),
                        Text("\$${selectRange.end.toInt()}")
                      ],
                    ),
                  ),
                  RangeSlider(
                      inactiveColor: const Color(0xff9B9B9B),
                      activeColor: const Color(0xffFD8A00),
                      min: 78,
                      max: 147,
                      values: selectRange,
                      onChanged: (RangeValues newRange) {
                        setState(() {
                          selectRange = newRange;
                        });
                      }),
                ],
              ),
            ),
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
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
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
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: xs ? Colors.black : const Color(0xffFD8A00)),
                          color:
                          xs ? Colors.white : const Color(0xffFD8A00)),
                      child: Center(
                        child: Text("XS",style: TextStyle(color: xs ? Colors.black :  Colors.white),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: s ? Colors.black : const Color(0xffFD8A00)),
                          color:
                          s ? Colors.white : const Color(0xffFD8A00)),
                      child: Center(
                        child: Text("S",style: TextStyle(color: s ? Colors.black :  Colors.white),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: m ? Colors.black : const Color(0xffFD8A00)),
                          color:
                          m ? Colors.white : const Color(0xffFD8A00)),
                      child: Center(
                        child: Text("M",style: TextStyle(color: m ? Colors.black :  Colors.white),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: l ? Colors.black : const Color(0xffFD8A00)),
                          color:
                          l ? Colors.white : const Color(0xffFD8A00)),
                      child: Center(
                        child: Text("L",style: TextStyle(color: l ? Colors.black :  Colors.white),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: xl ? Colors.black : const Color(0xffFD8A00)),
                          color:
                          xl ? Colors.white : const Color(0xffFD8A00)),
                      child: Center(
                        child: Text("XL",style: TextStyle(color: xl ? Colors.black :  Colors.white),),
                      ),
                    ),
                  ),

                ],
              ),
            )),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 2.0)
                    ]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                          width: 120,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)))),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffFD8A00))),
                              onPressed: () {},
                              child: const Text(
                                "Apply",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 35,
                          width: 120,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)))),
                                  side: MaterialStateProperty.all(
                                      const BorderSide(
                                          color: Color(0xffFD8A00))),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffFFFFFF))),
                              onPressed: () {},
                              child: const Text(
                                "Discard",
                                style: TextStyle(color: Color(0xffFD8A00)),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
