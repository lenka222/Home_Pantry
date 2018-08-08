package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Product;
import pl.coderslab.entity.UserProducts;

import java.util.List;

public interface UserProductsRepository extends JpaRepository<UserProducts, Long> {


}
