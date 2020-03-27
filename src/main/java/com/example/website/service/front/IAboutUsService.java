package com.example.website.service.front;

import com.example.website.entity.AboutUsWithBLOBs;
import com.example.website.entity.FAPSNewsWithBLOBs;
import com.example.website.entity.NavigationBar;

import java.util.List;

public interface IAboutUsService {

    /**
     * 获取新闻数据
     * @return
     */
    List<FAPSNewsWithBLOBs> getFAPSNewsInformation();

    /**
     * 获取中间内容部分
     */
    List<AboutUsWithBLOBs> getAboutUsInformation();

    /**
     * 获取NavigationBar数据
     */
    List<NavigationBar> getNavigationBarInformation();
}
