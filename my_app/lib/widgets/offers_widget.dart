// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/models/offer_model.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2,
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffef4056), Color(0xffef394e)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(OfferModel.items.length + 2, (index) {
            // ignore: unused_local_variable
            final offer = OfferModel.items[index < 3 ? index : index - 2];
            return index == 0
                ? FirstOfferTile(size: size)
                : index == OfferModel.items.length + 1
                    ? Container(
                        padding: const EdgeInsets.all(12.0),
                        margin: const EdgeInsets.only(right: 8.0, left: 8.0),
                        width: size.width / 2.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.arrow_circle_left_outlined,
                                color: Color(0xffef394e),
                                size: 50,
                              ),
                              Text("مشاهده همه")
                            ]),
                      )
                    : OfferTile(offer: offer);
          }),
        ),
      ),
    );
  }
}

class FirstOfferTile extends StatelessWidget {
  const FirstOfferTile({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(right: 8.0),
      width: size.width / 2.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        children: [
          Column(
            children: [
              const Text(
                "پیشنهاد\nشگفت\nانگیز",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Image.asset(
                "assets/images/box.png",
                width: size.width / 3,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: const [
              Text(
                "مشاهد همه",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
                size: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}

class OfferTile extends StatelessWidget {
  const OfferTile({Key? key, required this.offer}) : super(key: key);

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(right: 8.0),
      width: size.width / 2.8,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "شگفت انکیز اختصاصی اپ",
            style: TextStyle(color: Color(0xffef394e), fontSize: 11.0),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Image.network(offer.image),
          Text(
            offer.title,
            style: const TextStyle(fontSize: 12.0),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 12.0,
          ),
          if (offer.isAvailable)
            Row(
              children: const [
                Icon(Icons.check, size: 15, color: Color(0xff87d3e1)),
                Text(
                  "موجود در انبار دیجی کالا",
                  style: TextStyle(color: Color(0xff62666d), fontSize: 10.0),
                )
              ],
            )
          else
            const Text(
              "تنها 3 عدد در انبار باقیست",
              style: TextStyle(color: Color(0xffef394e), fontSize: 10.0),
            ),
          const SizedBox(height: 12.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: const Color(0xffef394e),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  offer.discount,
                  style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Text(offer.price,
                      style: Theme.of(context).textTheme.bodySmall),
                  Text(
                    offer.previosPrice,
                    style: const TextStyle(
                        fontSize: 5,
                        color: Color(0xffa1a3a8),
                        decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              const SizedBox(
                width: 4.0,
              ),
              // Image.asset("assets/images/toman.png")
            ],
          )
        ],
      ),
    );
  }
}
