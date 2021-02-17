package com.company.study;

import java.util.Arrays;
import java.util.Objects;

public class Book {
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return yearOfPublishing == book.yearOfPublishing &&
                Objects.equals(title, book.title) &&
                Arrays.equals(authors, book.authors);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(title, yearOfPublishing);
        result = 31 * result + Arrays.hashCode(authors);
        return result;
    }

    private String title;
    private int yearOfPublishing;
    private String[] authors;

    public Book(String title, int yearOfPublishing, String[] authors) {
        this.title = title;
        this.yearOfPublishing = yearOfPublishing;
        this.authors = authors;
    }

    @Override
    public String toString() {
        return "title=" + title + ","
                + "yearOfPublishing=" + yearOfPublishing + ","
                + "authors=" + Arrays.toString(authors).replaceAll(" ", "");
    }
}
