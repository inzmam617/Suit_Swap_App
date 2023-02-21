import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool like =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/details.png",
          height: MediaQuery.of(context).size.height / 2.2,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon: Icon(Icons.arrow_back , color: Colors.black,)),
                InkWell(
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
              ],
            ),
          )

        ],
      ),
    );
  }
}
