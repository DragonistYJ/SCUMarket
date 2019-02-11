package com.Dragonist.DAO;

import com.Dragonist.Bean.Commodity;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

public interface CommodityMapper {
    @Select("select * from commodity where id = #{id}")
    public Commodity getCommodity(int id);

    @Select("select * from commodity")
    public ArrayList<Commodity> getCommodities();

    @Select("select * from commodity where seller = #{nickName}")
    public ArrayList<Commodity> getGoodsByNickname(String nickName);
}
