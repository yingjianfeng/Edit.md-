package com.yjf.service;

import com.yjf.pojo.Article;

import java.util.List;

public interface IArticleService {
    List<Article> queryAll();
    void add(Article article);
    Article qryById(int id);
}
