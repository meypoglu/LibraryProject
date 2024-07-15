package dev.patika;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "categories")

public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id", nullable = false)
    private int id;

    @Column(name = "category_name", nullable = false)
    private String name;

    @Column(name = "category_description", nullable = false)
    private String description;

    @Id
    @Column(name = "category_book_id", nullable = false)
    private int book_id;

    @ManyToMany(mappedBy = "categoryList", fetch = FetchType.LAZY)
    private List<Book> bookList;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }
}
