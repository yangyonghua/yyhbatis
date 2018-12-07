package com.yyhbatis.yyhbatis.yyhbatis;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MyMapperHandler<T> implements InvocationHandler {

    private XiaoSqlsession xiaoSqlsession = null;

    public MyMapperHandler(XiaoSqlsession xiaoSqlsession) {
        this.xiaoSqlsession = xiaoSqlsession;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        // TODO Auto-generated method stub

        if (method.getDeclaringClass().getName().equals(UserMapperXml.namespate)) {
            String sql = UserMapperXml.map.get(method.getName());
            List<String> strList=new ArrayList<>();
            strList.add(String.valueOf(args[0]));
            return xiaoSqlsession.selectOne(sql, strList);
        }
        return null;
    }

}