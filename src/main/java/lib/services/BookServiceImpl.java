package lib.services;
import lib.dao.BookDao;
import lib.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    BookDao bookDao;

    public List<Book> getBooks() {
        return bookDao.getBooks();
    }

    public List<Book> searchBooks(String title) {
        return bookDao.searchBooks(title);
    }

    public Book getBook(int id) {
        return bookDao.getBook(id);
    }

    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    public void updateReadAlready(int id) {
        bookDao.updateReadAlready(id);
    }

    public void deleteBook(int id) {
        bookDao.deleteBook(id);
    }

}
