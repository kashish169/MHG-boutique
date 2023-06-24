import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/myorders/controller/my_orders_controller.dart';
import 'package:mhg/features/myorders/view/widgets/tab_bar_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../widgets/my_orders_list_widget.dart';

class MyOrdersPage extends StatefulWidget {
  static String routeName = '/my_orders';
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage>
    with TickerProviderStateMixin<MyOrdersPage> {
  late TabController _tabController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'My Orders'),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                onTap: (value) {
                  selectedIndex = value;
                  _tabController.animateTo(value);
                  if (mounted) setState(() {});
                },
                padding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: TabBarCard(
                      title: 'Orders',
                      color: selectedIndex == 0
                          ? AppColors.primary
                          : AppColors.lightGray,
                    ),
                  ),
                  Tab(
                    icon: TabBarCard(
                      title: 'Returns',
                      color: selectedIndex == 1
                          ? AppColors.primary
                          : AppColors.lightGray,
                    ),
                  ),
                  Tab(
                    icon: TabBarCard(
                      title: 'Cancelled',
                      color: selectedIndex == 2
                          ? AppColors.primary
                          : AppColors.lightGray,
                    ),
                  ),
                ],
              ),
       GetX<MyOrdersController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (controller.isError.isTrue) {
        return RetryButton(
          onTap: () {
            controller.getMyOrders();
          },
        );
      }
      return  Expanded(
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children:  [
            MyOrdersListWidget(model: controller.orders,name:"Orders",),
            MyOrdersListWidget(model: controller.returns,name: 'Returns Orders',),
            MyOrdersListWidget(model: controller.cancelled,name: 'Cancelled Orders',),
          ],
        ),
      );
    })

            ],
          )),
    );
  }
}
