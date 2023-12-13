import 'package:flutter/material.dart';

class ListSepha extends StatelessWidget {
  const ListSepha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('السِّبحَة', style: TextStyle(fontSize: 40))),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Sebha(sebhaName: 'سبحان الله'),
              Sebha(sebhaName: 'الحمد لله'),
              Sebha(sebhaName: 'لا إله إلا الله'),
              Sebha(sebhaName: 'الله اكبر'),
              Sebha(sebhaName: "لا حول ولا قوة إلا بالله"),
              Sebha(sebhaName: "صلِّ على سيدنا مُحمد"),
            ],
          ),
        ));
  }
}

class Sebha extends StatefulWidget {
  const Sebha({
    super.key,
    required this.sebhaName,
  });
  final String sebhaName;

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int cuonterNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.sebhaName,
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        Center(
          child: IconButton(
            onPressed: () {
              setState(() {
                cuonterNum += 1;
              });
            },
            icon: CircleAvatar(
              radius: 120,
              backgroundColor: const Color(0xff1AACAC),
              child: Center(
                child: Text(
                  '$cuonterNum',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 80, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white70)),
              onPressed: () {
                setState(() {
                  cuonterNum = 0;
                });
              },
              child: const Text(
                'إعادة ضبط',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}
