package com.vecheer.dao;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.jdbc.SQL;

import java.util.Map;

public class HouseDaoFindHouseSqlProvider {
    public String findHouseSqlProvider(Map<String,Object> param){
        //注意这里的sql语句关键字都必须要大写
        return new SQL(){
            {
                SELECT("*");
                FROM("houses");
                if (param.get("nname")!=null && param.get("nname")!="")
                    WHERE("nname=#{nname}");
                if(param.get("bid")!=null)
                    WHERE("bid=#{bid}");
                if (param.get("hfloord")!=null)
                    WHERE("hfloor>=#{hfloord}");
                if (param.get("hflooru")!=null)
                    WHERE("hfloor<=#{hflooru}");
                if (param.get("haread")!=null)
                    WHERE("harea>=#{haread}");
                if (param.get("hareau")!=null)
                    WHERE("harea<=#{hareau}");
                if (param.get("hdesign")!=null && param.get("hdesign")!="")
                    WHERE("hdesign=#{hdesign}");
                if (param.get("hrented")!=null)
                    WHERE("hrented=#{hrented}");
            }
        }.toString();
    }

}
