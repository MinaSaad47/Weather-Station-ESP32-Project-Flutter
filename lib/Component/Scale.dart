import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../common/constants.dart';

Widget Scale(double value , double min,double max,String unit,double interval) {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
        pointers: <GaugePointer>[
          NeedlePointer(
            value: value,
            needleColor: Colors.grey,
            tailStyle: TailStyle(
              length: 0.18,
              width: 8,
              color: Colors.grey,
              lengthUnit: GaugeSizeUnit.factor,
            ),
            needleLength: 0.68,
            needleStartWidth: 1,
            needleEndWidth: 8,
            knobStyle: KnobStyle(
              knobRadius: 0.07,
              color: Colors.black,
              borderWidth: 0.05,
              borderColor: Colors.grey,
            ),
            lengthUnit: GaugeSizeUnit.factor,
          )
        ],
        ranges: <GaugeRange>[
          GaugeRange(
            startValue: min,
            endValue: max,
            startWidth: 0.1,
            sizeUnit: GaugeSizeUnit.factor,
            endWidth: 0.1,
            gradient: SweepGradient(
              stops: const <double>[0.2, 0.5, 0.75],
              colors: const <Color>[
                Colors.green,
                Colors.yellow,
                Colors.red,
              ],
            ),
          ),
        ],
        ticksPosition: ElementsPosition.outside,
        labelsPosition: ElementsPosition.outside,
        minorTicksPerInterval: 5,
        axisLineStyle: AxisLineStyle(
          thicknessUnit: GaugeSizeUnit.factor,
          thickness: 0.1,
        ),
        axisLabelStyle: GaugeTextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.grey[400],
        ),
        radiusFactor: 0.97,
        majorTickStyle: MajorTickStyle(
          length: 0.1,
          thickness: 2,
          lengthUnit: GaugeSizeUnit.factor,
          color: Colors.grey[400],
        ),
        minorTickStyle: MinorTickStyle(
          length: 0.05,
          thickness: 1.5,
          lengthUnit: GaugeSizeUnit.factor,
          color: Colors.grey[400],
        ),
        minimum: min,
        maximum: max,
        interval: interval,
        startAngle: 115,
        endAngle: 65,
        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              '${value} ${unit}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey[400],
              ),
            ),
            positionFactor: 0.8,
            angle: 90,
          )
        ],
      ),
    ],
  );
}
