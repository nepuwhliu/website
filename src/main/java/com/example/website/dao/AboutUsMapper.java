package com.example.website.dao;

import com.example.website.entity.AboutUs;
import com.example.website.entity.AboutUsWithBLOBs;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AboutUsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AboutUsWithBLOBs record);

    int insertSelective(AboutUsWithBLOBs record);

    AboutUsWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AboutUsWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(AboutUsWithBLOBs record);

    int updateByPrimaryKey(AboutUs record);

    List<AboutUsWithBLOBs> getAboutUsInformation();
}