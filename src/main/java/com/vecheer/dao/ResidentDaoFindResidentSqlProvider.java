package com.vecheer.dao;

import com.vecheer.domain.QueryCondition_FindResident;
import org.apache.ibatis.jdbc.SQL;

public class ResidentDaoFindResidentSqlProvider {
    public String findResidentSqlProvider(QueryCondition_FindResident condition){
        return new SQL(){
            {
                SELECT("*");
                FROM("residents");
                if (condition.getRsex()!=null)
                    WHERE("rsex=#{rsex}");
                if (condition.getRage()!=null)
                    WHERE("rage=#{rage}");
                if (condition.getRnationality()!=null && condition.getRnationality()!="")
                    WHERE("rnationality=#{rnationality}");
                if (condition.getRedulevel()!=null && condition.getRedulevel()!="")
                    WHERE("redulevel=#{redulevel}");
                if (condition.getRismarried()!=null && condition.getRismarried()!="")
                    WHERE("rismarried=#{rismarried}");
                if (condition.getRhrtype()!=null && condition.getRhrtype()!="")
                    WHERE("rhrtype=#{rhrtype}");
                if (condition.getRfpstatus()!=null && condition.getRfpstatus()!="")
                    WHERE("rfpstatus=#{rfpstatus}");
                if (condition.getRlivingstatus()!=null && condition.getRlivingstatus()!="")
                    WHERE("rlivingstatus=#{rlivingstatus}");
                if (condition.getRishealthy()!=null && condition.getRishealthy()!="")
                    WHERE("rishealthy=#{rishealthy}");
                if (condition.getRdisabilitytype()!=null && condition.getRdisabilitytype()!="")
                    WHERE("rdisabilitytype=#{rdisabilitytype}");
                if (condition.getRcompanytype()!=null && condition.getRcompanytype()!="")
                    WHERE("rcompanytype=#{rcompanytype}");
                if (condition.getRtype()!=null && condition.getRtype()!="")
                    WHERE("rtype=#{rtype}");
                if (condition.getRisemployed()!=null && condition.getRisemployed()!="")
                    WHERE("risemployed=#{risemployed}");
            }
        }.toString();
    }
}
