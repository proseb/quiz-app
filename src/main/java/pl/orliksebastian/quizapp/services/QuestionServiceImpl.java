package pl.orliksebastian.quizapp.services;


import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import pl.orliksebastian.quizapp.entity.Answer;
import pl.orliksebastian.quizapp.entity.Question;
import pl.orliksebastian.quizapp.repository.QuestionRepository;

@Repository
@Service("questionService")
public class QuestionServiceImpl implements QuestionService {

    private final QuestionRepository questionRepository;

    public QuestionServiceImpl(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }


    @Override
    public Iterable<Question> findAll() {
        return questionRepository.findAll();
    }

    @Override
    public int findAnswerIdCorrect(int questionId) {
        Question question = questionRepository.findById(questionId).get();
        for (Answer answer : question.getAnswers()) {
            if (answer.isCorrect()) {
                return answer.getId();
            }
        }
        return -1;
    }
}
