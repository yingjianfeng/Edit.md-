package com.yjf.service.impl;

import com.yjf.dao.IArticleMapper;
import com.yjf.pojo.Article;
import com.yjf.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements IArticleService {
    @Autowired
    IArticleMapper iArticleMapper;
    @Override
    public List<Article> queryAll() {
        return iArticleMapper.queryAll();
    }

    @Override
    public void add(Article article) {
        iArticleMapper.add(article);
    }

    @Override
    public Article qryById(int id) {
        return iArticleMapper.qryById(id);
    }

}
