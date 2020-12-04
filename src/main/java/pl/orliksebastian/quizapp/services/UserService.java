package pl.orliksebastian.quizapp.services;

import pl.orliksebastian.quizapp.entity.User;

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
