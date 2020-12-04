package pl.orliksebastian.quizapp.services;

public interface SecurityService {

    String findLoggedInUsername();

    void autologin(String username, String password);
}
