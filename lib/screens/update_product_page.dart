// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';

import '../widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';
  String? price;
  String? productName, desc, image;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  desc = data;
                },
                hintText: 'description',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  price = data;
                },
                hintText: 'price',
                inputType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'image',
              ),
              SizedBox(
                height: 70,
              ),
              CustomButon(
                text: 'Update',
                onTap: () {
                  UpdateProductService().updateProduct(
                      title: productName!,
                      price: price!,
                      desc: desc!,
                      image: image!,
                      category: product.category);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
