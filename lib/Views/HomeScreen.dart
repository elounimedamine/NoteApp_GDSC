import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp_gdsc/Components/Containers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textController =
      TextEditingController(text: 'Search notes');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          onPressed: () {},
          backgroundColor: Colors.yellow[600],
          child: const Icon(
            Icons.add,
            size: 40,
          )),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Text(
                  'Notepad',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: CupertinoSearchTextField(
                  borderRadius: BorderRadius.circular(50),
                  backgroundColor: Colors.white,
                  controller: _textController,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      MyContainer(
                        child: const Column(
                          children: [
                            Text(
                              'Todays grocery list',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('June 26, 2022 08:05 PM'),
                          ],
                        ),
                        color: Colors.green[200],
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 70),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      MyContainer(
                        child: const Column(
                          children: [
                            Text(
                              'Rich dad Poor dad quotes',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('June 22, 2022 05:00 PM'),
                          ],
                        ),
                        color: Colors.yellow[200],
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 70),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
