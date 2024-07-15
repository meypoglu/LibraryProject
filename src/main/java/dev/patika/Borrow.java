package dev.patika;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "borrows")

public class Borrow {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "borrow_id", nullable = false)
    private int id;

    @Column(name = "borrow_name", nullable = false)
    private String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "borrow_date", nullable = false)
    private LocalDate borrowDate;

    @Temporal(TemporalType.DATE)
    @Column(name = "borrow_return_date", nullable = false)
    private LocalDate returnDate;

    @Id
    @Column(name = "borrow_book_id", nullable = false)
    private int book_id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "borrow_book_id", referencedColumnName = "book_id")
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

    public LocalDate getBorrowDate() {
        return borrowDate;
    }

    public void setBorrowDate(LocalDate borrowDate) {
        this.borrowDate = borrowDate;
    }

    public LocalDate getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(LocalDate returnDate) {
        this.returnDate = returnDate;
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
