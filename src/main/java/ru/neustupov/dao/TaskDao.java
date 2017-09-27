package ru.neustupov.dao;

import ru.neustupov.model.Task;

import java.util.List;

public interface TaskDao {
    void add(Task task);
    void edit(Task task);
    void delete(int id);
    Task getTask(int id);
    List getAllTasks();
}
