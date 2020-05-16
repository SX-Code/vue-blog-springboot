package com.swx.blog.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class JwtToken {

    //将密匙保存在服务端
    private static final String SECRET = "SW-Code";

    public static String createToken(String username){
        //签发时间
        Date iatDate = new Date();
        //过期时间
        Calendar nowTime = Calendar.getInstance();
        nowTime.add(Calendar.MINUTE,20);
        Date expireDate = nowTime.getTime();

        Map<String,Object> map = new HashMap<>();
        map.put("alg","HS256");
        map.put("typ","JWT");

        String token = JWT.create()
                .withHeader(map)
                .withClaim("username",username)
                .withExpiresAt(expireDate)
                .withIssuedAt(iatDate)
                .sign(Algorithm.HMAC256(SECRET));

        return token;
    }

    /**
     * 认证token
     * @param token 前台接受的token
     */
    public static void verifyToken(String token){
        JWTVerifier verifier = JWT.require(Algorithm.HMAC256(SECRET)).build();
        DecodedJWT jwt = null;
        try{
            jwt = verifier.verify(token);
        } catch (JWTDecodeException e){
            throw new JWTDecodeException("invalid");
        } catch (JWTVerificationException e){
            throw new JWTVerificationException("obsolete");
        }
    }

    /**
     * 获取 token 中封装的数据
     * @param token token
     * @return  封装的数据
     */
    public static Map<String, Claim> getPayload(String token){
        DecodedJWT jwt = null;
        try {
            jwt = JWT.decode(token);
        } catch (JWTDecodeException e){
            throw new RuntimeException("登录凭证已过时，请重新登录");
        }
        return jwt.getClaims();
    }
}
