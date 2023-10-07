import 'package:flutter/material.dart';
import 'package:shop/global_variables.dart';
import 'package:shop/pages/products.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController textEditingController = TextEditingController();
  final List<String> filters = ['All', 'Adidas', 'Nike', 'Puma', 'Reebok','Jordan'];
  late String selectedFilter;
  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             Row(
              children: [
              const   Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(
                        fontFamily: 'ankit',
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller : textEditingController,
                    decoration:const InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontFamily: 'ankit', fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                  itemBuilder: (context, index) {
                    final filter = filters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedFilter = filter;
                          });
                        },
                        child: Chip(
                          side: const BorderSide(
                              color: Color.fromRGBO(245, 247, 249, 1)),
                          backgroundColor: selectedFilter == filter
                              ? Theme.of(context).primaryColor
                              : const Color.fromRGBO(245, 247, 249, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21)),
                          label: Text(
                            filter,
                            style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'ankit',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(itemCount: products.length,
                itemBuilder: (contect,index){
                  final product =products[index];
                  return   Product(
                  title: product['title'] as String,
                  price: product['price'] as double,
                  image: product['imageUrl'] as String,
                  );
            
                }
                ),
            )

          ],
        ),
      ),
    );
  }
}
