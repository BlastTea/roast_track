part of 'widgets.dart';

class RoastingChart extends StatefulWidget {
  const RoastingChart({
    super.key,
    this.degreeData,
    required this.duration,
  });

  final List<Degree>? degreeData;
  final Duration duration;

  @override
  State<RoastingChart> createState() => _RoastingChartState();
}

class _RoastingChartState extends State<RoastingChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 8.0, 16.0),
      child: CustomPaint(
        size: const Size(double.infinity, double.infinity),
        painter: RoastingChartPainter(
          degreeData: widget.degreeData,
          duration: widget.duration,
          labelStyle: Theme.of(context).textTheme.bodySmall!,
          colorScheme: Theme.of(context).colorScheme,
        ),
      ),
    );
  }
}

class RoastingChartPainter extends CustomPainter {
  RoastingChartPainter({
    required this.degreeData,
    required this.duration,
    required this.labelStyle,
    required this.colorScheme,
  });

  final List<Degree>? degreeData;

  final Duration duration;

  final TextStyle labelStyle;

  final ColorScheme colorScheme;

  @override
  void paint(Canvas canvas, Size size) {
    int totalDurationInMinute = duration.inMinutes < 1 ? 1 : duration.inMinutes + 1;
    double currentTimeInMinutes = totalDurationInMinute.toDouble();
    double totalTimeInMinutes = duration.inMilliseconds.toDouble() / 60000;
    double highestDegree = 5.0;

    if (degreeData?.isNotEmpty ?? false) {
      for (Degree degree in degreeData!) {
        highestDegree = max(highestDegree, degree.beanTemp ?? 0.0);
      }
      for (Degree degree in degreeData!) {
        highestDegree = max(highestDegree, degree.envTemp ?? 0.0);
      }
    }

    // Paint for grid and label
    final gridPaint = Paint()
      ..color = colorScheme.onSurface.withOpacity(0.3)
      ..strokeWidth = 1;

    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    int xLabelInterval = _calculateLabelInterval(totalDurationInMinute);
    int yLabelInterval = _calculateLabelInterval(highestDegree);

    // Draw grid in horizontal
    for (int i = 0; i <= totalDurationInMinute; i++) {
      if (i % xLabelInterval == 0) {
        final x = size.width / totalDurationInMinute * i;
        canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);

        // Label for x axis
        textPainter.text = TextSpan(
          text: '${i * 1}',
          style: labelStyle,
        );
        textPainter.layout();
        textPainter.paint(canvas, Offset(x - 6, size.height + 3));
      }
    }

    // Draw grid in vertical
    for (int i = 0; i <= highestDegree; i++) {
      if (i % yLabelInterval == 0) {
        final y = size.height - (size.height / highestDegree * i);
        canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);

        // Label for y axis
        textPainter.text = TextSpan(
          text: '${i * 1}',
          style: labelStyle,
        );
        textPainter.layout();
        textPainter.paint(canvas, Offset(-20, y - 6));
      }
    }

    // Draw degree data
    if (degreeData?.isNotEmpty ?? false) {
      var pathPaint = Paint()
        ..color = colorScheme.primary
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;
      var path = Path();

      // Iterates through the remaining data, with conversion of timeElapsed to minutes
      bool first = true;
      for (var degree in degreeData!) {
        var x = (degree.timeElapsed!.toDouble() / 60000) / currentTimeInMinutes * size.width;
        var y = (degree.beanTemp! / highestDegree) * size.height;
        if (first) {
          path.moveTo(x, size.height - y);
          first = false;
        }
        path.lineTo(x, size.height - y);
      }

      canvas.drawPath(path, pathPaint);

      pathPaint = Paint()
        ..color = colorScheme.inversePrimary
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;
      path = Path();

      // Iterates through the remaining data, with conversion of timeElapsed to minutes
      first = true;
      for (var degree in degreeData!) {
        var x = (degree.timeElapsed!.toDouble() / 60000) / currentTimeInMinutes * size.width;
        var y = ((degree.envTemp ?? 0.0) / highestDegree) * size.height;
        if (first) {
          path.moveTo(x, size.height - y);
          first = false;
        }
        path.lineTo(x, size.height - y);
      }

      canvas.drawPath(path, pathPaint);
    }

    // Draw trackball
    final trackballPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Draw trackball based on elapsed time
    double xPosition = (totalTimeInMinutes / currentTimeInMinutes) * size.width;
    canvas.drawLine(Offset(xPosition, 0), Offset(xPosition, size.height), trackballPaint);
  }

  @override
  bool shouldRepaint(RoastingChartPainter oldDelegate) {
    if (oldDelegate.duration != duration) {
      return true;
    } else if (oldDelegate.degreeData?.length != degreeData?.length) {
      return true;
    } else {
      for (int i = 0; i < (oldDelegate.degreeData?.length ?? 0); i++) {
        if (oldDelegate.degreeData![i].beanTemp != degreeData![i].beanTemp || oldDelegate.degreeData![i].timeElapsed != degreeData![i].timeElapsed) {
          return true;
        }
      }
    }

    return false;
  }

  int _calculateLabelInterval(num value) {
    if (value > 1000) {
      return 200;
    }

    if (value > 500) {
      return 100;
    }

    if (value > 300) {
      return 50;
    }

    if (value > 200) {
      return 40;
    }

    if (value > 150) {
      return 25;
    }

    if (value > 100) {
      return 20;
    }

    if (value > 60) {
      return 10;
    }

    if (value > 30) {
      return 5;
    }

    if (value > 10) {
      return 2;
    }

    return 1;
  }
}
