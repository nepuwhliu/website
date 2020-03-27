package com.example.website.dao;

import com.example.website.entity.NavigationBar;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NavigationBarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NavigationBar record);

    int insertSelective(NavigationBar record);

    NavigationBar selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NavigationBar record);

    int updateByPrimaryKey(NavigationBar record);

    List<NavigationBar> getNavigationBarInformation();

    List<NavigationBar> getSubBarInformation(Integer parentId);
}