class RepositoryUrls {
// all the function about uri and http0
  RepositoryUrls._();

  static const String _baseUrl = 'jsonplaceholder.typicode.com';
  static const String _todos = 'todos';

  static Uri getTodoById(int id) => Uri.https(_baseUrl, '/$_todos/$id');
  static Uri getTodos = Uri.https(_baseUrl, '/$_todos');

  static Uri addTodo = Uri.https(_baseUrl, '/$_todos');
}
