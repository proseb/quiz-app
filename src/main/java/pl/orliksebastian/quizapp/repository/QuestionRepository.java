package pl.orliksebastian.quizapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.orliksebastian.quizapp.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer> {
}
