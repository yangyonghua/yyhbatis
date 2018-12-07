package com.yyhbatis.yyhbatis.yyhbatis;


import java.util.List;

/**
 * @author 创建一个执行器
 */
public interface Excutor {
    public <T> T query(String statement,List<String> strList);
}
