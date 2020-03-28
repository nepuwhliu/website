package com.example.website.controller.frontstage;

import com.example.website.entity.*;
import com.example.website.service.front.IResearchCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ResearchCenterController {
    @Autowired
    private IResearchCenterService researchCenterService;
    @RequestMapping(value = "/navigation", method = RequestMethod.GET)
    public ModelAndView index(String navigationName){

        ModelAndView modelAndView = new ModelAndView();
        /**
         * 根据传过来的id 选择对应的页面内容 与研究过程
         */
        if("关于我们".equals(navigationName.trim())) {
            //关于我们 1
            modelAndView.setViewName("front/index");
        }else if("研究中心".equals(navigationName.trim())) {
            //研究中心 2
            /**
             * 根据id查找所有的子导航
             */
            Integer parentId = 2;
            List<NavigationBar> subBarList = researchCenterService.getSubBarInformation(parentId);
            modelAndView.addObject("subBarList", subBarList);
            modelAndView.setViewName("front/researchCenter");
        } else if("FAPS众创".equals(navigationName.trim())) {
            //FAPS众创 3
        } else if("产品与服务".equals(navigationName.trim())) {
            //产品与服务 4
        } else if("FAPS新闻".equals(navigationName.trim())) {
            //FAPS新闻 5
        } else if("联系我们".equals(navigationName.trim())) {
            //联系我们 6
        }
        return modelAndView;
    }

    /**
     * 子导航栏
     * @param id
     * @return
     */
    @RequestMapping(value = "/subBar", method = RequestMethod.GET)
    public ModelAndView subBar(Integer id){
        ModelAndView modelAndView = new ModelAndView();
        List<ResearchProcess> researchProcessList = researchCenterService.getProcessBysubBarId(id);
        modelAndView.addObject("researchProcessList", researchProcessList);
        if(id == 7) {
            //技术共享
            /**
             * 根据subBarId 找到研究过程
             */
            modelAndView.addObject("researchProcessList", researchProcessList);
            modelAndView.setViewName("front/technologySharing");
        } else if(id == 8) {
            //研究成果
            modelAndView.addObject("researchProcessList", researchProcessList);
            modelAndView.setViewName("front/researchFindings");
        } else if(id == 9) {
            //优选文献
            modelAndView.addObject("researchProcessList", researchProcessList);
            modelAndView.setViewName("front/researchPaper");
        }else if(id == 10) {
            //优选视频

            List<ProcessItemAccumulation> processItemAccumulationList = researchCenterService.getAccumulationInformationByProcessId(3);
            List<ItemAccumulation> itemAccumulationList = new ArrayList<ItemAccumulation>();
            for(ProcessItemAccumulation processItemAccumulation : processItemAccumulationList) {
                itemAccumulationList.add(researchCenterService.getItemAccumulationInformationById(processItemAccumulation.getItemaccumulationid()));
            }
            modelAndView.addObject("itemAccumulationList", itemAccumulationList);
            modelAndView.setViewName("front/researchVideo");
        }else if(id == 11) {
            //优选图片
            //TODO 接口写完了 没实现
            List<ItemImage> imageList = researchCenterService.getItemImageInformation();
            modelAndView.addObject("imageList", imageList);
            modelAndView.setViewName("front/researchPicture");
        }
        return modelAndView;
    }

    /**
     * 过程详情
     */
    @RequestMapping(value = "/processDetail", method = RequestMethod.GET)
    public ModelAndView processDetail(Integer processId){
        ModelAndView modelAndView = new ModelAndView();
        List<ProcessItemResearch> processItemResearchList = researchCenterService.getProcessItemResearchInformationByProcessId(processId);
        if(processId == 1) {
            //实验研究
            List<ItemResearchWithBLOBs> itemResearchList = new ArrayList<ItemResearchWithBLOBs>();
            for(ProcessItemResearch processItemResearch : processItemResearchList) {
                itemResearchList.add(researchCenterService.getItemResearchInformationById(processItemResearch.getItemresearchid()));
            }
            modelAndView.addObject("itemResearchList", itemResearchList);
            modelAndView.setViewName("front/itemExperiment");
        }else if(processId == 2) {
            //项目案例
            List<ItemResearchWithBLOBs> itemResearchList = new ArrayList<ItemResearchWithBLOBs>();
            for(ProcessItemResearch processItemResearch : processItemResearchList) {
                itemResearchList.add(researchCenterService.getItemResearchInformationById(processItemResearch.getItemresearchid()));
            }
            modelAndView.addObject("itemResearchList", itemResearchList);
            modelAndView.setViewName("front/itemExperiment");
        }else if(processId == 3) {
            //点滴积累
            List<ProcessItemAccumulation> processItemAccumulationList = researchCenterService.getAccumulationInformationByProcessId(processId);
            List<ItemAccumulation> itemAccumulationList = new ArrayList<ItemAccumulation>();
            for(ProcessItemAccumulation processItemAccumulation : processItemAccumulationList) {
                itemAccumulationList.add(researchCenterService.getItemAccumulationInformationById(processItemAccumulation.getItemaccumulationid()));
            }
            modelAndView.addObject("itemAccumulationList", itemAccumulationList);
            modelAndView.setViewName("front/itemAccumulation");
        }else if(processId == 4) {
            //发表文章
            List<ProcessItemPublication> processItemPublicationList = researchCenterService.getPublicationInformationByProcessId(processId);
            List<ItemPublicationWithBLOBs> itemPublicationWithBLOBsList = new ArrayList<ItemPublicationWithBLOBs>();
            for(ProcessItemPublication processItemPublication : processItemPublicationList) {
                itemPublicationWithBLOBsList.add(researchCenterService.getItemPublicationInformationById(processItemPublication.getPublicationid()));
            }
            modelAndView.addObject("itemPublicationWithBLOBsList", itemPublicationWithBLOBsList);
            modelAndView.setViewName("front/itemArticle");
        }else if(processId == 5) {
            // 专利权
            List<ProcessItemPublication> processItemPublicationList = researchCenterService.getPublicationInformationByProcessId(processId);
            List<ItemPublicationWithBLOBs> itemPublicationWithBLOBsList = new ArrayList<ItemPublicationWithBLOBs>();
            for(ProcessItemPublication processItemPublication : processItemPublicationList) {
                itemPublicationWithBLOBsList.add(researchCenterService.getItemPublicationInformationById(processItemPublication.getPublicationid()));
            }
            modelAndView.addObject("itemPublicationWithBLOBsList", itemPublicationWithBLOBsList);
            modelAndView.setViewName("front/itemCopyright");
        }else if(processId == 6) {
            //软件著作权
            List<ProcessItemPublication> processItemPublicationList = researchCenterService.getPublicationInformationByProcessId(processId);
            List<ItemPublicationWithBLOBs> itemPublicationWithBLOBsList = new ArrayList<ItemPublicationWithBLOBs>();
            for(ProcessItemPublication processItemPublication : processItemPublicationList) {
                itemPublicationWithBLOBsList.add(researchCenterService.getItemPublicationInformationById(processItemPublication.getPublicationid()));
            }
            modelAndView.addObject("itemPublicationWithBLOBsList", itemPublicationWithBLOBsList);
            modelAndView.setViewName("front/itemCopyright");
        }else if(processId == 7) {
            //断层内部结构
            List<ProcessItemPublication> processItemPublicationList = researchCenterService.getPublicationInformationByProcessId(processId);
            List<ItemPublicationWithBLOBs> itemPublicationWithBLOBsList = new ArrayList<ItemPublicationWithBLOBs>();
            for(ProcessItemPublication processItemPublication : processItemPublicationList) {
                itemPublicationWithBLOBsList.add(researchCenterService.getItemPublicationInformationById(processItemPublication.getPublicationid()));
            }
            modelAndView.addObject("itemPublicationWithBLOBsList", itemPublicationWithBLOBsList);
            modelAndView.setViewName("front/itemFault");
        }else if(processId == 8) {
            //断层封闭性
            List<ProcessItemPublication> processItemPublicationList = researchCenterService.getPublicationInformationByProcessId(processId);
            List<ItemPublicationWithBLOBs> itemPublicationWithBLOBsList = new ArrayList<ItemPublicationWithBLOBs>();
            for(ProcessItemPublication processItemPublication : processItemPublicationList) {
                itemPublicationWithBLOBsList.add(researchCenterService.getItemPublicationInformationById(processItemPublication.getPublicationid()));
            }
            modelAndView.addObject("itemPublicationWithBLOBsList", itemPublicationWithBLOBsList);
            modelAndView.setViewName("front/itemFault");
        }else if(processId == 9) {
            //断层稳定性
            List<ProcessItemPublication> processItemPublicationList = researchCenterService.getPublicationInformationByProcessId(processId);
            List<ItemPublicationWithBLOBs> itemPublicationWithBLOBsList = new ArrayList<ItemPublicationWithBLOBs>();
            for(ProcessItemPublication processItemPublication : processItemPublicationList) {
                itemPublicationWithBLOBsList.add(researchCenterService.getItemPublicationInformationById(processItemPublication.getPublicationid()));
            }
            modelAndView.addObject("itemPublicationWithBLOBsList", itemPublicationWithBLOBsList);
            modelAndView.setViewName("front/itemFault");
        }
        return modelAndView;
    }


}
