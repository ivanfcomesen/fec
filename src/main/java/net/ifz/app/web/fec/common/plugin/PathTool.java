package net.ifz.app.web.fec.common.plugin;

import javax.servlet.ServletContext;

public class PathTool {
	private static ServletContext context = null;

	public static ServletContext getContext() {
		return context;
	}

	public static void setContext(ServletContext aContext) {
		context = aContext;
	}
	
	public static String getAbsolute(String relativePath){
		return context.getRealPath(relativePath);  
	}

}
