import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/allproducts/view/pages/all_products_page.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import '../../../../widgets/view_all_button.dart';
import '../../controller/home_controller.dart';

class HomeTopSellersWidget extends StatelessWidget {
  const HomeTopSellersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Top Sellers'.tr,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                ),
              ),
              ViewAllButton(onTap: () {
                Get.to(() => AllProductsPage(
                      products: controller.topSellersList,
                    ));
              }),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                for (int index = 0;
                    index < controller.topSellersList.length;
                    index++)
                  Obx(() => Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8),
                        child: ProductCard(
                          model: controller.topSellersList[index],
                        ),
                      )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
