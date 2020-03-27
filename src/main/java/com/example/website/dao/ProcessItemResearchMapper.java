package com.example.website.dao;

import com.example.website.entity.ProcessItemResearch;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProcessItemResearchMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProcessItemResearch record);

    int insertSelective(ProcessItemResearch record);

    ProcessItemResearch selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProcessItemResearch record);

    int updateByPrimaryKey(ProcessItemResearch record);

    List<ProcessItemResearch> getProcessItemResearchInformationByProcessId(Integer processId);
}