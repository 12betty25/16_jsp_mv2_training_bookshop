package bookshop.controller.qna;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.dao.QNADAO;
import bookshop.dto.QNADTO;

/**
 * Servlet implementation class QNAList
 */
@WebServlet("/qNAList")
public class QNAList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<QNADTO> qnaList = QNADAO.getInstance().getQNAList();
		
		RequestDispatcher dis = request.getRequestDispatcher("views/customer/qnaList.jsp");
		dis.forward(request, response);
		
	}


}
