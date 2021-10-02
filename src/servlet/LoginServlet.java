package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeanLoginJsp;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BeanLoginJsp loginBean = new BeanLoginJsp();
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		RequestDispatcher requestDispatcher = null;
		if (loginBean.podeLogar(login, senha)) {
			System.out.println("Logado com sucesso!");
			requestDispatcher = request.getRequestDispatcher("loginLiberado.jsp");
		} else {
			System.out.println("Acesso negado ao sistema");
			requestDispatcher = request.getRequestDispatcher("loginNegado.jsp");
		}
		requestDispatcher.forward(request, response);
	}

}
