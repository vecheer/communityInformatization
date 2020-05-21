package com.vecheer.controller;

import com.vecheer.domain.Pager;
import com.vecheer.entity.ActiveMember;
import com.vecheer.service.IActiveMemberService;
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
@RequestMapping("/activeMember")
public class ActiveMemberController {
    @Autowired
    private IActiveMemberService activeMemberService;
    String resultMsg;

    //*************************查询 未在前台实现 留着后期拓展*********************************
    @RequestMapping("/findAllActiveMember")
    public String findAllActiveMember(){
        List<ActiveMember> activeMembers = activeMemberService.findAllActiveMember();
        for (ActiveMember activeMember : activeMembers) {
            System.out.println(activeMember);
        }
        return "success";
    }

    @RequestMapping("/findActiveMemberByAidnum")
    public String findActiveMemberByAidnum(String aidnum){
        ActiveMember activeMember = activeMemberService.findActiveMemberByAidnum(aidnum);
        System.out.println(activeMember);
        return "success";
    }

    @RequestMapping("/findActiveMemberByAname")
    public String findActiveMemberByAname(String aname){
        List<ActiveMember> activeMembers = activeMemberService.findActiveMemberByAname(aname);
        for (ActiveMember activeMember : activeMembers) {
            System.out.println(activeMember);
        }
        return "success";
    }
    //*************************查询 未在前台实现 留着后期拓展*********************************




    @RequestMapping("/findActiveMemberByBranch")
    public ModelAndView findActiveMemberByBranch(HttpServletRequest request, Model model){
        System.out.println("正在按支部名称查找:");

        ModelAndView mv = new ModelAndView();

        //获取查询条件和页码，但不一定会传送过来。
        //比如在点击左边菜单的“查询"时，是没有传送查询条件和页码的，所以后面代码中要判断是否有这些数据
        String ajoinbranch = request.getParameter("ajoinbranch");

        String currentPage = request.getParameter("currentPage");

        //判断是否接收到页码，如果没有，则默认设置为第一页
        int iCurrentPage = currentPage == null ? 1 : Integer.parseInt(currentPage);

        //新pager
        Pager pager = null;
        //结果集
        List<ActiveMember> activeMembers = null;

        //没有查询条件提交，查询全部
        if (ajoinbranch == null) {
            int count = activeMemberService.countActiveMemberByBranch("");
            pager = new Pager(iCurrentPage, count, 6);//构建pager对象，设置当前页、总记录数、每页显示8条
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            activeMembers = activeMemberService.findActiveMemberByBranch("", pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (ActiveMember a :activeMembers)
                System.out.println(a);
        } else {
            //提交了查询条件，需要重新获取结果总页数
            int count = activeMemberService.countActiveMemberByBranch(ajoinbranch);
            pager = new Pager(iCurrentPage, count, 6);//构造pager，但是这个pager不是接着上面的，而是新查询条件的，新pager
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            activeMembers = activeMemberService.findActiveMemberByBranch(ajoinbranch, pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (ActiveMember a: activeMembers)
                System.out.println(a);
        }

        //保证jsp的页面在刷新后，新的查询条件的值一直保留在文本框。
        if (ajoinbranch != null)
            model.addAttribute("ajoinbranch", ajoinbranch);


        //将Pager对象 和 查询出的结果 放到request域中，传送至jsp页面
        model.addAttribute("pager", pager);
        model.addAttribute("activeMembers", activeMembers);

        mv.setViewName("func/PartyBuilding/func_amInfo_query");
        return mv;

    }




    //增
    @RequestMapping("/saveActiveMember")
    @ResponseBody
    public String saveActiveMember(@RequestBody ActiveMember activeMember){
        resultMsg =activeMemberService.saveActiveMember(activeMember);
        if ("alreadyexist".equals(resultMsg)) {
            System.out.println("已经存在");
            return "{\"msg\":\"alreadyexist\"}";
        }
        System.out.println("添加成功!");
        return "{\"msg\":\"success\"}";
    }


    //改 --修改依据是身份证号
    @RequestMapping("/updateActiveMember")
    @ResponseBody
    public String updateActiveMember(@RequestBody ActiveMember activeMember){
        resultMsg = activeMemberService.updateActiveMember(activeMember);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }


    //删 --删除依据是身份证号
    @RequestMapping("/deleteActiveMember")
    @ResponseBody
    public String deleteActiveMember(@RequestBody  ActiveMember activeMember){
        String aidnum = activeMember.getAidnum();
        resultMsg = activeMemberService.deleteActiveMember(aidnum);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        return "{\"msg\":\"success\"}";
    }
}
