package com.Dragonist.Service;

import com.Dragonist.Bean.Commodity;

import java.util.ArrayList;

public interface CommodityService {
    public Commodity getCommodity(int id);

    public ArrayList<Commodity> getCommodities();

    public ArrayList<Commodity> getGoodsByNickname(String nickName);
}
