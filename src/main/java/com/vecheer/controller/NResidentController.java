package com.vecheer.controller;

import com.vecheer.domain.Pager;
import com.vecheer.entity.NResident;
import com.vecheer.service.INResidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/nResident")
public class NResidentController {
    @Autowired
    INResidentService nResidentService;


    //处理结果
    String resultMsg;

    //***********************************TestCode，没写到界面中*******************************************
    //查找某名称小区的居民
    @RequestMapping("/findNResidentByNname")
    @ResponseBody
    public List<NResident> findNhResidentByNname(@RequestBody NResident nResident) {
        System.out.println("正在按小区名称查找居民" + nResident.getNname());
        String nname = nResident.getNname();
        List<NResident> nResidents = nResidentService.findNResidentByNhName(nname);
        if (nResidents.size() == 0) { //没找到该小区里的人
            System.out.println("没找到该小区的人");
        } else {
            System.out.println("查询成功");
            for (NResident nR : nResidents)
                System.out.println(nR);
        }
        return nResidents;
    }

    //按姓名查找居民
    @RequestMapping("/findNResidentByRname")
    public String findNhResidentByRname(String rname) {
        List<NResident> nResidents = nResidentService.findNResidentByRname(rname);
        if (nResidents.size() == 0)//没有找到叫这个名称的人
            return "wrong";
        for (NResident nResident : nResidents)
            System.out.println(nResident);
        return "success";
    }
    //***********************************TestCode，没写到界面中*******************************************


    //按照小区名称和居民名称查找居民 这里就不采用ajax了，直接使用原生的servlet API
    @RequestMapping("/findNRByNnameAndRname")
    public ModelAndView findNRByNnameAndRname(HttpServletRequest request, Model model) {

        System.out.println("正在按小区名称和居民名称查找");

        ModelAndView mv = new ModelAndView();

        //获取查询条件和页码，但不一定会传送过来。
        //比如在点击左边菜单的“查询"时，是没有传送查询条件和页码的，所以后面代码中要判断是否有这些数据
        String query_nname = request.getParameter("nname");
        String query_rname = request.getParameter("rname");

        String currentPage = request.getParameter("currentPage");

        //判断是否接收到页码，如果没有，则默认设置为第一页
        int iCurrentPage = currentPage == null ? 1 : Integer.parseInt(currentPage);

        //新pager
        Pager pager = null;
        //结果集
        List<NResident> nResidents = null;

        //没有查询条件提交，查询全部
        if (query_nname == null && query_rname == null) {
            int count = nResidentService.findNResidentCountsByNnameAndRname("", "");
            pager = new Pager(iCurrentPage, count, 8);//构建pager对象，设置当前页、总记录数、每页显示8条
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            nResidents = nResidentService.findNResidentByNnameAndRname("", "", pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (NResident nr :nResidents)
                System.out.println(nr);

        } else {
            //提交了查询条件，需要重新获取结果总页数
            int count = nResidentService.findNResidentCountsByNnameAndRname(query_nname, query_rname);
            pager = new Pager(iCurrentPage, count, 8);//构造pager，但是这个pager不是接着上面的，而是新查询条件的，新pager
            System.out.println("从"+pager.getStartResults()+"开始查"+pager.getPageSize()+"个!");
            nResidents = nResidentService.findNResidentByNnameAndRname(query_nname, query_rname, pager.getStartResults(), pager.getPageSize());
            System.out.println("查询结果如下:");
            for (NResident nr :nResidents)
                System.out.println(nr);
        }

        //保证jsp的页面在刷新后，新的查询条件的值一直保留在文本框。
        if (query_nname != null)
            model.addAttribute("query_nname", query_nname);
        if (query_rname != null)
            model.addAttribute("query_rname", query_rname);


        //将Pager对象 和 查询出的结果 放到request域中，传送至jsp页面
        model.addAttribute("pager", pager);
        model.addAttribute("nResidents", nResidents);

        System.out.println("查询结束，正在跳转");
        mv.setViewName("func/registeredPermanentResidence/func_nResidentInfo_query");
        return mv;
    }


    //更新居民信息
    @RequestMapping("/updateNResident")
    @ResponseBody
    public String updateNhResident(@RequestBody NResident nResident) {
        resultMsg = nResidentService.updateNResident(nResident);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }


    //添加居民居住信息
    @RequestMapping("/saveNResident")
    @ResponseBody
    public String saveNhResident(@RequestBody NResident nResident) {
        resultMsg = nResidentService.saveNResident(nResident);
        if ("alreadyexist".equals(resultMsg)) {
            System.out.println("已经存在");
            return "{\"msg\":\"alreadyexist\"}";
        }
        System.out.println("添加成功!");
        return "{\"msg\":\"success\"}";
    }

    //删除居民居住信息
    @RequestMapping("/deleteNResident")
    @ResponseBody
    public String deleteNhResident(@RequestBody NResident nResident) {
        resultMsg = nResidentService.deleteNResident(nResident.getRidnum());
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("删除!");
        return "{\"msg\":\"success\"}";
    }

}
