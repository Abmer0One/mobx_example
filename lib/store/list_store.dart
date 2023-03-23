import 'package:mobx/mobx.dart';
import 'package:mobx_example/store/todo_store.dart';

part 'list_store.g.dart';


class ListStore = _ListStore with  _$ListStore;

abstract class _ListStore with Store{


  @observable
  String newTodoTitle = '';

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  @action
  void addTodoTitle(){
    todoList.insert(0, TodoStore(newTodoTitle));
    newTodoTitle = '';
  }

}