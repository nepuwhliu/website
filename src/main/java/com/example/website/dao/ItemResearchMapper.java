package com.example.website.dao;

import com.example.website.entity.ItemResearch;
import com.example.website.entity.ItemResearchWithBLOBs;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ItemResearchMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ItemResearchWithBLOBs record);

    int insertSelective(ItemResearchWithBLOBs record);

    ItemResearchWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ItemResearchWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ItemResearchWithBLOBs record);

    int updateByPrimaryKey(ItemResearch record);
}