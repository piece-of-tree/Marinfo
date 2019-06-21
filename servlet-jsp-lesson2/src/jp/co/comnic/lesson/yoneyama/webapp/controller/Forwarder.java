package jp.co.comnic.lesson.yoneyama.webapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Forwarder extends AbstractDispatcher {

    public Forwarder(HttpServletRequest request, HttpServletResponse response, String path) {
        super(request, response, path);
    }

    @Override
    public void dispatch() throws ServletException, IOException {
        request.getRequestDispatcher(path).forward(request, response);
    }
}