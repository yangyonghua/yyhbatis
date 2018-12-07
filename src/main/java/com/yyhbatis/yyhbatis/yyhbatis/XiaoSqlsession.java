package com.yyhbatis.yyhbatis.yyhbatis;

import java.lang.reflect.Proxy;
import java.util.List;


public class XiaoSqlsession {

    private Excutor excutor=new SimpleExcutor();


    public <T> T selectOne(String statement, List<String> strList){
        return excutor.query(statement, strList);
    }

    public <T> T getMapper(Class<T> clas){
        return (T)Proxy.newProxyInstance(clas.getClassLoader(),new Class[]{clas}, new MyMapperHandler<>(this));
    }

}
