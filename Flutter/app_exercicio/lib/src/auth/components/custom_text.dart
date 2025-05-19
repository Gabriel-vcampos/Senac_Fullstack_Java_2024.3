import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  // passando dados para ícone e label
  final IconData icon;
  final String label;
  final bool isObscure;


  // criando nosso controller
  final TextEditingController? controller;

  const CustomTextField({super.key, 
                        required this.icon, 
                        required this.label, 
                        this.isObscure = false,
                        this.controller});
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // variavel para configurar a ocultação da senha
  bool isSecret = false;
  @override
  void initState(){
    super.initState(); 
    isSecret = widget.isObscure;
    }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
                      controller: widget.controller,
                      obscureText: isSecret,
                      decoration: InputDecoration(
                        // passando dados do ícone e label e exibição
                        prefixIcon: Icon(widget.icon),
                        labelText: widget.label,
                        // -- ícone de exibição
                        suffixIcon: widget.isObscure? IconButton(
                          onPressed: () {
                            setState(() {
                              isSecret = !isSecret;
                            });
                          },
                        icon: Icon(isSecret? Icons.visibility: Icons.visibility_off),) : null,
                        // espaçamento dentro do elemento
                        isDense: true,
                        // arredondamento das bordas
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18)
                        )
                      ),
                    ),
    );
  }
}