import 'package:eye_buddy/util/colorconfig.dart';
import 'package:eye_buddy/widget/bar_chart_widget.dart';
import 'package:flutter/material.dart';

class BarChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 4,
          // color: const Color(0xff020227),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      'Progress Breakdown',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "TTCommon",
                          fontWeight: FontWeight.w800,
                          color: ColorConfig.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Stimulation',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Dry Eye',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Accommodation',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Relaxation',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Eye Muscles',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Breathing',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Lazy eye',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Morning',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: TextSpan(
                          text: 'Evening',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BarChartWidget(),
            ],
          ),
        ),
      );
}
