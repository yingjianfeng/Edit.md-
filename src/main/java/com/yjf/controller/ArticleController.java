package com.yjf.controller;

import com.yjf.pojo.Article;
import com.yjf.service.IArticleService;
import org.apache.tomcat.util.bcel.classfile.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ArticleController {
    @Autowired
    IArticleService iArticleService;

    @RequestMapping("edit")
    public String  edit() {
        return "edit";
    }
    @RequestMapping("show")
    public String  show() {
        return "show";
    }

    @ResponseBody
    @RequestMapping("queryAll")
    public List<Article> queryAll() {
        return iArticleService.queryAll();
    }

    @ResponseBody
    @RequestMapping("addArticle")
    public String addArticle(String mdContent,String htmlContent,String title){
        System.out.println("title:  "+title);
        System.out.println("mdContent:  "+mdContent);
        System.out.println("htmlContent:  "+htmlContent);
        Article article = new Article(title,mdContent,htmlContent);
        iArticleService.add(article);
        return "true";
    }

    @ResponseBody
    @RequestMapping("qryById/{id}")
    public Article qryById(@PathVariable int id){
        return iArticleService.qryById(id);
    }
/*
    success : 0 | 1, //0表示上传失败;1表示上传成功
    message : "提示的信息",
    url     : "图片地址" //上传成功时才返回
 */
    @RequestMapping("addImg")
    @ResponseBody
    public Map addImg(@RequestParam(value = "editormd-image-file", required = true) MultipartFile file,
                      HttpServletRequest request){
        String trueFileName = file.getOriginalFilename();

        String suffix = trueFileName.substring(trueFileName.lastIndexOf("."));

        String fileName = System.currentTimeMillis()+suffix;

       // String path = "img/";
        File path = new File("F:/upfile/");
        System.out.println(path);

        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Map map = new HashMap();
        map.put("success",1);
        map.put("message","upload success!");
        map.put("url", "/upfile/"+fileName);
        return map;
    }
}
