import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore =  _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  _LoginStore(){
    autorun((_){
      print(formularioEstaValido);
    });
  }

  @observable
  String telefone = '';

  @action
  void setTelefone(String valor_telefone) => telefone = valor_telefone;

  @observable
  String senha = '';

  @action
  void setSenha(String valor_senha) => senha = valor_senha;

  @observable
  bool senha_visivel = false;

  @action
  void setSenhaVisivel() => senha_visivel = !senha_visivel;

  @observable
  bool processar_dados = false;


  @observable
  bool loggedIn = false;

  @action
  Future <void> processarDados() async {
    processar_dados = true;
    await Future.delayed(Duration(seconds: 5));
    processar_dados = false;
    loggedIn = true;
    telefone = '';
    senha = '';
  }

  @action
  Future <void> logOut() async {
    loggedIn = false;
  }

  @computed
  bool get formularioEstaValido => telefone.length == 9 && senha.length == 6;


  @computed
  bool get senhaVisivel => senha_visivel;

}

//flutter packages pub run build_runner watch
