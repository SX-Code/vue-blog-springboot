package com.swx.blog.pojo;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

@Data
public class ResponseMsg {

    private Integer code;
    private String message;
    private Object data;

    public static ResponseMsg success(){
        ResponseMsg msg = new ResponseMsg();
        msg.setMessage("操作成功"); // 成功的默认消息
        msg.setCode(20000); // 成功的默认code
        return msg;
    }

    public static ResponseMsg fail() {
        ResponseMsg msg = new ResponseMsg();
        msg.setMessage("操作失败"); // 成功的默认消息
        msg.setCode(20001);  // 成功的默认code
        msg.setData(null);
        return msg;
    }

    public ResponseMsg setData(Object obj){
        this.data = obj;
        return this;
    }
    public ResponseMsg setMessage(String message){
        this.message = message;
        return this;
    }
    public ResponseMsg setCode(Integer code){
        this.code = code;
        return this;
    }
}
