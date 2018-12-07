package com.yyhbatis.yyhbatis.yyhbatis;



import java.util.HashMap;
import java.util.Map;

public class UserMapperXml {
    //类xml的命名空间
    public static final String namespate = "com.yyhbatis.yyhbatis.yyhbatis.UserMapper";

    public static final Map<String, String> map = new HashMap<String, String>();

    static {
        //模拟xml中的id与sql语句
        map.put("getUserById", "select name from user where id = ?");
    }
}