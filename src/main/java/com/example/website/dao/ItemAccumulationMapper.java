package com.example.website.dao;

import com.example.website.entity.ItemAccumulation;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ItemAccumulationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ItemAccumulation record);

    int insertSelective(ItemAccumulation record);

    ItemAccumulation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ItemAccumulation record);

    int updateByPrimaryKeyWithBLOBs(ItemAccumulation record);

    int updateByPrimaryKey(ItemAccumulation record);
}