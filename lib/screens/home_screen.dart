import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/screens/login_screen.dart';
import 'package:mobx_example/store/list_store.dart';
import 'package:mobx_example/store/login_store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ListStore listStore = ListStore();

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Lista Telefonica',
                      style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold
                      )
                  ),

                  IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: (){
                      Provider.of<LoginStore>(context, listen: false).logOut();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MyHomePage(),
                          //ProductPage
                        ),
                      );
                    },
                  ),

                ],
              ),
            ),

            Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [

                        Observer(
                          builder: (_){
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    //color: ConstantColor.colorPrimary,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(width: 1, color: Colors.black38)),
                                  height: MediaQuery.of(context).size.height * 0.08,
                                  width: MediaQuery.of(context).size.width / 1.9,
                                  child: Center(
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration.collapsed(
                                        border: InputBorder.none,
                                        hintText: 'Número',
                                      ),
                                      keyboardType: TextInputType.number,
                                      controller: textEditingController,
                                      onChanged: listStore.setNewTodoTitle,
                                      // obscureText: true,
                                    ),
                                  ),
                                ),

                                listStore.isFormValid ? Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: IconButton(
                                    icon: Icon(Icons.add, color: Colors.black,),
                                    onPressed: (){
                                      listStore.addTodoTitle();
                                      textEditingController.clear();
                                    },
                                    color: Colors.black38,
                                  ),
                                ) : Container(),
                              ],
                            );
                          }
                        ),


                        Expanded(
                          child: Observer(
                            builder: (_){
                              return ListView.separated(
                                separatorBuilder: (_, __) => const Divider(),
                                itemCount:  listStore.todoList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final todo = listStore.todoList[index];
                                  return Observer(
                                    builder: (_){
                                      return ListTile(
                                        title: Text(
                                          todo.title,
                                          style: TextStyle(
                                            decoration: todo.done ?
                                                TextDecoration.lineThrough : TextDecoration.none
                                          ),
                                        ),
                                        onTap: todo.toggleDone,
                                      );
                                    }
                                  );
                                },
                              );
                          }),

                        )

                      ],
                    ),
                  ),
                ),
            ),

          ],
        ),
      ),
    );
  }
}
