package com.vecheer.controller;

import com.vecheer.domain.Pager;
import com.vecheer.entity.Communist;
import com.vecheer.service.ICommunistService;
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
@RequestMapping("/communist")
public class CommunistController {
    @Autowired
    private ICommunistService communistService;

    String resultMsg;

    //****************************** 这里的功能留着后续拓展****************************************
    //查  --这里查到为空就不跳wrong了，反正写页面之后全部要重写的
    @RequestMapping("/findAllCommunist")
    public String findAllCommunist() {
        List<Communist> communists = communistService.findAllCommunist();
        for (Communist communist : communists) {
            System.out.println(communist);
        }
        return "success";
    }

    @RequestMapping("/findCommunistByCid")
    public String findCommunistById(Integer cid) {
        Communist communist = communistService.findCommunistByCid(cid);
        System.out.println(communist);
        return "success";
    }

    @RequestMapping("/findCommunistByCname")
    public String findCommunistByName(String cname) {
        List<Communist> communists = communistService.findCommunistByCname(cname);
        for (Communist communist : communists) {
            System.out.println(communist);
        }
        return "success";
    }

    @RequestMapping("/findCommunistByCidnum")
    public String  findCommunistByCidnum(String cidnum) {
        Communist communist = communistService.findCommunistByCidnum(cidnum);
        System.out.println(communist);
        return "success";
    }
    //****************************** 这里的功能留着后续拓展****************************************




    //********************************实现了分页查询******************************************
    //按照支部查询
    @RequestMapping("/findCommunistByBranch")
    public ModelAndView findCommunistByBranch(HttpServletRequest request, Model model) {

        System.out.println("正在按支部名称查找:");

        ModelAndView mv = new ModelAndView();

        //获取查询条件和页码，但不一定会传送过来。
        //比如在点击左边菜单的“查询"时，是没有传送查询条件和页码的，所以后面代码中要判断是否有这些数据
        String cjoinbranch = request.getParameter("cjoinbranch");

        String currentPage = request.getParameter("currentPage");

        //判断是否接收到页码，如果没有，则默认设置为第一页
        int iCurrentPage = currentPage == null ? 1 : Integer.parseInt(currentPage);

        //新pager
        Pager pager = null;
        //结果集
        List<Communist> communists = null;

        //没有查询条件提交，查询全部
        if (cjoinbranch == null) {
            int count = communistService.countCommunistByBranch("");
            pager = new Pager(iCurrentPage, count, 6);//构建pager对象，设置当前页、总记录数、每页显示8条
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            communists = communistService.findCommunistByBranch("", pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (Communist c :communists)
                System.out.println(c);
        } else {
            //提交了查询条件，需要重新获取结果总页数
            int count = communistService.countCommunistByBranch(cjoinbranch);
            pager = new Pager(iCurrentPage, count, 6);//构造pager，但是这个pager不是接着上面的，而是新查询条件的，新pager
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            communists = communistService.findCommunistByBranch(cjoinbranch, pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (Communist c :communists)
                System.out.println(c);
        }

        //保证jsp的页面在刷新后，新的查询条件的值一直保留在文本框。
        if (cjoinbranch != null)
            model.addAttribute("cjoinbranch", cjoinbranch);


        //将Pager对象 和 查询出的结果 放到request域中，传送至jsp页面
        model.addAttribute("pager", pager);
        model.addAttribute("communists", communists);

        mv.setViewName("func/PartyBuilding/func_communistInfo_query");
        return mv;
    }
    //********************************实现了分页查询******************************************



    //增
    @RequestMapping("/saveCommunist")
    @ResponseBody
    public String saveCommunist(@RequestBody  Communist communist) {
        resultMsg = communistService.saveCommunist(communist);
        if ("alreadyexist".equals(resultMsg)) {
            System.out.println("已经存在");
            return "{\"msg\":\"alreadyexist\"}";
        }
        System.out.println("添加成功!");
        return "{\"msg\":\"success\"}";
    }



    //改 --查询依据是cidnum
    @RequestMapping("/updateCommunist")
    @ResponseBody
    public String updateCommunist(@RequestBody Communist communist) {
        resultMsg = communistService.updateCommunist(communist);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }


    //删 --删除依据是cidnum
    @RequestMapping("/deleteCommunist")
    @ResponseBody
    public String deleteCommunist(@RequestBody Communist communist) {
        String cidnum = communist.getCidnum();
        System.out.println("正在删除"+ cidnum);
        resultMsg = communistService.deleteCommunist(cidnum);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        return "{\"msg\":\"success\"}";
    }
}

