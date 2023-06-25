import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/delete_icon_button.dart';
import '../../controllers/checkout_controller.dart';
import '../../models/user_payment_methods_model.dart';
import 'delete_card_dialog.dart';

class UserPaymentCard extends StatelessWidget {
  final UserPaymentMethodsModel model;
  final VoidCallback? onTap;
  final Color? color;
  const UserPaymentCard({
    super.key,
    required this.model,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final CheckoutController checkoutController =
        Get.find<CheckoutController>();
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: AppColors.shadow(0.1),
            border: Border.all(
              color: color ?? Colors.transparent,
            )),
        child: ListTile(
          leading: Image.asset(
            checkoutController.getCardIcon(
              model.cardType,
            ),
            height: 50,
            width: 50,
          ),
          title: Text(
            ' ${model.cardType}',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 14,
                  color: AppColors.mediumLabel,
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
            child: Text(
              'ending ${checkoutController.getCodedNumber(model.cardNumber)}',
              maxLines: null,
              overflow: TextOverflow.fade,
              softWrap: true,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumLabel,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  if (model.isDefault == 0) {
                    checkoutController
                        .setDefaultUserPaymentMethodCard(model.id);
                  }
                },
                child: Text(
                  model.isDefault == 1 ? "Default" : 'Set Default',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: model.isDefault == 1 ? 12 : 11,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondary,
                      ),
                ),
              ),
              DeleteIconButton(
                onTap: () {
                  deleteCardDialog(
                    context: context,
                    message: "Are you sure you want to delete this Card?",
                    onConfirm: () {
                      int cardId = model.id;
                      checkoutController.deletePaymentMethod(cardId);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
