package mobile;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class JSON {
	public static String makeJSON(Object obj){
		Method[] methods = obj.getClass().getMethods();
		String sValue = "";
		String json = "{";
		
		for(int i = 0; i<methods.length; i++){
			Method method = methods[i];
			String name = method.getName();
			if(name.startsWith("get")){
				try {
					if(name.equals("getClass"))
						continue;
					name = name.substring(3, name.length());
					name = name.toLowerCase();
					
					Object value = method.invoke(obj, new Object[]{});
					sValue = value.toString();
					
				/* 에러처리는 항상 습관들이기 ^^ */
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				if(!json.equals("{"))
					json += " , " ;
				json += "\"" + name +"\"" + " : " + "\"" + sValue +"\"" ;
				/*
				 * 	if(!json.equals("{")){
					json += " , " + "\"" + name +"\"" + " : " + "\"" + sValue +"\"" ;
				}else{
					json += "\"" + name +"\"" + " : " + "\"" + sValue +"\"" ;
				}
				 */
			}
		}
		json += "}";
		
		return json;
	}
}
