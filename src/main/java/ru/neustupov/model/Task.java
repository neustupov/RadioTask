package ru.neustupov.model;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class Task {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String productsname;

    @Column
    private String modelsname;

    @Column
    private int amount;

    @Column
    private int price;

    @Column
    private String phonenumber;

    @Column
    private String buyersname;

    @Column
    private Timestamp orderdate;

    public Task() {
    }

    public Task(String productsname, String modelsname, int amount, int price, String phonenumber,
                String buyersname, Timestamp orderdate) {
        this.productsname = productsname;
        this.modelsname = modelsname;
        this.amount = amount;
        this.price = price;
        this.phonenumber = phonenumber;
        this.buyersname = buyersname;
        this.orderdate = orderdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductsname() {
        return productsname;
    }

    public void setProductsname(String productsname) {
        this.productsname = productsname;
    }

    public String getModelsname() {
        return modelsname;
    }

    public void setModelsname(String modelsname) {
        this.modelsname = modelsname;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getBuyersname() {
        return buyersname;
    }

    public void setBuyersname(String buyersname) {
        this.buyersname = buyersname;
    }

    public Timestamp getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Timestamp orderdate) {
        this.orderdate = orderdate;
    }
}
