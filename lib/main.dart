import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var products = [
    {"Product Name": "Apple iPhone 12", "Price": 799.00},
    {"Product Name": "Samsung Galaxy S21", "Price": 799.00},
    {"Product Name": "Google Pixel 6", "Price": 699.00},
    {"Product Name": "OnePlus 9 Pro", "Price": 729.00},
    {"Product Name": "MacBook Air M2", "Price": 999.00},
    {"Product Name": "MacBook Pro M1", "Price": 1299.00},
    {"Product Name": "iPad Pro", "Price": 799.00},
    {"Product Name": "Microsoft Surface Pro 7", "Price": 799.00},
    {"Product Name": "Dell XPS 13", "Price": 999.00},
    {"Product Name": "HP Spectre x360", "Price": 1099.00},
    {"Product Name": "Acer Chromebook Spin 713", "Price": 599.00},
    {"Product Name": "Lenovo ThinkPad X1 Carbon", "Price": 1399.00},
    {"Product Name": "Bose QuietComfort 35 II", "Price": 349.00},
    {"Product Name": "Beats Solo Pro", "Price": 299.00},
    {"Product Name": "JBL Flip 5", "Price": 99.00},
    {"Product Name": "Sonos Move", "Price": 399.00},
    {"Product Name": "Bose SoundLink Micro", "Price": 99.00},
    {"Product Name": "UE Boom 3", "Price": 149.00},
    {"Product Name": "JBL Charge 4", "Price": 149.00},
    {"Product Name": "Bose SoundLink Mini II", "Price": 199.00}
  ];

  Widget _objtoProduct(obj){
    String title = obj["Product Name"];
    String subtitle = obj["Price"].toString();
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: (){},
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        // body: ListView(
        //   children: products.map(_objtoProduct).toList(),
        // ),
        body: ListView.separated(
            itemBuilder: (content, index) => Divider(height: 1),
            separatorBuilder: (context, index) => _objtoProduct(products[index]),
            itemCount: products.length)
      ),
    );
  }
}

