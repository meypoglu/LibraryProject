package dev.patika;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "publishers")

public class Publisher {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "publisher_id", nullable = false)
    private int id;

    @Column(name = "publisher_name", nullable = false)
    private String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "publisher_date", nullable = false)
    private LocalDate date;

    @Column(name = "publisher_address", nullable = false)
    private int address;

    @Id
    @Column(name = "publisher_book_id", nullable = false)
    private int book_id;

    @ManyToOne
    @JoinColumn(name = "publisher_book_id", referencedColumnName = "book_id")
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

    public int getAddress() {
        return address;
    }

    public void setAddress(int address) {
        this.address = address;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }
}
