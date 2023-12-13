import 'package:flutter/material.dart';

class Dveloper extends StatelessWidget {
  const Dveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 109, 158),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 46, 109, 158),
          centerTitle: true,
          title: const Text('مَن نحن؟',
              style: TextStyle(fontSize: 40, color: Colors.white))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/azkarimage/myphoto.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text('Dev:Mohamed Elkheety',
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/azkarimage/gmail (1).png',
                  width: 40,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('mohamedelkheaty97@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
