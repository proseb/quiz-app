package pl.orliksebastian.quizapp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.orliksebastian.quizapp.services.QuestionService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("question")
public class QuestionController {

    private final QuestionService questionService;
    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }


    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("questions", questionService.findAll());
        return "question/index";
    }

    @RequestMapping(value = "submit", method = RequestMethod.POST)
    public String submit(HttpServletRequest request) {
//        if (request.authenticate(request)) {
            int score = 0;
            String[] questionIds = request.getParameterValues("questionId");
            for (String questionId : questionIds) {
                int answerIdCorrect = questionService.findAnswerIdCorrect(Integer.parseInt(questionId));
                if (answerIdCorrect == Integer.parseInt(request.getParameter("question_" + questionId))) {
                    score++;
                }
            }

            request.setAttribute("score", score);
//        }
        return "question/result";
    }
}
