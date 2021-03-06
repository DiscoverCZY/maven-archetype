package net.yuanmomo.util.generator;



public class AjaxResponseBean {
	/**
	 * {"statusCode":"200", "message":"操作成功"}
	 * {"statusCode":"300", "message":"操作失败"}
	 * {"statusCode":"301", "message":"会话超时"}
	 *
	 */
	private int statusCode;
	private Object message;
	private String navTabId = "";
	private String rel = "";
	private String callbackType = "";
	private String forwardUrl = "";

	/**
	 * returnValue: 后台相应返回的json数据.
	 * @since JDK 1.7
	 */
	private Object returnValue = "";

	public static final int OK = 200;
	public static final String OK_MESSAGE = "操作成功";
	public static final String NO_DATA_MESSAGE = "没有数据结果";

	public static final int ERROR = 300;
	public static final String ERROR_MESSAGE = "操作失败";

	public static final String PARAMETER_INVALID_ERROR_MESSAGE = "提交参数格式不正确";

	public static final int TIMEOUT = 301;
	public static final String TIMEOUT_MESSAGE = "会话超时";

	public static final int PERMISSION_DENY = 302;
	public static final String PERMISSION_DENY_MESSAGE = "权限不足";

	public AjaxResponseBean() {}

	private AjaxResponseBean(int statusCode, Object message) {
		this.statusCode = statusCode;
		this.message = message;
	}

	private AjaxResponseBean(int statusCode, String message, Object returnValue) {
		this.statusCode = statusCode;
		this.message = message;
		this.returnValue = returnValue;
	}
	public AjaxResponseBean(int statusCode, String message, String navTabId,
							String rel, String callbackType, String forwardUrl) {
		this.statusCode = statusCode;
		this.message = message;
		this.navTabId = navTabId;
		this.rel = rel;
		this.callbackType = callbackType;
		this.forwardUrl = forwardUrl;
	}
	public static class Const{
		/************************************* 操作失败 **********************************************/
		public static AjaxResponseBean TIMEOUT_RESPONSE_BEAN =
				new AjaxResponseBean(TIMEOUT, TIMEOUT_MESSAGE);

		public static AjaxResponseBean NO_PERMISSION_RESPONSE_BEAN =
				new AjaxResponseBean(PERMISSION_DENY, PERMISSION_DENY_MESSAGE);

		public static AjaxResponseBean ERROR_RESPONSE_BEAN =
				new AjaxResponseBean(ERROR, ERROR_MESSAGE);

		public static AjaxResponseBean PARAMETER_INVALID_ERROR_RESPONSE_BEAN =
				new AjaxResponseBean(ERROR, PARAMETER_INVALID_ERROR_MESSAGE);

		/************************************* 操作成功 **********************************************/
		public static AjaxResponseBean NO_DATA_RESPONSE_BEAN =
				new AjaxResponseBean(OK, NO_DATA_MESSAGE);

		public static AjaxResponseBean SUCCESS_RESPONSE_BEAN =
				new AjaxResponseBean(OK, OK_MESSAGE);
	}

	public static AjaxResponseBean getReturnValueResponseBean(Object returnObj) {
		return new AjaxResponseBean(OK, OK_MESSAGE,returnObj);
	}

	public static AjaxResponseBean getReturnValueResponseBean(int statusCode,
															  String message,Object returnObj) throws Exception {
		return new AjaxResponseBean(statusCode,message, returnObj);
	}

	public static AjaxResponseBean getErrorResponseBean(String message)  {
		return new AjaxResponseBean(ERROR,message);
	}

	public static AjaxResponseBean getNoDataReturnValueResponseBean() throws Exception {
		return getNoDataReturnValueResponseBean(null);
	}
	public static AjaxResponseBean getNoDataReturnValueResponseBean(PaginationBean paginationBean) throws Exception {
		if(paginationBean == null){
			paginationBean  = new PaginationBean();
		}
		return new AjaxResponseBean(OK, NO_DATA_MESSAGE,paginationBean);
	}
	public int getStatusCode() {
		return statusCode;
	}
	public Object getMessage() {
		return message;
	}
	public String getNavTabId() {
		return navTabId;
	}
	public String getRel() {
		return rel;
	}
	public String getCallbackType() {
		return callbackType;
	}
	public String getForwardUrl() {
		return forwardUrl;
	}
	public Object getReturnValue() {
		return returnValue;
	}
}
