package com.yjf.pojo;

import java.io.Serializable;

//文章类
public class Article implements Serializable {
    int id;
    String title;
    String mdContent;
    String htmlContent;

    public Article() {
    }

    public Article(String title, String mdContent, String htmlContent) {
        this.title = title;
        this.mdContent = mdContent;
        this.htmlContent = htmlContent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMdContent() {
        return mdContent;
    }

    public void setMdContent(String mdContent) {
        this.mdContent = mdContent;
    }

    public String getHtmlContent() {
        return htmlContent;
    }

    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", mdContent='" + mdContent + '\'' +
                ", htmlContent='" + htmlContent + '\'' +
                '}';
    }
}
