package com.example.website.service.front.impl;

import com.example.website.dao.AboutUsMapper;
import com.example.website.dao.BannerMapper;
import com.example.website.dao.FAPSNewsMapper;
import com.example.website.dao.NavigationBarMapper;
import com.example.website.entity.AboutUsWithBLOBs;
import com.example.website.entity.FAPSNewsWithBLOBs;
import com.example.website.entity.NavigationBar;
import com.example.website.service.front.IAboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AboutUsServiceImpl implements IAboutUsService {

    @Autowired
    private AboutUsMapper aboutUsMapper;
    @Autowired
    private BannerMapper bannerMapper;
    @Autowired
    private FAPSNewsMapper fapsNewsMapper;
    @Autowired
    private NavigationBarMapper navigationBarMapper;

    @Override
    public List<FAPSNewsWithBLOBs> getFAPSNewsInformation() {
        return fapsNewsMapper.getFAPSNewsInformation();
    }

    @Override
    public List<AboutUsWithBLOBs> getAboutUsInformation() {
        return aboutUsMapper.getAboutUsInformation();
    }

    @Override
    public List<NavigationBar> getNavigationBarInformation() {
        return navigationBarMapper.getNavigationBarInformation();
    }
}
