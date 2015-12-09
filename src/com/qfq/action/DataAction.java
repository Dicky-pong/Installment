package com.qfq.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.google.gson.JsonObject;
import com.qfq.entity.CategoryEntity;
import com.qfq.po.Category;
import com.qfq.service.DataService;
import com.qfq.utils.ResponseUtil;

public class DataAction extends BaseAction implements ServletResponseAware{

	private HttpServletResponse response;
	
	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}

	private DataService dataService;

	public DataService getDataService() {
		return dataService;
	}

	public void setDataService(DataService dataService) {
		this.dataService = dataService;
	}

	public void getSalesByGoods(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String goodsId = request.getParameter("goodsId");
		int[] datas1 = dataService.getSalesByGoods("1", "2015");
		int[] datas2 = dataService.getSalesByGoods("27", "2015");
		
		JSONArray array1 = new JSONArray();
		
		JSONObject object = new JSONObject();
		object.put("style", "iPhone6");
		for(int i=0; i<datas1.length; i++){
			array1.add(datas1[i]);
		}
		object.put("number", array1);
		
		
		JSONArray array2 = new JSONArray();
		JSONObject object2 = new JSONObject();
		object2.put("style", "iPhone6s");
		for(int i=0; i<datas2.length; i++){
			array2.add(datas2[i]);
		}
		object2.put("number", array2);
		
		JSONArray array3 = new JSONArray();
		array3.add(object);
		array3.add(object2);
		
		JSONObject resultObject = new JSONObject();
		resultObject.put("result", array3);
		System.out.println("Action -- getSaleData success: "+resultObject);
        ResponseUtil.renderJson(response, resultObject.toString());
	}
	
}
