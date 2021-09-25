import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';

class CarousalCard extends StatelessWidget {
  final TrainingModel? trainingModel;

  CarousalCard({this.trainingModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                trainingModel?.image ?? trainingImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trainingModel?.trainingName ?? '',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  Text(
                    "${trainingModel?.location ?? ''}" +
                        ' - ' +
                        "${trainingModel!.time}",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$975 ',
                              style: TextStyle(
                                fontSize: 14,
                                color: themeColor,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: themeColor,
                                decorationStyle: TextDecorationStyle.solid,
                              ),
                            ),
                            TextSpan(
                              text: '\$825',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: themeColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Row(
                        children: [
                          Text(
                            'View Details',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
