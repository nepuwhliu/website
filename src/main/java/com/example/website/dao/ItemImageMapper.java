package com.example.website.dao;

import com.example.website.entity.ItemImage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ItemImageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ItemImage record);

    int insertSelective(ItemImage record);

    List<ItemImage> selectByPrimaryKey();

    int updateByPrimaryKeySelective(ItemImage record);

    int updateByPrimaryKeyWithBLOBs(ItemImage record);

    int updateByPrimaryKey(ItemImage record);
}