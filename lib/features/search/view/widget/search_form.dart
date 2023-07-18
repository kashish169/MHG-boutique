import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../product_details/view/pages/product_details_page.dart';
import '../../controller/search_controller.dart';
import '../../model/auto_search_product_model.dart';

class SearchForm extends StatelessWidget {
  SearchForm({super.key});
  final SearchingController searchController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TypeAheadField<AutoSearchProductModel>(
          noItemsFoundBuilder: (context) {
            return const SizedBox();
          },
          textFieldConfiguration: TextFieldConfiguration(
              textInputAction: TextInputAction.search,
              controller: controller.search,
              onSubmitted: (value) {
                controller.resetPaginate();
                controller.search.text.isNotEmpty
                    ? searchController.filterSearchForProduct()
                    : null;
              },
              onChanged: (value) {
                if (value == '') {
                  controller.resetPaginate();
                }
              },
              autofocus: false,
              style: Theme.of(context).textTheme.displaySmall,
              decoration: InputDecoration(
                  fillColor: const Color(0XFFF0F0F0),
                  suffixIcon: IconButton(
                      onPressed: () {
                        AppHelper.closeKeyboard();
                        controller.search.clear();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 20,
                      )),
                  prefixIcon: IconButton(
                      onPressed: () {
                        controller.resetPaginate();
                        controller.search.text.isNotEmpty
                            ? searchController.filterSearchForProduct()
                            : null;
                      },
                      icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          AppAssets.search,
                          color: AppColors.primary,
                        ),
                      )),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  hintText: "What Are You Looking For ?".tr,
                  hintStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.grey,
                      ))),
          keepSuggestionsOnLoading: false,
          suggestionsBoxDecoration: SuggestionsBoxDecoration(
            constraints: BoxConstraints(
              maxHeight: AppDimensions.productHeight(context) / 1.2,
            ),
            borderRadius: BorderRadius.circular(10),
            color: const Color(0XFFF0F0F0),
          ),
          suggestionsCallback: (pattern) async {
            if (pattern.isNotEmpty) {
              return await controller.autoCompleteSearch(pattern);
            } else {
              return [];
            }
          },
          itemBuilder: (context, suggestion) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 11,
              ),
              child: Text(
                isAR() ? suggestion.frProductName : suggestion.enProductName,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            );
          },
          onSuggestionSelected: (suggestion) {
            Get.toNamed(
              ProductDetailsPage.routeName,
              arguments: {
                "id": suggestion.id,
                "name": '',
                "fromArrival": false,
              },
            );
          },
          loadingBuilder: (context) => SizedBox(
            height: 80,
            child: Center(
              child: LoadingThreeBounce(
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
