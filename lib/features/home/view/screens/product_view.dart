import 'package:flutter/material.dart';
import 'package:luxira/features/home/view/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  GestureDetector(onTap: () => Navigator.pop(context), 
        child: const  Icon(Icons.arrow_back)),
        title: const Text("Product",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: const ProductViewBody(),
    );
    
  }
}
