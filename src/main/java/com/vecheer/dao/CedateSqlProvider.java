package com.vecheer.dao;


import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.jdbc.SQL;

import java.util.Map;

public class CedateSqlProvider {
    public String findCedateCondition(Map<String,Object> param){
        return new SQL(){
            {
                SELECT("*");
                FROM("communistevents");
                //null不可以toString()，但是可以(String)强转
                if (StringUtils.isNotEmpty((String)param.get("year")) && StringUtils.isNotBlank((String)param.get("year")) )
                    WHERE("cedate like #{year}");
                if (StringUtils.isNotEmpty((String)param.get("month")) && StringUtils.isNotBlank((String) param.get("month")))
                    WHERE("cedate like #{month}");
                if (StringUtils.isNotEmpty((String)param.get("day")) &&  StringUtils.isNotBlank((String)param.get("day")))
                    WHERE("cedate like #{day}");
            }
        }.toString();
    }
}
