package lib.dao;

import lib.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
@SuppressWarnings("unchecked")
public class BookDaoImpl implements BookDao {
    @Autowired
    SessionFactory factory;

    public List<Book> getBooks() {
        return factory.getCurrentSession().createQuery("from Book").list();
    }

    public List<Book> searchBooks(String title){
        String sQuery = "from Book b where b.title like :title";
        Query<Book> query = factory.getCurrentSession().createQuery(sQuery);
        query.setParameter("title", "%" + title + "%");
        return query.list();
    }

    public Book getBook(int id) {
        return factory.getCurrentSession().load(Book.class, id);
    }

    public void addBook(Book book) {
        Session session = factory.getCurrentSession();
        session.persist(book);
    }

    public void updateBook(Book book) {
        Session session = factory.getCurrentSession();
        session.update(book);
    }

    public void updateReadAlready(int id) {
        Session session = factory.getCurrentSession();
        Query<Book> query = session.createQuery("from Book b where b.id like :id");
        query.setParameter("id", id);
        Book book = query.list().get(0);
        if (!book.isReadAlready()) book.setReadAlready(true);
        session.update(book);
    }

    public void deleteBook(int id) {
        Session session = factory.getCurrentSession();
        Book book = session.load(Book.class, id);
        if (book != null) session.delete(book);
    }
}
