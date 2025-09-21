import 'package:flutter/material.dart';
import 'package:test1/model/productmodel.dart';

class BigScreen extends StatefulWidget {
  const BigScreen({super.key});

  @override
  State<BigScreen> createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 231),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            Batomtop(),
            Serachbox(),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Battomselect(imagesname: 'nike1'),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                            left: 5,
                            right: 20,
                            top: 5,
                          ),
                          child: Text(
                            'Nike',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Battomselect(imagesname: "airjordan"),
                      Battomselect(imagesname: "adidas"),
                      Battomselect(imagesname: "PUMA"),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Shoes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
                Text(
                  'view all',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 354,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productlist.length,
                itemBuilder: (context, index) {
                  return PopluarshoseItem(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopluarshoseItem extends StatelessWidget {
  const PopluarshoseItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 15, bottom: 20, right: 10, left: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: productlist[index].colorbackround,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(productlist[index].image),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productlist[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Text('Review', style: TextStyle(fontSize: 15)),
                        SizedBox(width: 3),
                        Text(
                          '(4.5)',
                          style: TextStyle(fontSize: 15, color: Colors.orange),
                        ),
                        Icon(Icons.star, color: Colors.orange),

                        //
                      ],
                    ),
                    Text(
                      productlist[index].price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Battomselect extends StatelessWidget {
  const Battomselect({super.key, required this.imagesname});
  final String imagesname;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      height: 60,
      width: 60,
      margin: const EdgeInsets.all(5),

      child: Image.asset('assets/images/$imagesname.png'),
    );
  }
}

class Batomtop extends StatelessWidget {
  const Batomtop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.widgets_outlined, size: 27),
          ),
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.shopping_basket_outlined, size: 27),
          ),
        ),
      ],
    );
  }
}

class Serachbox extends StatelessWidget {
  const Serachbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.8,
            height: 60,
            padding: EdgeInsets.only(left: 10),
            // margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: Colors.grey.shade400,
                  size: 28,
                ),
                Text(
                  "Search...",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.tune_outlined, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
