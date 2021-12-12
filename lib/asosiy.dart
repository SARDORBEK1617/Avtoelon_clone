import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_3_task_2/recipe/models.dart';
import 'package:lesson_3_task_2/secondpage.dart';

Widget asosiy(BuildContext context, Model models) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Second(
              label: models.label,
              image: models.image,
              info: models.info,
              title: models.title,
              about: models.about,
            ),
          ));
    },
    child: Card(
      child: Container(
          height: 128,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    models.image,
                    width: 150,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          models.label,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          models.info,
                          style: const TextStyle(fontSize: 12),
                        ),
                        // Text(
                        //   models.title,
                        //   style: const TextStyle(fontSize: 12, color: Colors.grey),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    ),
  );
}
