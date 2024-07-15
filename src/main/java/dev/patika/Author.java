package dev.patika;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "authors")

public class Author {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "author_id", nullable = false)
    private int id;

    @Column(name = "author_name", nullable = false)
    private String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "author_date", nullable = false)
    private LocalDate date;

    @Column(name = "author_country", nullable = false)
    private String country;

    @Id
    @Column(name = "author_book_id", nullable = false)
    private int book_id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "author_book_id", referencedColumnName = "book_id")
    private Book book;

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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}
