package cn.abble.jblog.mapper;

import cn.abble.jblog.pojo.Page;
import cn.abble.jblog.pojo.PageExample;
import cn.abble.jblog.pojo.diy.PageAndCategory;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PageMapper {
    long countByExample(PageExample example);

    int deleteByExample(PageExample example);

    int deleteByPrimaryKey(Integer pid);

    int insert(Page record);

    int insertSelective(Page record);

    List<Page> selectByExampleWithBLOBs(PageExample example);

    List<Page> selectByExample(PageExample example);

    Page selectByPrimaryKey(Integer pid);

    int updateByExampleSelective(@Param("record") Page record, @Param("example") PageExample example);

    int updateByExampleWithBLOBs(@Param("record") Page record, @Param("example") PageExample example);

    int updateByExample(@Param("record") Page record, @Param("example") PageExample example);

    int updateByPrimaryKeySelective(Page record);

    int updateByPrimaryKeyWithBLOBs(Page record);

    int updateByPrimaryKey(Page record);
    
    List<PageAndCategory> selectLimit(@Param("offset") int offset, @Param("limit") int limit);
    
    List<PageAndCategory> getPageByCid(@Param("cid") int cid,@Param("offset") int offset,@Param("limit") int limit);
}