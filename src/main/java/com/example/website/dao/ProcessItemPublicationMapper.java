package com.example.website.dao;

import com.example.website.entity.ProcessItemPublication;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProcessItemPublicationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProcessItemPublication record);

    int insertSelective(ProcessItemPublication record);

    ProcessItemPublication selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProcessItemPublication record);

    int updateByPrimaryKey(ProcessItemPublication record);

    List<ProcessItemPublication> getPublicationInformationByProcessId(Integer processId);
}