import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_feirinha/src/auth/components/custom_text.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  children: [ 
                    TextSpan(
                      text: 'Feir',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'inha',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      ],
                    ),
                  ),
      SizedBox(
        height: 50,
        child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 25.0,
          fontFamily: 'Horizon',
          color: Colors.white
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText('Frutas'),
            RotateAnimatedText('Legumes'),
            RotateAnimatedText('Verduras'),
            RotateAnimatedText('Temperos'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
            ),
      ),
    ],
  ),
),


          Container(
            //espaçamento na horizontal e vertical
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            //arredondamento de bordas
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top:Radius.circular(45)
              )
            ),
            child: Column(
              children: [
                //email
                CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),
                //senha
                CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isObscure: true,
                ),
                //botão entrar
                SizedBox(
                  // altura
                  height: 50,
                  //comprimento
                  width: 600,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                    ),
                    onPressed: () {}, 
                  child: Text('Entrar',
                  style: TextStyle(fontSize: 18,),),),
                ),
                Row(children: [
                  Expanded(child: Divider(
                    color: Colors.grey.withAlpha(90),
                    thickness: 1,
                  ),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text('Ou'),
                  ), 
                  Expanded(child: Divider(
                    color: Colors.grey.withAlpha(90),
                    thickness: 1,
                  ),),    
                ],),
                SizedBox(
                  height: 50,
                  width: 600,
                  child: OutlinedButton(onPressed: () {},
                  //formatação do botão
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    side: BorderSide(
                      width: 1,
                      color: Colors.black,
                    )
                  ),
                  child: Text('Criar conta',style: TextStyle(fontSize: 18,),),),
                  ),

              ],
            ),
          )
        ],
      ),
    );
  }
}