package com.heal.controller;


import java.io.InputStreamReader;



import java.net.HttpURLConnection;
import java.net.URL;
import org.json.XML;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;

@Controller
public class CampController {

	@RequestMapping("/camp/list")
		  public static Map<String, Object> main(String[] args) throws IOException {
		 	Map<String, Object> resultMap = new HashMap<>();

		 	try {
		        StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/basedList"); /*URL*/
		        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=8zlPEPUimdwlKj4tR1GHxBYspdzo%2FtrC6KVM3evVAhXoaySHJNby9hTKlaClH2jRoxPWtSonBIczpbubTRrbqA%3D%3D"); /*Service Key*/
		        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지번호*/
		        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
		        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS(아이폰),AND(안드로이드),WIN(윈도우폰),ETC*/
		        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
		        URL url = new URL(urlBuilder.toString());
		        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		        conn.setRequestMethod("GET");
		        conn.setRequestProperty("Content-type", "application/json");
		        System.out.println("Response code: " + conn.getResponseCode());
		        BufferedReader rd;
		        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
		            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		        } else {
		            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		        }
		        StringBuilder sb = new StringBuilder();
		        String line;
		        while ((line = rd.readLine()) != null) {
		            sb.append(line);
		        }
		        rd.close();
		        conn.disconnect();
		        System.out.println(sb.toString());
		        
		        // xml->json 변환
	            org.json.JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
	            String xmlJSONObjString = xmlJSONObj.toString();
	            System.out.println("### xmlJSONObjString=>"+xmlJSONObjString);
	 
	            
	            ObjectMapper objectMapper = new ObjectMapper();
	            Map<String, Object> map = new HashMap<>();
	            map = objectMapper.readValue(xmlJSONObjString, new TypeReference<Map<String, Object>>(){});
	            Map<String, Object> dataResponse = (Map<String, Object>) map.get("response");
	            Map<String, Object> body = (Map<String, Object>) dataResponse.get("body");
	            Map<String, Object> items = null;
	            List<Map<String, Object>> itemList = null;
	 
	            items = (Map<String, Object>) body.get("items");
	            itemList = (List<Map<String, Object>>) items.get("item");
	 
//	            System.out.println("### map="+map);
//	            System.out.println("### dataResponse="+dataResponse);
//	            System.out.println("### body="+body);
//	            System.out.println("### items="+items);
	            System.out.println("### itemList="+itemList);
	            
	            resultMap.put("Result", "0000");
	            resultMap.put("numOfRows", body.get("numOfRows"));
	            resultMap.put("pageNo", body.get("pageNo"));
	            resultMap.put("totalCount", body.get("totalCount"));
	            resultMap.put("data", itemList);
	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	            resultMap.clear();
	            resultMap.put("Result", "0001");
	        }
	 
	        return resultMap;
	    }
	
//	@RequestMapping("/camp/search")
//	 public static void main1(String[] args) throws IOException {
//        StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/searchList"); /*URL*/
//        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=8zlPEPUimdwlKj4tR1GHxBYspdzo%2FtrC6KVM3evVAhXoaySHJNby9hTKlaClH2jRoxPWtSonBIczpbubTRrbqA%3D%3D"); /*Service Key*/
//        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지번호*/
//        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
//        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS(아이폰), AND(안드로이드), WIN(윈도우폰), ETC*/
//        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
//        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode("야영장(%EC%95%BC%EC%98%81%EC%9E%A5(", "UTF-8")); /*검색 요청할 키워드(인코딩 필요)*/
//        URL url = new URL(urlBuilder.toString());
//        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//        conn.setRequestMethod("GET");
//        conn.setRequestProperty("Content-type", "application/json");
//        System.out.println("Response code: " + conn.getResponseCode());
//        BufferedReader rd;
//        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
//            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//        } else {
//            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
//        }
//        StringBuilder sb = new StringBuilder();
//        String line;
//        while ((line = rd.readLine()) != null) {
//            sb.append(line);
//        }
//        rd.close();
//        conn.disconnect();
//        System.out.println(sb.toString());
//    }
//	
//	@RequestMapping("/camp/list")
//	  public static Map<String, Object> searchList(String[] args) throws IOException {
//	 	Map<String, Object> resultMap = new HashMap<>();
//
//	 	try {
//	        StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/searchList"); /*URL*/
//	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=8zlPEPUimdwlKj4tR1GHxBYspdzo%2FtrC6KVM3evVAhXoaySHJNby9hTKlaClH2jRoxPWtSonBIczpbubTRrbqA%3D%3D"); /*Service Key*/
////	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지번호*/
////	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
////	        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS(아이폰), AND(안드로이드), WIN(윈도우폰), ETC*/
////	        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
////	        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode("야영장(%EC%95%BC%EC%98%81%EC%9E%A5(", "UTF-8")); /*검색 요청할 키워드(인코딩 필요)*/
////	        URL url = new URL(urlBuilder.toString());
////	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
////	        conn.setRequestMethod("GET");
////	        conn.setRequestProperty("Content-type", "application/json");
////	        System.out.println("Response code: " + conn.getResponseCode());
////	        BufferedReader rd;
////	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
////	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
////	        } else {
////	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
////	        }
////	        StringBuilder sb = new StringBuilder();
////	        String line;
////	        while ((line = rd.readLine()) != null) {
////	            sb.append(line);
////	        }
////	        rd.close();
////	        conn.disconnect();
////	        System.out.println(sb.toString());
//	        
//	        // xml->json 변환
//          org.json.JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
//          String xmlJSONObjString = xmlJSONObj.toString();
//          System.out.println("### xmlJSONObjString=>"+xmlJSONObjString);
//
//          
//          ObjectMapper objectMapper = new ObjectMapper();
//          Map<String, Object> map = new HashMap<>();
//          map = objectMapper.readValue(xmlJSONObjString, new TypeReference<Map<String, Object>>(){});
//          Map<String, Object> dataResponse = (Map<String, Object>) map.get("response");
//          Map<String, Object> body = (Map<String, Object>) dataResponse.get("body");
//          Map<String, Object> items = null;
//          List<Map<String, Object>> itemList = null;
//
//          items = (Map<String, Object>) body.get("items");
//          itemList = (List<Map<String, Object>>) items.get("item");
//
////          System.out.println("### map="+map);
////          System.out.println("### dataResponse="+dataResponse);
////          System.out.println("### body="+body);
////          System.out.println("### items="+items);
//          System.out.println("### itemList="+itemList);
//          
//          resultMap.put("Result", "0000");
//          resultMap.put("numOfRows", body.get("numOfRows"));
//          resultMap.put("pageNo", body.get("pageNo"));
//          resultMap.put("totalCount", body.get("totalCount"));
//          resultMap.put("data", itemList);
//          
//          
//      } catch (Exception e) {
//          e.printStackTrace();
//          resultMap.clear();
//          resultMap.put("Result", "0001");
//      }
//
//      return resultMap;
//  }
//	
}

	

	



