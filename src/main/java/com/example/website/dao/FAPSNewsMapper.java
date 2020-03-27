package com.example.website.dao;

import com.example.website.entity.FAPSNews;
import com.example.website.entity.FAPSNewsWithBLOBs;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FAPSNewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FAPSNewsWithBLOBs record);

    int insertSelective(FAPSNewsWithBLOBs record);

    FAPSNewsWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FAPSNewsWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(FAPSNewsWithBLOBs record);

    int updateByPrimaryKey(FAPSNews record);

    List<FAPSNewsWithBLOBs> getFAPSNewsInformation();
}