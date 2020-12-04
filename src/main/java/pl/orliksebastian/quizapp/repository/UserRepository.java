package pl.orliksebastian.quizapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.orliksebastian.quizapp.entity.User;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String username);
}
