import 'package:flutter/material.dart';
import 'package:mhg/features/home/models/product_model.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key, required this.love, required this.nope});
  final List<ProductModel> love;
  final List<ProductModel> nope;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Report',
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w800)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                const TitleWidget(title: 'Nope', color: Color(0XFFdd3a65)),
                Expanded(
                  child: ListView.builder(
                      itemCount: nope.length,
                      itemBuilder: (context, index) => cardItem(nope[index])),
                )
              ],
            )),
            const Padding(padding: EdgeInsets.only(right: 15)),
            Expanded(
                child: Column(
              children: [
                const TitleWidget(title: 'Love', color: Color(0XFF11b297)),
                Expanded(
                  child: ListView.builder(
                      itemCount: love.length,
                      itemBuilder: (context, index) => cardItem(love[index])),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key, required this.items});
  final List<ProductModel> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) => cardItem(items[index])),
    );
  }
}

Widget cardItem(ProductModel productModel) {
  return Container(
    margin: const EdgeInsets.only(top: 15),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      children: [
        Image(
          image: NetworkImage(productModel.primaryImage!),
          width: 50,
        ),
        const Padding(padding: EdgeInsets.only(top: 4)),
        Text(
          productModel.enProductName,
          style: const TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color, width: 1)),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style:
            TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 21),
      ),
    );
  }
}
