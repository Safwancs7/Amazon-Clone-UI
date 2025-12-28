import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const AmazonSearchBar(),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade300,
            child: const Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 6),
                Text("Deliver to Safwan"),
              ],
            ),
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductCard(title: "Headphones", price: "₹1,999"),
                ProductCard(title: "Smart Watch", price: "₹2,999"),
                ProductCard(title: "Keyboard", price: "₹999"),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Recommended for you",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            children: const [
              ProductCard(title: "Shoes", price: "₹2,499"),
              ProductCard(title: "Backpack", price: "₹1,799"),
              ProductCard(title: "Phone Case", price: "₹499"),
              ProductCard(title: "Power Bank", price: "₹1,299"),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}
