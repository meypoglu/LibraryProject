package dev.patika;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "books")

public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id", columnDefinition = "SERIAL", nullable = false)
    private int id;

    @Column(name = "book_name", nullable = false)
    private String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "book_date", nullable = false)
    private LocalDate date;

    @Column(name = "book_stock", nullable = false)
    private int stock;

    @OneToMany(mappedBy = "book")
    private List<Borrow> borrowList;

    @OneToMany(mappedBy = "publisher")
    private List<Publisher> publisherList;

    @OneToMany(mappedBy = "author")
    private List<Author> authorList;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "bookToCategory",
            joinColumns = {@JoinColumn(name = "bookToCategory_book_id") },
            inverseJoinColumns = {@JoinColumn(name = "bookToCategory_category_id")})
    private List<Category> categoryList;


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

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public List<Borrow> getBorrowList() {
        return borrowList;
    }

    public void setBorrowList(List<Borrow> borrowList) {
        this.borrowList = borrowList;
    }

    public List<Publisher> getPublisherList() {
        return publisherList;
    }

    public void setPublisherList(List<Publisher> publisherList) {
        this.publisherList = publisherList;
    }

    public List<Author> getAuthorList() {
        return authorList;
    }

    public void setAuthorList(List<Author> authorList) {
        this.authorList = authorList;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }
}
