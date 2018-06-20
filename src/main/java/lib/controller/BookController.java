package lib.controller;

import lib.services.BookService;
import lib.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BookController {
    @Autowired
    BookService bookService;

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public ModelAndView getBooks(@RequestParam(required = false) Integer page) {
        ModelAndView modelAndView = new ModelAndView("books");
        List<Book> books = bookService.getBooks();

        PagedListHolder<Book> holder = new PagedListHolder<Book>(books);
        holder.setPageSize(10);
        modelAndView.addObject("maxPages", holder.getPageCount());

        if (page == null || page < 1 || page > holder.getPageCount()) page = 1;
        modelAndView.addObject("page", page);

        if (page == null || page < 1 || page > holder.getPageCount()) {
            holder.setPage(0);
            modelAndView.addObject("getBooks", holder.getPageList());
        } else if (page <= holder.getPageCount()) {
            holder.setPage(page - 1);
            modelAndView.addObject("getBooks", holder.getPageList());
        }

        modelAndView.addObject("book", new Book());
        modelAndView.addObject("pageTitle", "Books");

        return modelAndView;
    }

    @RequestMapping(value = "/books/{id}")
    public ModelAndView getBook(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView("read");
        Book book = bookService.getBook(id);
        modelAndView.addObject("book", book);
        modelAndView.addObject("pageTitle", book.getTitle());

        return modelAndView;
    }

    @RequestMapping(value = "/books/new", method = RequestMethod.GET)
    public ModelAndView newBook(ModelAndView modelAndView) {
        modelAndView.addObject("book", new Book());
        modelAndView.addObject("pageTitle", "Add book");
        modelAndView.setViewName("add");
        return modelAndView;
    }

    @RequestMapping(value = "/books/save", method = RequestMethod.POST)
    public String saveBook(@ModelAttribute Book book) {
        if (book.getId() == 0) bookService.addBook(book);
        else bookService.updateBook(book);
        return "redirect:/books/" + book.getId();
    }

    @RequestMapping(value = "/books/{id}/edit", method = RequestMethod.GET)
    public ModelAndView editBook(@PathVariable("id") int id) {
        Book book = bookService.getBook(id);
        ModelAndView modelAndView = new ModelAndView("add");
        modelAndView.addObject("book", book);
        modelAndView.addObject("pageTitle", "Edit book");
        return modelAndView;
    }

    @RequestMapping(value = "/books/{id}/markread", method = RequestMethod.GET)
    public String markRead(@PathVariable("id") int id) {
        bookService.updateReadAlready(id);
        return "redirect:/books/" + id;
    }

    @RequestMapping(value = "/books/{id}/delete", method = RequestMethod.GET)
    public String deleteBook(@PathVariable("id") int id) {
        bookService.deleteBook(id);
        return "redirect:/books";
    }

    @RequestMapping(value = "/books/search", method = RequestMethod.GET)
    public String search() {
        return "result";
    }

    @RequestMapping(value = "/books/result", method = RequestMethod.POST)
    public ModelAndView result(@RequestParam String title) {
        ModelAndView modelAndView = new ModelAndView("result");
        modelAndView.addObject("resultList", bookService.searchBooks(title));
        modelAndView.addObject("pageTitle", "Search results");
        modelAndView.addObject("key", title);
        return modelAndView;
    }

}
