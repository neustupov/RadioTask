package ru.neustupov.servise.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.neustupov.dao.TaskDao;
import ru.neustupov.model.Task;
import ru.neustupov.servise.TaskService;

import java.util.List;

@Service
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskDao taskDao;

    @Transactional
    public void add(Task task) {
        taskDao.add(task);
    }

    @Transactional
    public void edit(Task task) {
        taskDao.edit(task);
    }

    @Transactional
    public void delete(int id) {
        taskDao.delete(id);
    }

    @Transactional
    public Task getTask(int id) {
        return taskDao.getTask(id);
    }

    @Transactional
    public List getAllTasks() {
        return taskDao.getAllTasks();
    }
}
