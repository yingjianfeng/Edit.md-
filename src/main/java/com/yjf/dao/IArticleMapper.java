package com.yjf.dao;

import com.yjf.pojo.Article;

import java.util.List;

public interface IArticleMapper {
    List<Article> queryAll();

    void add(Article article);

    Article qryById(int id);
}
