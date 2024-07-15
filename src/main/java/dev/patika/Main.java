package dev.patika;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

import java.time.LocalDate;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("library");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();

        Publisher publisher = new Publisher();
        publisher.setName("Deneme Yayıncılık");
        publisher.setDate(LocalDate.ofEpochDay(1989-01-01));
        publisher.setAddress("123 Deneme Sokak");
        entityManager.persist(publisher);

        Author author = new Author();
        author.setName("Deneme Denemeoğlu");
        author.setDate(LocalDate.ofEpochDay(1930-02-02));
        author.setCountry("Türkiye");
        entityManager.persist(author);

        Category category = new Category();
        category.setName("Deneme Türü");
        category.setDescription("Denemelik açıklamalar");
        entityManager.persist(category);

        Book book = new Book();
        book.setName("Denemenin Maceraları");
        book.setDate(LocalDate.ofEpochDay(1982-03-03));
        book.setStock(5);
        book.setPublisher(publisher);
        book.setAuthor(author);
        book.getCategoryList().add(category);
        entityManager.persist(book);

        Borrow borrow = new Borrow();
        borrow.setName("Denny Dennyko");
        borrow.setBorrowDate(LocalDate.now());
        borrow.setReturnDate(LocalDate.now().plusWeeks(2));
        borrow.setBook(book);
        entityManager.persist(borrow);

        book.getBorrowList().add(borrow);

        entityTransaction.commit();
        }
}