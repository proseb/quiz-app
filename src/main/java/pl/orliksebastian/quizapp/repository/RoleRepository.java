package pl.orliksebastian.quizapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.orliksebastian.quizapp.entity.Role;

public interface RoleRepository extends JpaRepository<Role,Long> {
}
