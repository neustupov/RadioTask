package ru.neustupov.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.neustupov.model.Task;
import ru.neustupov.servise.TaskService;

import java.util.ArrayList;
import java.util.List;

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

    @RequestMapping("/remove/{id}")
    public String removeTask(@PathVariable("id") int id) {
        this.taskService.delete(id);
        return "redirect:/";
    }

    @RequestMapping("/edit/{id}")
    public String editTask(@PathVariable("id") int id, Model model) {
        TaskController.id = id;
        model.addAttribute("listTasks", taskService.getAllTasks());
        return "redirect:/";
    }

    @RequestMapping("taskdata{id}")
    public String taskData(@PathVariable("id") int id, Model model) {
        model.addAttribute("task", taskService.getTask(id));
        return "redirect:/";
    }

    @RequestMapping(value = "/")
    public ModelAndView listOfTasks(@RequestParam(required = false) Integer page,
                                    @RequestParam(required = false) String taskPhoneNumber) {
        ModelAndView modelAndView = new ModelAndView("index");
        if (id != 0) {
            modelAndView.addObject("task", taskService.getTask(id));
            id = 0;
        } else {
            modelAndView.addObject("task", new Task());
        }

        List<Task> tasks = null;
        if (taskPhoneNumber == null || taskPhoneNumber.length() < 3) {
            tasks = taskService.getAllTasks();
        } else {
            List<Task> tempTasks = taskService.getAllTasks();
            tasks = new ArrayList<Task>();
            for (Task tempTask : tempTasks) {
                if (tempTask.getPhonenumber().toLowerCase().contains(taskPhoneNumber.toLowerCase())) {
                    System.out.println("filter: " + tempTask);
                    tasks.add(tempTask);
                }
            }
        }
        PagedListHolder<Task> pagedListHolder = new PagedListHolder<Task>(tasks);
        pagedListHolder.setPageSize(7);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            page = 1;
        }

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("listTasks", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("listTasks", pagedListHolder.getPageList());
        }
        return modelAndView;
    }
}
