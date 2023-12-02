import 'package:flutter/material.dart';
import 'package:teste_escribo/controller/controller.dart';

class HomeView extends StatelessWidget {
  final controller = Controller();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Desafio 1 Escribo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.8,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controller.input,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => controller.addIntegers(),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
                height: 50,
                width: size.width * 0.8,
                child: const Center(
                  child: Text('Calcular'),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ValueListenableBuilder(
              valueListenable: controller.result,
              builder: (context, value, child) =>
                  Text('Seu resultado é ${controller.result.value}'),
            )
          ],
        ),
      ),
    );
  }
}
