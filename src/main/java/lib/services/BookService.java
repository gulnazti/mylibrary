package lib.services;
import lib.model.Book;

import java.util.List;

public interface BookService {
    List<Book> getBooks();
    List<Book> searchBooks(String title);

    Book getBook(int id);
    void addBook(Book book);
    void updateBook(Book book);
    void updateReadAlready(int id);
    void deleteBook(int id);
}
