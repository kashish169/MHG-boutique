import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../products_page/view/pages/product_page.dart';
import '../../models/brand_model.dart';

class BrandsPage extends StatefulWidget {
  const BrandsPage({super.key, required this.brands});
  final List<BrandCategoryModel> brands;

  @override
  State<BrandsPage> createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 25),
      height: MediaQuery.of(context).size.height * 2 / 3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                  widget.brands.length > 3 ? 3 : widget.brands.length,
                  (index) => InkWell(
                        onTap: () {
                          Get.toNamed(
                            ProductsPage.routeName,
                            arguments: {
                              "brandId": widget.brands[index].id,
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 15),
                          height: 120,
                          width: double.infinity,
                          child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  widget.brands[index].imageLink!)),
                        ),
                      )),
            ),
            if (widget.brands.length > 3)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GridView.extent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width * 1 / 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                      widget.brands.length - 3,
                      (index) => InkWell(
                            onTap: () {
                              Get.toNamed(
                                ProductsPage.routeName,
                                arguments: {
                                  "brandId": widget.brands[index + 3].id,
                                },
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 15),
                              height: 120,
                              width: double.infinity,
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      widget.brands[index + 3].imageLink!)),
                            ),
                          )),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
