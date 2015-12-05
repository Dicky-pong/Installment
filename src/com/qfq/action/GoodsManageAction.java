package com.qfq.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ModelDriven;
import com.qfq.entity.CategoryEntity;
import com.qfq.po.Category;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.service.GoodsService;
import com.qfq.utils.Page;
import com.qfq.utils.PageUtil;
import com.qfq.utils.ResponseUtil;

@Scope(value="prototype")
public class GoodsManageAction extends BaseAction implements ModelDriven<Goods>,ServletResponseAware{
	
	private HttpServletResponse response;
	private GoodsService goodsService;
	private Page page;
	
	private File file;
	private String fileContentType; // 文件的内容类型  
	private String fileFileName; // 上传文件名
	
	private Goods goods = new Goods();
	private List<Goods> goodsList;
	private Category category;
	private List<Category> categoryList;
	
	private String[] colorCheck;//添加商品时接受颜色值
	private String[] periodCheck;//添加商品时接受分期值
	private String[] price;//添加商品时接受商品类型对应的价钱
	private String[] style;//添加商品时接受商品类型值
	private String[] count;//添加商品时接受商品类型对应的数量
	private String categoryId;//添加商品时的二级分类ID
	
	private String goodsName;//条件查询时的条件
	private String goodsBrand;//条件查询时的条件
	private String categoryId4Search;//查询时需要接受的二级分类ID
	
	
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String[] getCount() {
		return count;
	}
	public void setCount(String[] count) {
		this.count = count;
	}
	public String getCategoryId4Search() {
		return categoryId4Search;
	}
	public void setCategoryId4Search(String categoryId4Search) {
		this.categoryId4Search = categoryId4Search;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsBrand() {
		return goodsBrand;
	}
	public void setGoodsBrand(String goodsBrand) {
		this.goodsBrand = goodsBrand;
	}
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String[] getPrice() {
		return price;
	}
	public void setPrice(String[] price) {
		this.price = price;
	}
	public String[] getStyle() {
		return style;
	}
	public void setStyle(String[] style) {
		this.style = style;
	}
	public String[] getColorCheck() {
		return colorCheck;
	}
	public void setColorCheck(String[] colorCheck) {
		this.colorCheck = colorCheck;
	}
	public String[] getPeriodCheck() {
		return periodCheck;
	}
	
	public void setPeriodCheck(String[] periodCheck) {
		this.periodCheck = periodCheck;
	}
	
	public GoodsService getGoodsService() {
		return goodsService;
	}
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	public List<Category> getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	//installment暂时不能在这里关联查询出来！会出错，注意！！1
	public String showGoods(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String goodsId = request.getParameter("goodsId");
		goods = goodsService.getGoods(goodsId.trim());
		
		for(Object o : goods.getGoodstypes()){
			Goodstype gt = (Goodstype)o;
			System.out.println("sghowgood:: "+gt.getTypename()+" - "+gt.getPrice());
		}
		return SUCCESS;
	}
	
	public String showAllGoods(){
		HttpServletRequest req = ServletActionContext.getRequest();
		int currentPage = 1;
		String currentPageStr = req.getParameter("currentPage");
//		String tempCategoryId = req.getParameter("categoryId4Search");
//		String tempGoodsName = req.getParameter("goodsName");
//		String tempGoodsBrand = req.getParameter("goodsBrand");
		if (null == currentPageStr || "".equals(currentPageStr)) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		if(goodsBrand == null||"".equals(goodsBrand.trim())){
			goodsBrand="";
		}
		if(goodsName == null||"不限".equals(goodsName.trim())){
			goodsName="";
		}
//		if(tempCategoryId == null || "".equals(categoryId4Search.trim())){
//			categoryId4Search = "";
//		}
		int everyPage = 5;
		int totalCount = goodsService.getGoodsCount(goodsName, goodsBrand, categoryId4Search);
		page = PageUtil.createPage(everyPage, totalCount, currentPage);
		goodsList = goodsService.getPaperGoods(goodsName, goodsBrand, categoryId4Search, page.getBeginIndex(), everyPage);
		categoryList = goodsService.getAllCatagory();
		System.out.println("GoodsManageAction - goodsName:"+goodsName+"\ngoodsbrand: "+goodsBrand+"\ncategoryId4Search:"+categoryId4Search);
		if(goodsList != null && goodsList.size() != 0)
			System.out.println("the goodsList : "+goodsList.size());
		else
			System.out.println("goodsList is null!!");
		return SUCCESS;
	}
	
	public String createGoods(){
		//HttpServletRequest req = ServletActionContext.getRequest();
		try{
			String root = ServletActionContext.getRequest().getRealPath("/img");
			InputStream is = new FileInputStream(file);
			File destFile = new File(root, fileFileName);
			OutputStream os = new FileOutputStream(destFile);
			byte[] buffer = new byte[400];
			int length = 0;
			while(-1 != (length = is.read(buffer))){
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
			goods.setPicture("/img/"+fileFileName);
			System.out.println("crateGoods - fileName: "+fileFileName+" fileResultPath "+destFile.getPath());
			if(price != null){
				String[][] price$style = new String[price.length][3];
				for(int i=0; i<price.length; i++){
					price$style[i][0] = style[i];
					price$style[i][1] = price[i];
					price$style[i][2] = count[i];
					System.out.println("style & price : "+style[i]+" - "+price[i]+" - "+count[i]);
				}
				goodsService.saveGoods(goods, Integer.valueOf(categoryId), colorCheck, periodCheck, price$style);
			}
		}catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	public String toCreateGoods(){
		System.out.println("GoodsManageAction - toCreateGoods - categoryList: "+categoryList);
		setCategoryList(goodsService.getAllCatagory());
		return SUCCESS;
	}
	
	/**
	 * ajax分类二级联动获取二级分类的接口
	 */
	public void getSecondCategory() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String categoryId = request.getParameter("categoryId");//如何保证categoryId一定有效？
		List<Category> list;
		if(null == categoryId || "".equals(categoryId)){
			list =  goodsService.getSecondCategory(0);
		}
		list =  goodsService.getSecondCategory(Integer.valueOf(categoryId).intValue());
		JSONObject object = new JSONObject();
		if(list != null){
			JSONArray array = new JSONArray();
			CategoryEntity categoryEntity;
			for(Category category : list){
				categoryEntity = new CategoryEntity();
				categoryEntity.setId(category.getId());
				categoryEntity.setName(category.getName());
				array.add(categoryEntity);
			}
			object.put("code", 1);
            object.put("message", array);
			System.out.println("Action -- getcategory success: "+object);
            ResponseUtil.renderJson(response, object.toString());
		}else{
			sendFailureMsg("系统尚未创建角色！");
		}
	}
	/**
	 * 根据选择的多选框数目和对应的商品ID删除商品的Action
	 * @return 
	 * @throws Exception
	 */
	public String deleteGoods() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] strs = request.getParameterValues("choose");
		if(strs != null){
			for(int i =0; i<strs.length; i++){
				System.out.println("strs的第"+i+"个字符值： "+strs[i]);
			}
			System.out.println("deleteGoods: "+goodsService.deleteGoods(strs));
		}
		return SUCCESS;
	}
	
	public String updateGoods(){
		System.out.println("Action updateGoods: id:"+goods.getId()+" name"+goods.getName()+" brand:"+goods.getBrand());
		goodsService.updateGoods(goods);
		return SUCCESS;
	}
	
	
	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}
	/**
	 * 以数据流的方式发送失败的信息
	 * @param msg 失败信息的内容
	 */
	private void sendFailureMsg(String msg){
		JSONObject object = new JSONObject();
		object.put("code", 0);
        object.put("message", msg);
		System.out.println("Action - failed: "+object.toString());
        ResponseUtil.renderJson(response, object.toString());
	}
	public Goods getModel() {
		return goods;
	}
}
