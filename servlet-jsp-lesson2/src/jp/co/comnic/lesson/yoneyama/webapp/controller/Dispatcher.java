package jp.co.comnic.lesson.yoneyama.webapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;

public interface Dispatcher {
    public void dispatch() throws ServletException, IOException;
}