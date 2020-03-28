package com.example.website.service.front;

import com.example.website.entity.*;

import java.util.List;

public interface IResearchCenterService {

    List<NavigationBar> getSubBarInformation(Integer parentId);

    List<ResearchProcess> getProcessBysubBarId(Integer subBarId);

    List<ProcessItemResearch> getProcessItemResearchInformationByProcessId(Integer processId);

    List<ProcessItemAccumulation> getAccumulationInformationByProcessId(Integer processId);

    List<ProcessItemPublication> getPublicationInformationByProcessId(Integer processId);

    ItemResearchWithBLOBs getItemResearchInformationById(Integer id);

    ItemAccumulation getItemAccumulationInformationById(Integer id);

    ItemPublicationWithBLOBs getItemPublicationInformationById(Integer id);

    List<ItemImage> getItemImageInformation();


}
