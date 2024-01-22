import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              'PRESSIONE AO ENTRAR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(padding: const EdgeInsets.all(20),
            child:  Container(
              child: Text(
                count.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 100,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  fixedSize: const Size.fromRadius(40),
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.deepOrange,
                ),
                child: const Text(
                  "-",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  fixedSize: const Size.fromRadius(40),
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.deepOrange,
                ),


                child: const Text(
                  "+",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );;
  }
}









