package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Recipe;

import java.util.List;

public interface RecipieRepository extends JpaRepository<Recipe, Long> {
}
