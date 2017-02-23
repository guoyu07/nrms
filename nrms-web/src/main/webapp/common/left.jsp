<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
     
<div class="sidebar">
     <nav class="sidenav">
        <ul class="nav_ul" id="accordion">
            <li>
                <a class="no_link sidebtn" href="javascript:void(0);">
                    <span class="icon-menu"></span>
                </a>
            </li>
            <li>
                <a class="bor-left-nav-btm" href="${basePath }" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="按钮">
                    <div  class="up-pull-left">
                        <span class="icon-shouye"></span>
                        首页
                    </div>
                </a>
            </li>
            <li>
                <a class="bor-left-nav-btm" href="#collapse_form" data-toggle="collapse" aria-expanded="false">
                    <div  class="up-pull-left">
                        <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="表单"></span>
                        系统管理
                    </div>
                    <div  class="up-pull-right">
                        <span class="icon-down-open"></span>
                    </div>
                </a>
                <ul class="nav_ul2 up-collapse" id="collapse_form" aria-expanded="false">
                    <li>
                        <a class="no_link" href="${basePath }/userInfo/userInfoList" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="多列内联表单">
                            <div  class="up-pull-left">
                                <span class="icon-right-dir"></span>
                                用户管理
                            </div>
                        </a>
                    </li>
                    <!-- <li>
                        <a class="no_link" href="form.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表单">
                             <div  class="up-pull-left">
                                <span class="icon-right-dir"></span>
                                参数管理
                            </div>
                        </a>
                    </li> -->
                </ul>
            </li>
            <li>
                <a class="bor-left-nav-btm" href="#collapse_form1" data-toggle="collapse" aria-expanded="false">
                    <div  class="up-pull-left">
                        <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="表单"></span>
                        服务器管理
                    </div>
                    <div  class="up-pull-right">
                        <span class="icon-down-open"></span>
                    </div>
                </a>
                <ul class="nav_ul2 up-collapse" id="collapse_form1" aria-expanded="false">
                <c:if test="${sessionScope.LOGIN_USER.userRole eq '1'  || sessionScope.LOGIN_USER.userRole eq '2'  }">
                    <li>
                        <a class="no_link" href="form_more.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="多列内联表单">
                            <div  class="up-pull-left">
                                <span class="icon-right-dir"></span>
                                物理服务器管理
                            </div>
                        </a>
                    </li>
                    </c:if>
                    
                    <li>
                        <a class="no_link" href="form.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表单">
                             <div  class="up-pull-left">
                                <span class="icon-right-dir"></span>
                                虚拟服务器管理
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a class="bor-left-nav-btm" href="#collapse_table" data-toggle="collapse" aria-expanded="false">
                    <div  class="up-pull-left">
                        <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="表单"></span>
                        虚拟机申请
                    </div>
                    <div  class="up-pull-right">
                        <span class="icon-down-open"></span>
                    </div>
                </a>
                <ul class="nav_ul2 up-collapse" id="collapse_table" aria-expanded="false">
                	 <c:if test="${sessionScope.LOGIN_USER.userRole eq '3'   }">
                    <li class="active">
                        <a class="no_link" href="get_x.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表格">
                            <div  class="up-pull-left">
                                <span class="icon-right-dir"></span>
                                虚拟服务器申请
                            </div>
                        </a>
                    </li>
                    </c:if>
                    <c:if test="${sessionScope.LOGIN_USER.userRole eq '1'  || sessionScope.LOGIN_USER.userRole eq '2'  }">
                    <li>
                        <a class="no_link" href="table.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表格">
                            <div  class="up-pull-left">
                                <span class="icon-right-dir"></span>
                                虚拟服务器审批
                            </div>
                        </a>
                    </li>
                    </c:if>
                </ul>
            </li>
        </ul>
    </nav>
</div>