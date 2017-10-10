package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
   private static final long seriaxlVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
      rd.forward(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      String name = request.getParameter("name");
      String nickname = request.getParameter("nickname");
      
      System.out.printf("id : %s, pwd : %s name : %s nickname : %s\n", id, pwd, name, nickname);
      
      boolean result = false;
      if(result){
         
         RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp"); //true면 로그인화면으로
         rd.forward(request, response);
      }
      else{ //일치하지 않으면 다시 로그인하세요 !!
         request.setAttribute("msg","error");
         RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp"); 
         rd.forward(request, response);
      }
   }

}