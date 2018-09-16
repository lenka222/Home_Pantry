package pl.coderslab.entity;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "recipe")
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany
    private List<Product> ingredients = new ArrayList<>();

    @NotNull
    @NotBlank
    private String howToPrepare;

    @OneToMany
    private List<User> users = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Product> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<Product> ingredients) {
        this.ingredients = ingredients;
    }

    public String getHowToPrepare() {
        return howToPrepare;
    }

    public void setHowToPrepare(String howToPrepare) {
        this.howToPrepare = howToPrepare;
    }

}
