package com.springmvc.beans;

public class MenuItem {
    private String name; // Tên menu hiển thị
    private String url;  // Đường dẫn URL của menu

    // Constructor
    public MenuItem(String name, String url) {
        this.name = name;
        this.url = url;
    }

    // Getter và Setter
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    // Phương thức toString() để kiểm tra dữ liệu nếu cần
    @Override
    public String toString() {
        return "MenuItem{" +
                "name='" + name + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
