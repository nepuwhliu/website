package com.example.website.controller.frontstage;

import com.example.website.entity.AboutUsWithBLOBs;
import com.example.website.entity.FAPSNewsWithBLOBs;
import com.example.website.entity.NavigationBar;
import com.example.website.service.front.IAboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
public class AboutUsController {

    @Autowired
    private IAboutUsService aboutUsService;

    /**
     * 首页
     * @return
     */
    @RequestMapping(value = "index")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView();
        /**
         * 导航栏部分
         */
        List<NavigationBar> navigationBarList = aboutUsService.getNavigationBarInformation();
        /**
         * Banner 部分
         */
        System.out.println(navigationBarList.size());
        List<Integer> temp = new ArrayList<Integer>();

        Map<String, List<NavigationBar>> barView = new LinkedHashMap<>();
        for(NavigationBar navigationBar : navigationBarList) {
            if(navigationBar.getParentid() == 0) {
                temp.add(navigationBar.getId());
            }
        }
        for(Integer parentId : temp) {
            List<NavigationBar> childBar = new ArrayList<NavigationBar>();
            for(NavigationBar tempBar : navigationBarList) {
                if(parentId == tempBar.getParentid()){
                    childBar.add(tempBar);
                }
            }
            barView.put(navigationBarList.get(parentId-1).getName(), childBar);
        }
        modelAndView.addObject("navigationBar",barView);
        modelAndView.setViewName("front/index");
        return modelAndView;
    }

    @RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
    public ModelAndView aboutUs(){

        ModelAndView modelAndView = new ModelAndView();
        /**
         * 获取所有内容
         */
        List<AboutUsWithBLOBs> aboutUsWithBLOBsList = aboutUsService.getAboutUsInformation();
        modelAndView.addObject("aboutUsWithBLOBsList", aboutUsWithBLOBsList);
        /**
         * 新闻 显示最新的三个新闻 点击详情走到详情页 获取新闻数据 显示页面
         */
        List<FAPSNewsWithBLOBs> fapsNewsList = aboutUsService.getFAPSNewsInformation().subList(0, 3);
        modelAndView.addObject("fapsNewsList", fapsNewsList);
        modelAndView.setViewName("front/aboutUs");
        return modelAndView;
    }

}
