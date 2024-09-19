import 'package:flutter/material.dart';
import 'package:food/models/cart.dart';
import 'package:food/models/shoe.dart';
import 'package:food/pages/shoe_tile.dart';
import 'package:provider/provider.dart';
// ignore: duplicate_import
import 'package:food/models/cart.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart function
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addITemToCart(shoe);

    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Successfully added!"),
        content: Text("Check your cart."),
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(18),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,)
            ],
          ),
        ),


        //headline
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text("Greatness is not born, it is made",
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center),
        ),

        //main picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
          children: const[
            Text('Exclusive Collection',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
                ),
          Text('See All',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
            ],
          ),
        ),

        const SizedBox(height: 10,),

          Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = value.getShoeList() [index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
          );
            },
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),
    );
  }
}