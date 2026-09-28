import 'class.dart';

void main() {
  print('--- Создание книг ---');

  Book book1 = Book('Harry Potter', 'J.K. Rowling');
  
  Book book2 = Book.withRating('Sherlock Holmes', 'Arthur Conan Doyle', 9.5);
  
  Book book3 = Book('The Hobbit', 'J.R.R. Tolkien');
  book3.rating = 8.8; 
  print('Книги успешно созданы!\n');
  Library cityLib = Library('City Library');
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);
  cityLib.showBooks();
  print('Total books in library: ${cityLib.books.length}');
}