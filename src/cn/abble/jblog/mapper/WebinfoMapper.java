package cn.abble.jblog.mapper;

import cn.abble.jblog.pojo.Webinfo;
import cn.abble.jblog.pojo.WebinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WebinfoMapper {
    long countByExample(WebinfoExample example);

    int deleteByExample(WebinfoExample example);

    int deleteByPrimaryKey(Integer wid);

    int insert(Webinfo record);

    int insertSelective(Webinfo record);

    List<Webinfo> selectByExample(WebinfoExample example);

    Webinfo selectByPrimaryKey(Integer wid);

    int updateByExampleSelective(@Param("record") Webinfo record, @Param("example") WebinfoExample example);

    int updateByExample(@Param("record") Webinfo record, @Param("example") WebinfoExample example);

    int updateByPrimaryKeySelective(Webinfo record);

    int updateByPrimaryKey(Webinfo record);
}