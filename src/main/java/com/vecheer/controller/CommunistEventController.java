package com.vecheer.controller;

import com.vecheer.domain.Pager;
import com.vecheer.entity.ActiveMember;
import com.vecheer.entity.CommunistEvent;
import com.vecheer.service.ICommunistEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("communistEvent")
public class CommunistEventController {
    @Autowired
    private ICommunistEventService communistEventService;

    String resultMsg;

    //查
    //查所有
    @RequestMapping("/findAllCommunistEvent")
    public String findAllCommunistEvent(){
        List<CommunistEvent> communistEvents = communistEventService.findAllCommunistEvent();
        for (CommunistEvent communistEvent : communistEvents) {
            System.out.println(communistEvent);
        }
        return "success";
    }

    //查名称和主办方
    @RequestMapping("/findCommunistEventByCenameAndCesponsor")
    public String findCommunistEventByCenameAndCesponsor(String cename,String cesponsor){
        CommunistEvent communistEvent = communistEventService.findCommunistEventByCenameAndCesponsor(cename,cesponsor);
        System.out.println(communistEvent);
        return "success";
    }


    //查主办方
    @RequestMapping("/findCommunistEventBySponsor")
    public ModelAndView findCommunistEventBySponsor(HttpServletRequest request, Model model){
        System.out.println("正在主办方名称查找:");

        ModelAndView mv = new ModelAndView();

        //获取查询条件和页码，但不一定会传送过来。
        //比如在点击左边菜单的“查询"时，是没有传送查询条件和页码的，所以后面代码中要判断是否有这些数据
        String cesponsor = request.getParameter("cesponsor");

        String currentPage = request.getParameter("currentPage");

        //判断是否接收到页码，如果没有，则默认设置为第一页
        int iCurrentPage = currentPage == null ? 1 : Integer.parseInt(currentPage);

        //新pager
        Pager pager = null;
        //结果集
        List<CommunistEvent> communistEvents = null;

        //没有查询条件提交，查询全部
        if (cesponsor == null) {
            int count = communistEventService.countCommunistEventBySponsor("");
            pager = new Pager(iCurrentPage, count, 6);//构建pager对象，设置当前页、总记录数、每页显示8条
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            communistEvents = communistEventService.findCommunistEventBySponsor("", pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (CommunistEvent ce :communistEvents)
                System.out.println(ce);
        } else {
            //提交了查询条件，需要重新获取结果总页数
            int count = communistEventService.countCommunistEventBySponsor(cesponsor);
            pager = new Pager(iCurrentPage, count, 6);//构造pager，但是这个pager不是接着上面的，而是新查询条件的，新pager
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            communistEvents = communistEventService.findCommunistEventBySponsor(cesponsor, pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (CommunistEvent ce: communistEvents)
                System.out.println(ce);
        }

        //保证jsp的页面在刷新后，新的查询条件的值一直保留在文本框。
        if (cesponsor != null)
            model.addAttribute("cesponsor", cesponsor);


        //将Pager对象 和 查询出的结果 放到request域中，传送至jsp页面
        model.addAttribute("pager", pager);
        model.addAttribute("communistEvents", communistEvents);

        mv.setViewName("func/PartyBuilding/func_ceInfo_query");
        return mv;
    }



    //查日期
    @RequestMapping("/findCommunistEventByDate")
    public String findCommunistEventByDate(String year, String month, String day){
        if (year!=null && year!="")
            year = "%" + year + "年%";
        if (month!=null && month!="")
            month = "%" + month + "月%";
        if (day!=null & day!="")
            day = "%" + day + "日%";
        List<CommunistEvent> communistEvents = communistEventService.findCommunistEventByDate(year, month, day);
        for (CommunistEvent communistEvent : communistEvents) {
            System.out.println(communistEvent);
        }
        return "success";
    }



    //增
    @RequestMapping("/saveCommunistEvent")
    @ResponseBody
    public String saveCommunistEvent(@RequestBody CommunistEvent communistEvent){
        resultMsg = communistEventService.saveCommunistEvent(communistEvent);
        if ("alreadyexist".equals(resultMsg)) {
            System.out.println("已经存在");
            return "{\"msg\":\"alreadyexist\"}";
        }
        System.out.println("添加成功!");
        return "{\"msg\":\"success\"}";
    }


    //改  --依据是活动名称和主办单位
    @RequestMapping("/updateCommunistEvent")
    @ResponseBody
    public String updateCommunistEvent(@RequestBody CommunistEvent communistEvent){
        resultMsg = communistEventService.updateCommunistEvent(communistEvent);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }



    //删  --依据是活动名称和主办单位
    @RequestMapping("/deleteCommunistEvent")
    @ResponseBody
    public String deleteCommunistEvent(@RequestBody CommunistEvent communistEvent){
        String cename = communistEvent.getCename();
        String cesponsor = communistEvent.getCesponsor();
        resultMsg = communistEventService.deleteCommunistEvent(cename, cesponsor);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("删除!");
        return "{\"msg\":\"success\"}";
    }
}


