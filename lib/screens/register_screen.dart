import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: const Text(
                    'REGISTA-SE',
                    style:
                    TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(290, 50, 0, 0),
                  child: const Text(
                    '.',
                    style: TextStyle(
                        fontSize: 120.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      //color: ConstantColor.colorPrimary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black38)),
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Center(
                      child: TextFormField(
                        maxLines: null,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          /* border: UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(15),
                         // borderSide: new BorderSide(width: 1, color: Colors.black38),
                        ),*/
                          hintText: 'Telefone',
                        ),

                        validator: (value) {
                        },
                        keyboardType: TextInputType.number,
                        controller: null,
                        // obscureText: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      //color: ConstantColor.colorPrimary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black38)),
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Center(
                      child: TextFormField(
                        maxLines: null,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          /* border: UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(15),
                         // borderSide: new BorderSide(width: 1, color: Colors.black38),
                        ),*/
                          hintText: 'Senha',
                        ),

                        validator: (value) {
                        },
                        keyboardType: TextInputType.text,
                        controller: null,
                        // obscureText: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      //color: ConstantColor.colorPrimary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black38)),
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Center(
                      child: TextFormField(
                        maxLines: null,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          /* border: UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(15),
                            borderSide: new BorderSide(width: 1, color: Colors.black38),
                          ),*/
                          hintText: 'Apelido',
                        ),

                        validator: (value) {
                        },
                        keyboardType: TextInputType.text,
                        controller: null,
                        // obscureText: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Container(
                      height: 60.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              'INSCREVA-SE',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 60,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:

                        const Center(
                          child: Text('VOLTAR',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),


                      ),
                    ),
                  ),
                ],
              )),
          // SizedBox(height: 15.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'New to Spotify?',
          //       style: TextStyle(
          //         fontFamily: 'Montserrat',
          //       ),
          //     ),
          //     SizedBox(width: 5.0),
          //     InkWell(
          //       child: Text('Register',
          //           style: TextStyle(
          //               color: Colors.green,
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               decoration: TextDecoration.underline)),
          //     )
          //   ],
          // )
        ]));
  }
}
