package com.yyhbatis.yyhbatis.yyhbatis;

public class TestYyhMybaties {
    public static void main(String[] args) {
        XiaoSqlsession sqlsession=new XiaoSqlsession();
        UserMapper mapper = sqlsession.getMapper(UserMapper.class);
        User userById = mapper.getUserById("1");
        System.out.println("userbyId:"+userById);
    }

}
