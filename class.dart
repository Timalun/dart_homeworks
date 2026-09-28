class Book {
  String _title;
  String _author;
  double _rating;
  Book(this._title, this._author) : _rating = 0.0;
  Book.withRating(this._title, this._author, double rating) : _rating = 0.0 {
    this.rating = rating;
  }
  String get title => _title;
  String get author => _author;
  double get rating => _rating;
  set rating(double newRating) {
    if (newRating >= 0 && newRating <= 10) {
      _rating = newRating;
    } else {
      print('Ошибка: Рейтинг для книги "$_title" должен быть от 0 до 10! Оставлено текущее значение: $_rating');
    }
  }
  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}
class Library {
  String name;
  final List<Book> _books = [];
  Library(this.name);
  List<Book> get books => _books;
  void addBook(Book b) {
    _books.add(b);
  }
  void showBooks() {
    print('Library: $name');
    print('Books list:');
    if (_books.isEmpty) {
      print('Библиотека пуста.');
      return;
    }
    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title} (Author: ${_books[i].author}, Rating: ${_books[i].rating})');
    }
  }
}