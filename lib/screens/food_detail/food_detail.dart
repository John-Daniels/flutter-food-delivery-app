import 'package:flutter/material.dart';
import 'package:food_deliver_app/controllers/food_detail_controller.dart';
import 'package:food_deliver_app/models/food_model.dart';
import 'package:food_deliver_app/themes/app_colors.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  static String routeName = '/food/detail';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodDetailController>(builder: (state) {
      Food food = state.food.value;

      return Scaffold(
        appBar: _CustomAppBar(liked: state.isFavorite, onLike: state.toggleFav),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Center(
                child: Hero(
                  tag: food.title,
                  child: CirclePlaceholder(
                    child: Image.asset(
                      food.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: SmoothIndicator(
                  offset: 0,
                  count: 4,
                  effect: WormEffect(
                    dotColor: deepGrey2,
                    activeDotColor: primaryColor,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                food.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                'N${food.price.round()}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 42),
              DescTitle_SubTitle(
                title: 'Delivery info',
                subtitle: food.deliveryInfo,
              ),
              const SizedBox(height: 30),
              const DescTitle_SubTitle(
                spacing: 1.05,
                title: 'Return policy',
                subtitle:
                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
              )
            ],
          ),
        ),
      );
    });
  }
}

class DescTitle_SubTitle extends StatelessWidget {
  const DescTitle_SubTitle({
    Key? key,
    required this.title,
    required this.subtitle,
    this.spacing = 1,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: (MediaQuery.of(context).size.width * 0.6) * spacing,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CirclePlaceholder extends StatelessWidget {
  const CirclePlaceholder({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 10),
            spreadRadius: 1,
            blurRadius: 60,
            color: Colors.black26,
          ),
        ],
      ),
      // radius: 110,
      child: child,
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onLike;
  final bool liked;
  const _CustomAppBar({required this.onLike, required this.liked});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: primaryColor,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          IconButton(
            icon: Icon(liked ? Icons.favorite : Icons.favorite_border),
            color: liked ? Theme.of(context).primaryColor : null,
            onPressed: onLike,
            iconSize: 25,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 100);
}
