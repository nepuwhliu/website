package com.example.website.dao;

import com.example.website.entity.ResearchProcess;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface ResearchProcessMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResearchProcess record);

    int insertSelective(ResearchProcess record);

    ResearchProcess selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResearchProcess record);

    int updateByPrimaryKey(ResearchProcess record);

    List<ResearchProcess> getProcessBysubBarId(Integer subBarId);
}