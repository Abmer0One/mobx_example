import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:mobx_example/screens/home_screen.dart';
import 'package:mobx_example/screens/register_screen.dart';
import 'package:mobx_example/store/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  LoginStore ? loginStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loginStore = Provider.of<LoginStore>(context);

   autorun((_){
      loginStore!.loggedIn ?
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen(),
            //ProductPage
          ),
        ) : null;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 110, 0, 0),
                    child: const Text('Bem',
                        style: TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(16, 175, 0, 0),
                    child: const Text('Vindo',
                        style: TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(220, 140, 0, 0),
                    child: const Text('.',
                        style: TextStyle(
                            fontSize: 120,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Column(
                  children: <Widget>[

                    Container(
                      padding: const EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                        //color: ConstantColor.colorPrimary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black38)),
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(
                        child: Observer(
                          builder: (_){
                            return TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration.collapsed(
                                border: InputBorder.none,
                                hintText: 'Telefone',
                              ),
                              onChanged: loginStore!.setTelefone,
                              enabled: !loginStore!.processar_dados,
                              keyboardType: TextInputType.number,
                              controller: null,
                              // obscureText: true,
                            );
                          },
                        ),

                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      padding: const EdgeInsets.only(left: 30, right: 10),
                      decoration: BoxDecoration(
                        //color: ConstantColor.colorPrimary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black38)),
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Observer(
                                builder: (_){
                                  return TextFormField(
                                    maxLines: 1,
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration.collapsed(
                                      border: InputBorder.none,
                                      hintText: 'Senha',
                                    ),
                                    onChanged: loginStore!.setSenha,
                                    keyboardType: TextInputType.text,
                                    controller: null,
                                    enabled: !loginStore!.processar_dados,
                                    obscureText: !loginStore!.senha_visivel,
                                  );
                                },
                              ),
                            ),
                            Observer(builder: (_){
                              return InkWell(
                                  onTap: loginStore!.setSenhaVisivel,
                                  child: Icon(
                                      !loginStore!.senha_visivel ? Icons.visibility_off : Icons.visibility
                                  )
                              );
                            }),

                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),
                    Container(
                      alignment: const Alignment(1, 0),
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: const InkWell(
                        child: Text(
                          'Esqueci a Senha',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Observer(
                      builder: (_){
                        return Container(
                          height: 60,
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            //shadowColor: Colors.greenAccent,
                            color: loginStore!.formularioEstaValido ? Colors.green : Colors.black38,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: loginStore!.formularioEstaValido ? () {
                                loginStore!.processarDados();
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => HomeScreen(),
                                    //ProductPage
                                  ),
                                );*/
                              } : null,
                              child: Center(
                                child: loginStore!.processar_dados ? const CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation(Colors.white),
                                )
                                    :
                                Text(
                                   'LOGIN',
                                  style: TextStyle(
                                      color: loginStore!.formularioEstaValido ? Colors.white : Colors.white12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    ),

                    const SizedBox(height: 10),
                    Container(
                      height: 60,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[


                            Center(
                              child: Text('Log in with facebook',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'New to Spotify ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                const SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignupPage(),
                        //ProductPage
                      ),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
