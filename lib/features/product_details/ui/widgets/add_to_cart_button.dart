import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/routing/routes.dart';
import '../../../../core/widgets/app_bottom_bar.dart';
import '../../logic/add_to_cart_cubit.dart';
import '../../logic/add_to_cart_state.dart';

class AddToCartButton extends StatelessWidget {
  final String productId;
  const AddToCartButton({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddToCartCubit, AddToCartState>(
      buildWhen: (previous, current) =>
          current is AddingToCart ||
          current is AddToCartSuccess ||
          current is AddToCartError,
      builder: (context, state) {
        return state.maybeWhen(
          addingToCart: () =>  BottomAppBar(
            color: context.colorScheme.primary,
            child: SizedBox(
              height: 60,
              child: Center(child: CircularProgressIndicator(color: Colors.white,)),
            ),
          ),
          addToCartSuccess: (responseModel) => AppBottomBar(
            buttonText: 'Go to Cart',
            onTap: () {
              context.pushNamed(Routes.cartScreen);
            },
          ),
          addToCartError: (errorHandler) => AppBottomBar(
            onTap: () {
              context.read<AddToCartCubit>().addToCart(productId);
            },
            buttonText: 'Add to Cart',
          ),
          orElse: () {
            return AppBottomBar(
              onTap: () {
                context.read<AddToCartCubit>().addToCart(productId);
              },
              buttonText: 'Add to Cart',
            );
          },
        );
      },
    );
  }
}
