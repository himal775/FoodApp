import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_page/homePage.dart';
import 'package:ui_page/main.dart';
import 'package:ui_page/main.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 8),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Container(
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, right: 8),
                child: Container(
                  height: 50,
                  width: 50,
                  child: const Material(
                    elevation: 9,
                    shadowColor: Colors.grey,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 404,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      // spreadRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(390),
                      bottomRight: Radius.circular(390))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        " Chipotle Cheesy Chicken",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 21),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      " A Signature flame-grilled chicken patty topped with smoked beef",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 18),
                    ),
                  ),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyV2NSZqMRR5vvzdiMCb_9Oscr-KugMNtIDQ&usqp=CAU"),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Container(
                              height: 50,
                              width: 50,
                              child: const Center(
                                  child: Text("L",
                                      style: TextStyle(fontSize: 18)))),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Container(
                              height: 50,
                              width: 50,
                              child: const Center(
                                  child: Text("S",
                                      style: TextStyle(fontSize: 18)))),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Material(
            elevation: 10,
            shadowColor: Colors.grey,
            child: Container(
                height: 35,
                width: 50,
                child: const Center(
                    child: Text("M", style: TextStyle(fontSize: 18)))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "4",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_circle_outline,
                  size: 30,
                ),
                color: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Rs 140",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 110,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.wallet_giftcard,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Go to Cart",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
