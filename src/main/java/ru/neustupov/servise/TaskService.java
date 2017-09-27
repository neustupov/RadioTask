package ru.neustupov.servise;

import ru.neustupov.model.Task;

import java.util.List;

public interface TaskService {
    void add(Task task);
    void edit(Task task);
    void delete(int id);
    Task getTask(int id);
    List getAllTasks();
}
