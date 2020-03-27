package com.example.website.service.front.impl;

import com.example.website.dao.*;
import com.example.website.entity.*;
import com.example.website.service.front.IResearchCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResearchCenterServiceImpl implements IResearchCenterService {
    @Autowired
    private NavigationBarMapper navigationBarMapper;
    /**
     * 点滴积累
     */
    @Autowired
    private ItemAccumulationMapper itemAccumulationMapper;
    /**
     * 实验研究
     */
    @Autowired
    private ItemResearchMapper itemResearchMapper;
    /**
     * 过程与研究积累联系
     */
    @Autowired
    private ProcessItemAccumulationMapper processItemAccumulationMapper;

    @Override
    public List<ProcessItemAccumulation> getAccumulationInformationByProcessId(Integer processId) {
        return processItemAccumulationMapper.getAccumulationInformationByProcessId(processId);
    }

    @Override
    public List<ProcessItemResearch> getProcessItemResearchInformationByProcessId(Integer processId) {
        return processItemResearchMapper.getProcessItemResearchInformationByProcessId(processId);
    }

    @Override
    public ItemAccumulation getItemAccumulationInformationById(Integer id) {
        return itemAccumulationMapper.selectByPrimaryKey(id);
    }

    @Override
    public ItemResearchWithBLOBs getItemResearchInformationById(Integer id) {
        return itemResearchMapper.selectByPrimaryKey(id);
    }

    /**
     * 过程与实验研究
     */
    @Autowired
    private ProcessItemResearchMapper processItemResearchMapper;

    @Override
    public List<ResearchProcess> getProcessBysubBarId(Integer subBarId) {
        return researchProcessMapper.getProcessBysubBarId(subBarId);
    }

    /**
     * 实验过程
     */
    @Autowired
    private ResearchProcessMapper researchProcessMapper;

    @Override
    public List<NavigationBar> getSubBarInformation(Integer parentId) {
        return navigationBarMapper.getSubBarInformation(parentId);
    }
}
