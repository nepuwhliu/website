package com.example.website.dao;

import com.example.website.entity.ProcessItemAccumulation;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProcessItemAccumulationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProcessItemAccumulation record);

    int insertSelective(ProcessItemAccumulation record);

    ProcessItemAccumulation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProcessItemAccumulation record);

    int updateByPrimaryKey(ProcessItemAccumulation record);

    List<ProcessItemAccumulation> getAccumulationInformationByProcessId(Integer processId);
}