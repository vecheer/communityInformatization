package com.vecheer.dao;

import com.vecheer.domain.CountCondition_CountResident;
import org.apache.ibatis.jdbc.SQL;

public class ResidentDaoCountResidentSqlProvider {
    public String countResidentSqlProvider(CountCondition_CountResident condition){
        return new SQL(){
            {
                SELECT("count(*)");
                FROM("residents");
                //WHERE("1");
                if (condition.getRsex()!=null)
                    WHERE("rsex=#{rsex}");
                if (condition.getRageL()!=null)
                    WHERE("rage>=#{rageL}");
                if (condition.getRageL()!=null)
                    WHERE("rage<=#{rageU}");
                if (condition.getRhrtype()!=null && condition.getRhrtype()!="")
                    WHERE("rhrtype=#{rhrtype}");
                if (condition.getRtype()!=null && condition.getRtype()!="")
                    WHERE("rtype=#{rtype}");

                //汉族和少数民族，查少数民族时，需要传入‘非汉族’字样
                if ("汉族".equals(condition.getRnationality()))
                    WHERE("rnationality='汉族'");
                else if ("少数民族".equals(condition.getRnationality()))
                    WHERE("rnationality<>'汉族'");
                else if (condition.getRnationality()!=null && condition.getRnationality()!="")
                    WHERE("rnationality=#{rnationality}");
                else
                    ;

                //学历，可能会包含多个
                if (condition.getRedulevels()!=null && !condition.getRedulevels().isEmpty()){
                    //String edulevels="(";
                    String edulevels="";
                    for(int i=0;i<condition.getRedulevels().size();++i){
                        edulevels=edulevels+ "redulevel='" +condition.getRedulevels().get(i)+"'";
                        if (i+1<condition.getRedulevels().size())
                            edulevels+=" or ";
//                        else
//                            edulevels+=")";
                    }
                    WHERE(edulevels);
                }


                //已婚和非已婚，查询非已婚（未婚、离异、丧偶）需要传入‘非已婚‘字样
                if ("已婚".equals(condition.getRismarried()))
                    WHERE("rismarried='已婚'");
                if ("非已婚".equals(condition.getRismarried()))
                    WHERE("rismarried<>'已婚'");

                //健康和非健康，查询非健康（良好、残疾）需要传入’非健康‘字样
                if ("健康".equals(condition.getRishealthy()))
                    WHERE("rishealthy='健康'");
                if ("非健康".equals(condition.getRishealthy()))
                    WHERE("rishealthy<>'健康'");

                //已就业和待业，待业只能传入’待业‘字样
                if (condition.getRisemployed()!=null && condition.getRisemployed()!="")
                    WHERE("risemployed=#{risemployed}");
            }
        }.toString();
    }
}
