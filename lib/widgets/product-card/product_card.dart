import 'dart:ui';

import 'package:cosmetics/shared/extensions/to_roubles.dart';
import 'package:cosmetics/widgets/typography/text_styles.dart';
import 'package:flutter/material.dart';

class Product {
  final String kind;
  final String title;
  final int price;
  final int? prevPrice;
  final String? imgSrc;

  const Product({
    required this.kind,
    required this.title,
    required this.price,
    this.prevPrice,
    this.imgSrc,
  });
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 161,
          height: 187.65,
          decoration: BoxDecoration(
            color: Color.fromRGBO(244, 244, 244, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                product.imgSrc ?? '',
                color: Colors.black.withOpacity(0.7),
              ),
              ClipRect(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
                    ),
                    child: Image.asset(
                      colorBlendMode: BlendMode.color,
                      product.imgSrc ?? '',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 8,
                    top: 8,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/star.svg"),
                      ),
                    ),
                    child: const Text('%'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.kind,
              style: AppTextStyles.productKind,
            ),
            Text(
              product.title,
              style: AppTextStyles.productTitle,
            ),
            if (product.prevPrice != null)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${product.price.formatToSpaced()} ₽',
                    style: AppTextStyles.price,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${product.price.formatToSpaced()} ₽',
                    style: AppTextStyles.prevPrice,
                  ),
                ],
              )
            else
              Text(
                '${product.price.formatToSpaced()} ₽',
                style: AppTextStyles.price,
              ),
          ],
        ),
      ],
    );
  }
}
