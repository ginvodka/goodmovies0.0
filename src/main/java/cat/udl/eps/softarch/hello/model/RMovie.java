package cat.udl.eps.softarch.hello.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;
import java.util.Date;

/**
 * Created by http://rhizomik.net/~roberto/ modify j e m
 */
@Entity
public class RMovie {

    private long id;
    private String content;
    private String email;
    private Date date;


    private String title;
    private String author;
    private String director;
    private String genres;
    private String description;
    private Date release;
    private String review;
    private int times;

    public RMovie(long id, String content, String email, Date date, String title, String author, String director, String genres, String description, Date release, String review, int times) {
        this.id = id;
        this.content = content;
        this.email = email;
        this.date = date;
        this.title = title;
        this.author = author;
        this.director = director;
        this.genres = genres;
        this.description = description;
        this.release = release;
        this.review = review;
        this.times = times;
    }

    public long getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public String getEmail() {
        return email;
    }

    public Date getDate() {
        return date;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public String getDirector() {
        return director;
    }

    public String getGenres() {
        return genres;
    }

    public String getDescription() {
        return description;
    }

    public Date getRelease() {
        return release;
    }

    public String getReview() {
        return review;
    }

    public int getTimes() {
        return times;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public void setGenres(String genres) {
        this.genres = genres;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setRelease(Date release) {
        this.release = release;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public void setTimes(int times) {
        this.times = times;
    }
}
