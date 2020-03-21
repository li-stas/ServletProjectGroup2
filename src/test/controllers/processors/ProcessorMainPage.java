package test.controllers.processors;

import test.model.ProcessorResult;

import javax.servlet.http.HttpServletRequest;

public class ProcessorMainPage extends Processor {
    public ProcessorMainPage() {
        action = "mainPage";
    }

    @Override
    public ProcessorResult getResult(HttpServletRequest request) {
        String userName = request.getParameter("userName");
        request.getSession().setAttribute("userName", userName);
        return new ProcessorResult("/main", "", true);
    }
}
