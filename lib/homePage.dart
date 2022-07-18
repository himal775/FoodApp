import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_page/Setting.dart';
import 'package:ui_page/details.dart';
import 'package:ui_page/main.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Chicago IIL",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.notifications_active_rounded,
            color: Colors.red,
          ),
          SizedBox(
            width: 5,
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.grey[40],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    elevation: 9,
                    shadowColor: Colors.grey,
                    child: TextFormField(
                        decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search our Delicious Burger",
                    )),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 9,
                        shadowColor: Colors.grey,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.all(8.0),
                          height: 150,
                          width: 100,
                          child: Column(
                            children: [
                              Image.network(
                                  "https://image.shutterstock.com/z/stock-photo-fresh-tasty-burger-isolated-on-white-background-705104968.jpg"),
                              SizedBox(height: 5),
                              const Text(
                                "Burger",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 9,
                        shadowColor: Colors.grey,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(8.0),
                          height: 150,
                          width: 100,
                          child: Column(
                            children: [
                              Image.network(
                                  "https://media.istockphoto.com/vectors/slice-of-melted-cheese-pepperoni-pizza-vector-id901501348?k=20&m=901501348&s=612x612&w=0&h=bpQsbOmANvL5bMYzF3-u7IIs_xv6zRwErQs4zKYKZfc="),
                              SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Pizza",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Icon(Icons.arrow_forward_ios_outlined,
                                  color: Colors.black)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 9,
                        shadowColor: Colors.grey,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(8.0),
                          height: 150,
                          width: 100,
                          child: Column(
                            children: [
                              Image.network(
                                  "https://cdn.shopify.com/s/files/1/0821/7617/files/Sundae_Fundae_fc1ea53f-705b-4ad7-884b-a45b9f42581f_1024x1024.jpg?v=1617401025"),
                              SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "cake",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.black)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 9,
                        shadowColor: Colors.grey,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(8.0),
                          height: 150,
                          width: 100,
                          child: Column(
                            children: [
                              Image.network(
                                  "https://liquorworld.com.np/wp-content/uploads/2019/11/Coke-2.25L.jpg"),
                              SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Coke",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.black)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Text("View All", style: TextStyle(color: Colors.red)),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Container(
                    height: 160,
                    width: 400,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(),
                            ));
                      },
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 370,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                height: 100,
                                child: Center(
                                  child: Image.network(
                                      "https://www.uncovercolorado.com/wp-content/uploads/2020/04/Red-Robin-Gourmet-Burgers-and-Brews-CO-3.png"),
                                ),
                              )
                            ],
                          ),
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Chipotle Cheesy Chicken",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Rs 100",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Chicken Burger",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Container(
                    height: 160,
                    width: 400,
                    child: Column(
                      children: [
                        Row(children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          Text("View All", style: TextStyle(color: Colors.red)),
                        ]),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 100,
                              width: 370,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 100,
                              child: Center(
                                child: Image.network(
                                    "https://www.uncovercolorado.com/wp-content/uploads/2020/04/Red-Robin-Gourmet-Burgers-and-Brews-CO-3.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
