package com.vecheer.service;

import com.vecheer.entity.CommunistEvent;

import java.util.List;

public interface ICommunistEventService {
    //查
    //查所有
    public List<CommunistEvent> findAllCommunistEvent();

    //查名称和主办方
    public CommunistEvent findCommunistEventByCenameAndCesponsor(String cename,String cesponsor);

    //查主办方
    public List<CommunistEvent> findCommunistEventBySponsor(String cesponsor,Integer startIndex,Integer rsNum);

    //查主办方举办活动总数
    public int countCommunistEventBySponsor(String cesponsor);


    //查日期
    public List<CommunistEvent> findCommunistEventByDate(String year, String month, String day);

    //增
    public String saveCommunistEvent(CommunistEvent communistEvent);

    //改  --依据是活动名称和主办单位
    public String updateCommunistEvent(CommunistEvent communistEvent);

    //删  --依据是活动名称和主办单位
    public String deleteCommunistEvent(String cename,String cesponsor);
}
