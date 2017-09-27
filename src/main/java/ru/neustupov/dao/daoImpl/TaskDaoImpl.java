package ru.neustupov.dao.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.neustupov.dao.TaskDao;
import ru.neustupov.model.Task;

import java.util.List;

@Repository
public class TaskDaoImpl implements TaskDao {

    @Autowired
    SessionFactory sessionFactory;

    public void add(Task task) {
        sessionFactory.getCurrentSession().save(task);
    }

    public void edit(Task task) {
        sessionFactory.getCurrentSession().update(task);
    }

    public void delete(int id) {
        sessionFactory.getCurrentSession().delete(getTask(id));
    }

    public Task getTask(int id) {
        return (Task)sessionFactory.getCurrentSession().get(Task.class, id);
    }

    public List getAllTasks() {
        return sessionFactory.getCurrentSession().createQuery("FROM tasktable").list();
    }
}
