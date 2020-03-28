package com.example.website.dao;

import com.example.website.entity.ItemPublication;
import com.example.website.entity.ItemPublicationWithBLOBs;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ItemPublicationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ItemPublicationWithBLOBs record);

    int insertSelective(ItemPublicationWithBLOBs record);

    ItemPublicationWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ItemPublicationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ItemPublicationWithBLOBs record);

    int updateByPrimaryKey(ItemPublication record);
}