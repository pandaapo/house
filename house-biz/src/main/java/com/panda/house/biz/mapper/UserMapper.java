package com.panda.house.biz.mapper;

import com.panda.house.common.model.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Mapper：使mybatis启动能扫描到，并作为spring 的 bean
 */
@Mapper
public interface UserMapper {

    public List<User> selectUsers();
}
