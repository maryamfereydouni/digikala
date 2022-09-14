// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:my_app/models/digi_app_model.dart';

class DigiAppsWidget extends StatelessWidget {
  const DigiAppsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: DigiAppsModel.items.length + 1,
        itemBuilder: (BuildContext context, int index) {
          final app = DigiAppsModel.items[index == 0 ? 0 : index - 1];
          return index == DigiAppsModel.items.length
              ? Column(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Color(0xfff0f0f1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.more_horiz,
                          color: Color(0xff62666d)),
                    ),
                    const Text("بیشتر",
                        style: TextStyle(
                          color: Color(0xff447750),
                        ))
                  ],
                )
              : DigiAppTile(app: app);
        });
  }
}

class DigiAppTile extends StatelessWidget {
  const DigiAppTile({
    Key? key,
    required this.app,
  }) : super(key: key);

  final DigiAppsModel app;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          app.image,
          width: 50.0,
          height: 50.0,
        ),
        Text(app.title,
            style: const TextStyle(
              color: Color(0xff447750),
            ))
      ],
    );
  }
}
