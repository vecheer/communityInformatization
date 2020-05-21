package com.vecheer.service.impl;

import com.vecheer.dao.ICommuinistEventDao;
import com.vecheer.entity.CommunistEvent;
import com.vecheer.service.ICommunistEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("communistEventService")
public class ICommunistEventServiceImpl implements ICommunistEventService {
    @Autowired
    private ICommuinistEventDao commuinistEventDao;

    //查
    //查所有
    public List<CommunistEvent> findAllCommunistEvent(){
        return commuinistEventDao.findAllCommunistEvent();
    }

    //查名称和主办方
    public CommunistEvent findCommunistEventByCenameAndCesponsor(String cename,String cesponsor){
        return commuinistEventDao.findCommunistEventByCenameAndCesponsor(cename, cesponsor);
    }


    //按主办方查询 分页
    @Override
    public List<CommunistEvent> findCommunistEventBySponsor(String cesponsor, Integer startIndex, Integer rsNum) {
        cesponsor = "%" + cesponsor + "%";
        return commuinistEventDao.findCommunistEventBySponsor(cesponsor,startIndex,rsNum);
    }

    //按照主办方查询，计算主办方举办活动的总数
    @Override
    public int countCommunistEventBySponsor(String cesponsor) {
        cesponsor = "%" + cesponsor + "%";
        return commuinistEventDao.countCommunistEventBySponsor(cesponsor);
    }

    //查日期
    public List<CommunistEvent> findCommunistEventByDate(String year, String month, String day){
        return commuinistEventDao.findCommunistEventByDate(year, month, day);
    }

    //增
    public String saveCommunistEvent(CommunistEvent communistEvent){
        if (commuinistEventDao.findCommunistEventByCenameAndCesponsor(communistEvent.getCename(),communistEvent.getCesponsor())!=null)
            return "alreadyexist";
        commuinistEventDao.saveCommunistEvent(communistEvent);
        return "success";
    }

    //改  --依据是活动名称和主办单位
    public String updateCommunistEvent(CommunistEvent communistEvent){
        if (commuinistEventDao.findCommunistEventByCenameAndCesponsor(communistEvent.getCename(),communistEvent.getCesponsor())==null)
            return "notfound";
        commuinistEventDao.updateCommunistEvent(communistEvent);
        return "success";
    }

    //删  --依据是活动名称和主办单位
    public String deleteCommunistEvent(String cename,String cesponsor){
        if (commuinistEventDao.findCommunistEventByCenameAndCesponsor(cename, cesponsor)==null)
            return "notfound";
        commuinistEventDao.deleteCommunistEvent(cename, cesponsor);
        return "success";
    }
}
