//eager singleton
class Singleton {
  static Singleton _instance = Singleton._();
  Singleton._();
  static Singleton get instance => _instance;
  void someMethod() {}
}

//lazy singleton
class Singleton1 {
  static Singleton1? _instance;

  Singleton1._();

  static Singleton1 get instance => _instance ??= Singleton1._();

  void someMethod() {}
}

//normal class
class NonSingleton {
  void nonSomeMethod() {}
}
