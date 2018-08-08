package pl.coderslab.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.entity.Product;
import pl.coderslab.entity.Recipe;

import javax.validation.Valid;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    public List<Product> findAllByCategory (String category);
//    public List<Product> findAllByUserId (Long id);


    @Query("select p from Product p where p.category like :category")
    public List<Product> findAllByCategoryVegetables(@Param("category") String category);

    Product findByName(String name);

    public List<Product> findAllByRecipes(List<Recipe> recipies);
}
