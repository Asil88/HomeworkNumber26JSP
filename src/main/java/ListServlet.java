import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet("/listServlet")
public class ListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            Model model = Model.getInstance();
            List<String> users = model.list();

            req.setAttribute("login", users);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/listShow.jsp");
            requestDispatcher.forward(req, resp);
        }







       /* Model model = Model.getInstance();
        model.list();

        String login = req.getParameter("login");
        String password = req.getParameter("password");
        req.setAttribute("login", login);
        getServletContext().getRequestDispatcher("/listShow.jsp").forward(req, resp);*/

}