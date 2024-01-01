import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Timer _timer = Timer(const Duration(milliseconds: 1), () {});
  int _start = 0;
  var time = '5:00';
  bool isCounting = false;

  void startTimer(int timerDuration) {
    _timer.cancel();
    setState(() {
      _start = timerDuration;
    });
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            _timer.cancel();
          } else {
            _start = _start - 1;
            var mins = _start / 60;
            var wholeMins = mins.floor();
            var seconds = _start % 60;
            time = _start % 60 > 9
                ? '$wholeMins:$seconds'
                : '$wholeMins:0$seconds';
          }
        },
      ),
    );
  }

  void pauseTimer() {
    _timer.cancel();
  }

  void unPauseTimer() => startTimer(_start);

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('COUNTDOWN'),
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
        //START / UNPAUSE
        Visibility(
          visible: !isCounting,
          child: ElevatedButton.icon(
              icon: const Icon(Icons.play_arrow),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                !isCounting && time == '5:00'
                    ? startTimer(300)
                    : unPauseTimer();
                setState(() {
                  isCounting ? isCounting = false : isCounting = true;
                });
              },
              label: !isCounting && time == '5:00'
                  ? const Text('START',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
                  : const Text('UNPAUSE',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700))),
        ),

        //PAUSE
        Visibility(
          visible: isCounting,
          child: ElevatedButton.icon(
            icon: const Icon(Icons.pause),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {
              pauseTimer();
              setState(() {
                isCounting ? isCounting = false : isCounting = true;
              });
            },
            label: const Text('PAUSE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
        ),
        // RESET
        Visibility(
          visible: !isCounting && time != '5:00',
          child: ElevatedButton.icon(
              icon: const Icon(Icons.refresh),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                pauseTimer();
                _timer.cancel();
                setState(() {
                  time = '5:00';
                });
              },
              label: const Text('RESET',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
        ),
      ],
    );
  }
}
