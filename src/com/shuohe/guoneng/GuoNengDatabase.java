package com.shuohe.guoneng;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.database.DBhelper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class GuoNengDatabase {

	public static String get()
	{
	    String sql = null;  
	    DBhelper db1 = null;  
	    ResultSet ret = null;  
		sql = "select * from shaolinbusrealtime";//SQL语句  
        db1 = new DBhelper(sql);//创建DBHelper对象  
        try {  
            ret = db1.pst.executeQuery();//执行语句，得到结果集  
            
            ArrayList<ShaolinBus> shaolinbusList = new ArrayList<ShaolinBus>();
            
            while (ret.next()) {  
            	ShaolinBus bus = new ShaolinBus(
            			ret.getString(2), //carid
            			Float.parseFloat(ret.getString(3)), //gpsSignal
            			Float.parseFloat(ret.getString(4)), //soc
						Float.parseFloat(ret.getString(5)), //batteryVoltage
						Float.parseFloat(ret.getString(6)), //batteryCurrent
            			Double.parseDouble(ret.getString(7)), //gpsLongitude
            			Double.parseDouble(ret.getString(8))  //gpsLatitude
            		);
            	shaolinbusList.add(bus);
            }//显示数据  
            String jsonString = toJsonByPretty(shaolinbusList);
            //System.out.println(jsonString);
            ret.close();  
            db1.close();//关闭连接  
            return jsonString;
        } catch (SQLException e) {  
            e.printStackTrace();  
            return null;
        }  
	}
	public static String getShaolinBusInfo()
	{
	    String sql = null;  
	    DBhelper db1 = null;  
	    ResultSet ret = null;  
		sql = "select * from shaolincarlist";//SQL语句  
        db1 = new DBhelper(sql);//创建DBHelper对象  
        try {  
            ret = db1.pst.executeQuery();//执行语句，得到结果集  
            
            ArrayList<ShaolinBusInfo> shaolinbusList = new ArrayList<ShaolinBusInfo>();
            
            while (ret.next()) {  
            	ShaolinBusInfo bus = new ShaolinBusInfo(
            			ret.getString(2), //CarBatchName
            			ret.getString(3), //CarId
            			ret.getString(4), //CarTypeName
            			ret.getString(5), //CompanyName
            			ret.getString(6), //LicensePlate
            			ret.getString(7), //TerminalCode
            			ret.getString(8), //UserRegionName
            			ret.getString(9) //VinNo
            		);
            	shaolinbusList.add(bus);
            }//显示数据  
            String jsonString = toJsonByPretty(shaolinbusList);
            //System.out.println(jsonString);
            ret.close();  
            db1.close();//关闭连接  
            return jsonString;
        } catch (SQLException e) {  
            e.printStackTrace();  
            return null;
        }  
	}
	/**
	 * @param carId
	 * @param lineNumber 请求的条数
	 * @return
	 */
	public static String getShaolinBusBatteryHistoryForLast(String carId,String lineNumber)
	{
	    String sql = null;  
	    DBhelper db1 = null;  
	    ResultSet ret = null;  
		sql = "SELECT * FROM shaolincarparamspider WHERE carID="+carId+" ORDER BY id DESC LIMIT "+lineNumber;//SQL语句  			
		
        db1 = new DBhelper(sql);//创建DBHelper对象  
        try {  
            ret = db1.pst.executeQuery();//执行语句，得到结果集  
            
            ArrayList<ShaoLinBusBattery> shaolinbusList = new ArrayList<ShaoLinBusBattery>();
            
            while (ret.next()) {  
            	ShaoLinBusBattery bus = new ShaoLinBusBattery(
            			Integer.parseInt(ret.getString(3)), //gpsSignal
            			Float.parseFloat(ret.getString(4)), //soc
            			Float.parseFloat(ret.getString(5)), //batteryVoltage
            			Float.parseFloat(ret.getString(6)), //batteryCurrent
            			ret.getString(9)
            		);
            	shaolinbusList.add(bus);
            }//显示数据  
            String jsonString = toJsonByPretty(shaolinbusList);
            //System.out.println(jsonString);
            ret.close();  
            db1.close();//关闭连接  
            return jsonString;
        } catch (SQLException e) {  
            e.printStackTrace();  
            return null;
        }  
	}
	
	
	/**
	 * 转换为带格式化输出的Json字符串
	 * @author    秦晓宇
	 * @date      2016年4月13日 下午5:01:55 
	 * @param object
	 * @return
	 */
	private static String toJsonByPretty(Object object)
	{
		Gson gson = new GsonBuilder()  
		//.excludeFieldsWithoutExposeAnnotation() 						//不导出实体中没有用@Expose注解的属性  
		.enableComplexMapKeySerialization() 							//支持Map的key为复杂对象的形式  
		.serializeNulls().setDateFormat("yyyy-MM-dd HH:mm:ss:SSS")		//时间转化为特定格式    
		//.setFieldNamingPolicy(FieldNamingPolicy.UPPER_CAMEL_CASE)		//会把字段首字母大写,注:对于实体上使用了@SerializedName注解的不会生效.  
		.setPrettyPrinting() 											//对json结果格式化.  
		//.setVersion(1.0)    											//有的字段不是一开始就有的,会随着版本的升级添加进来,那么在进行序列化和返序列化的时候就会根据版本号来选择是否要序列化.  
																		//@Since(版本号)能完美地实现这个功能.还的字段可能,随着版本的升级而删除,那么  
																		//@Until(版本号)也能实现这个功能,GsonBuilder.setVersion(double)方法需要调用.  
		.create();  
		String str = gson.toJson(object);
		return str;
	}
	
}
