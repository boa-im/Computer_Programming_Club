/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import club.business.*;
import club.data.*;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Boa Im
 */
public class BIMemberAdminController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("saveMember")) {
            String url = saveMember(request, response);
            ArrayList<Member> members = MemberDB.selectMembers();
            request.setAttribute("members", members);
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }
        else if (action != null && action.equals("deleteMember")) {
            String email = request.getParameter("email");
            Member member = MemberDB.selectMember(email);
            MemberDB.delete(member);
            ArrayList<Member> members = MemberDB.selectMembers();
            request.setAttribute("members", members);
            getServletContext().getRequestDispatcher("/BIDisplayMembers.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/BIDisplayMembers.jsp";

        String action = request.getParameter("action");
        if (action == null) {
            action = "displayMembers";
        }

        if (action.equals("displayMembers")) {
            ArrayList<Member> members = MemberDB.selectMembers();
            request.setAttribute("members", members);
        } else if (action.equals("addMember")) {
            url = "/BIAddMember.jsp";
        } else if (action.equals("editMember")) {
            String email = request.getParameter("email");
            Member member = MemberDB.selectMember(email);
            request.setAttribute("member", member);
            url = "/BIEditMember.jsp";
        } else  if (action.equals("removeMember")) {
            String email = request.getParameter("email");
            Member member = MemberDB.selectMember(email);
            request.setAttribute("member", member);
            url = "/BIRemoveMember.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    private String saveMember(HttpServletRequest request, HttpServletResponse response) {
        String url = "/BIDisplayMembers.jsp";
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String program = request.getParameter("program");
        String year = request.getParameter("year");
        
        String db_operation = request.getParameter("db_operation");

        Member member = new Member(name, email);

        if (!member.isValid()) {
            if (db_operation != null && db_operation.equals("update")) {
                url = "/BIEditMember.jsp";
                Member original = MemberDB.selectMember(email);
                request.setAttribute("member", original);
                String message = "Cannot update this record. Please provide a valid name";
                request.setAttribute("message", message);
            }
            else  {
                url = "/BIAddMember.jsp";
                String message = "Cannot insert a new record. Please provide a valid name and/or email";
                request.setAttribute("message", message);
            }
        } 
        else {
            member.setEmailAddress(email);
            member.setFullName(name);
            member.setPhoneNumber(phone);
            member.setProgramName(program);
            member.setYearLevel(Integer.valueOf(year));
            
            if (MemberDB.selectMember(email) == null) {
                MemberDB.insert(member);
            }
            else {
                MemberDB.update(member);
            }
        }

        return url;
    }
}
