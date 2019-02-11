package com.Dragonist.Service.Impl;

import com.Dragonist.Bean.Commodity;
import com.Dragonist.DAO.CommodityMapper;
import com.Dragonist.Service.CommodityService;

import java.util.ArrayList;

public class CommodityImpl implements CommodityService {
    private CommodityMapper commodityMapper;

    public void setCommodityMapper(CommodityMapper commodityMapper) {
        this.commodityMapper = commodityMapper;
    }

    @Override
    public Commodity getCommodity(int id) {
        return commodityMapper.getCommodity(id);
    }

    @Override
    public ArrayList<Commodity> getCommodities() {
        return commodityMapper.getCommodities();
    }

    @Override
    public ArrayList<Commodity> getGoodsByNickname(String nickName) {
        return commodityMapper.getGoodsByNickname(nickName);
    }
}
