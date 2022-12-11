import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       /* Model model = Model.getInstance();
        List<String> logins = model.list();
        req.setAttribute("log", logins);
        if (!logins.isEmpty()) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/listShow.jsp");
            requestDispatcher.forward(req, resp);
        }*/
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        getServletContext().getRequestDispatcher("/my-registration.jsp").forward(req, resp);
        User user = new User(login, password);
        Model model = Model.getInstance();
        model.add(user);
    }


}
