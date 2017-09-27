package ru.neustupov.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.neustupov.model.Task;
import ru.neustupov.servise.TaskService;

@Controller
public class TaskController {

    private static int id = 0;

    @Autowired
    private TaskService taskService;

    @RequestMapping(value = "tasks/add", method = RequestMethod.POST)
    public String addTask(@ModelAttribute("task")Task task){
        if(task.getId() == 0) taskService.add(task);
        else taskService.edit(task);
        return "redirect:/";
    }
}
