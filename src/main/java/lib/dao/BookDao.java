package lib.dao;
import lib.model.Book;

import java.util.List;

public interface BookDao {
    List<Book> getBooks();
    List<Book> searchBooks(String title);

    Book getBook(int id);
    void addBook(Book book);
    void updateBook(Book book);
    void updateReadAlready(int id);
    void deleteBook(int id);
}
