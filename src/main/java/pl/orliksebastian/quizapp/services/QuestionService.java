package pl.orliksebastian.quizapp.services;

import pl.orliksebastian.quizapp.entity.Question;

public interface QuestionService {

 Iterable<Question> findAll();

 int findAnswerIdCorrect(int questionId);
}
