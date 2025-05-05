import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController pesoControle = TextEditingController();
  final TextEditingController alturaControle = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String infoText = "Informe seus dados";

  void resetFields() {
    pesoControle.clear();
    alturaControle.clear();
    setState(() {
      infoText = "Informe seus dados";
      formKey = GlobalKey<FormState>();
    });
  }

  void calculateImc() {
    setState(() {
      double peso = double.parse(pesoControle.text);
      double altura = double.parse(alturaControle.text) / 100;
      double imc = peso / (altura * altura);

      if (imc < 18.6) {
        infoText = "Abaixo do peso (${imc.toStringAsPrecision(4)})";
      } else if (imc < 24.9) {
        infoText = "Peso ideal (${imc.toStringAsPrecision(4)})";
      } else if (imc < 29.9) {
        infoText = "Levemente acima do peso (${imc.toStringAsPrecision(4)})";
      } else if (imc < 34.9) {
        infoText = "Obesidade grau I (${imc.toStringAsPrecision(4)})";
      } else if (imc < 39.9) {
        infoText = "Obesidade grau II (${imc.toStringAsPrecision(4)})";
      } else {
        infoText = "Obesidade grau III (${imc.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: resetFields, icon: const Icon(Icons.refresh)),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.person_2_outlined,
                size: 120,
                color: Colors.green,
              ),
              Text(
                infoText,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.green, fontSize: 25.0),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Peso (kg)",
                  labelStyle: TextStyle(color: Colors.green),
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.green, fontSize: 25.0),
                controller: pesoControle,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Insira seu Peso!";
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.green),
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.green, fontSize: 25.0),
                controller: alturaControle,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Insira sua Altura!";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      calculateImc();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50,
          color: Colors.green,
          child: const Center(
            child: Text('Rodapé', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
