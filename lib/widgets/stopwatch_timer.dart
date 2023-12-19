import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchTimer extends StatefulWidget {
  const StopwatchTimer({super.key});

  @override
  State<StopwatchTimer> createState() => _StopwatchTimerState();
}

class _StopwatchTimerState extends State<StopwatchTimer> {
  final Stopwatch _stopwatchUp = Stopwatch();

  late Timer _timerUp = Timer(const Duration(milliseconds: 1), () {});

  bool isRunning = false;
  String time = '00:00';

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timerUp = Timer.periodic(oneSec, (Timer t) {
      setState(() {
        time =
            '${_stopwatchUp.elapsed.inMinutes.toString().padLeft(2, '0')}:${(_stopwatchUp.elapsed.inSeconds % 60).toString().padLeft(2, '0')}';
        isRunning = true;
        debugPrint('time $time');
      });
    });
    _stopwatchUp.start();
  }

  void stopPause() {
    setState(() {
      isRunning = false;
    });
    _timerUp.cancel();
    _stopwatchUp.stop();
  }

  void reset() {
    //is this reset needed?
    _stopwatchUp.reset();
    setState(() {
      isRunning = false;
      time = '00:00';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('STOPWATCH'),
        // Display the result
        Container(
          decoration: const BoxDecoration(
              color: Color(0xFFF3E5F5),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: MediaQuery.of(context).size.width / 2,
          child: Center(
            child: Text(
              time,
              style: const TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
        ),
        Visibility(
          visible: !isRunning,
          child: ElevatedButton.icon(
            icon: const Icon(Icons.play_arrow),
            label: time == '00:00'
                ? const Text('START',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
                : const Text('UNPAUSE',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            onPressed: () {
              !isRunning ? startTimer() : stopPause();
              setState(() {
                isRunning = !isRunning;
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          ),
        ),
        // Stop button
        Visibility(
          visible: isRunning,
          child: ElevatedButton.icon(
            icon: const Icon(Icons.pause),
            onPressed: stopPause,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            label: const Text('PAUSE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
        ),
        // Reset button
        Visibility(
          visible: !isRunning && time != '00:00',
          child: ElevatedButton.icon(
            icon: const Icon(Icons.refresh),
            onPressed: reset,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            label: const Text('RESET',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
        ),
      ],
    );
  }
}
