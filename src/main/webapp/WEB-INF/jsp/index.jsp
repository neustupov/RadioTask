<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>USERS</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 20px 15px;
            border-style: solid;
            border-width: 0;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #777;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 30px 15px;
            border-style: solid;
            border-width: 0;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }

        .header {
            font-family: Arial, sans-serif;
            font-size: 20px;
            font-weight: lighter;
            padding: 10px 5px;
            border-width: 0px;
            align-content: center;
            align-items: center;
        }

        .form {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 10px 15px;
            border-width: 0;
            align-content: center;
            align-items: center;
            background-color: #ffffff;
        }

        .form2 {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 10px 15px;
            border: 0 #ffffff;
            align-content: center;
            align-items: center;
            background-color: #ffffff;
        }

        .font {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            font-style: italic;
            padding: 0 15px;
            border-width: 0;
            align-content: center;
            align-items: center;
            background-color: #ffffff;
        }

        .font-noborder {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            font-style: italic;
            padding: 0 15px;
            border-width: 0;
            align-content: right;
            align-items: right;
            background-color: #ffffff;
        }

        .material {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 10px 15px;
            border: 1px solid #eeeeee;
            align-content: center;
            align-items: center;
            word-spacing: 20px;
        }

        .btn {
            width: 100%;
            height: 44px;
            font-size: 14px;
            border: 0px solid #253737;
            background: #dddddd;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }

        .btn:hover {
            width: 100%;
            height: 44px;
            font-size: 14px;
            border: 0px solid #253737;
            background: #dedede;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }

        .btn:active {
            width: 100%;
            height: 44px;
            font-size: 14px;
            border: 0px solid #253737;
            background: #eeeeee;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }

        .field {
            width: 100%;
            height: 30px;
            font-size: 14px;
            border: 1px solid #dddddd;
            background: #ffffff;
            margin-bottom: 20px;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }

        .link {
            text-decoration: none;
            background-color: #78909C;
            color: #ffffff;
            padding: 5px;
            border: 0 #78909C;
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }
    </style>
</head>
<body bgcolor="#eeeeee">
<table width="95%" align="center">
    <tr>
        <%--Sider--%>
        <td width="20%" valign="top">

            <table class="header" align="center">
                <tr class="header" align="center">
                    <td class="header" align="center" height="100px">
                    </td>
                </tr>
            </table>

            <%--Add form--%>
            <table width="300px">
                <tr>
                    <td>
                        <c:url var="addAction" value="/tasks/add"/>
                        <form:form action="${addAction}" commandName="task">
                            <%--Add form--%>
                            <table class="form" align="center" width="100%">
                                <tr>
                                    <td>
                                        <table class="header" align="center">
                                            <tr class="header" align="center">
                                                <td class="header" align="center">
                                                    <c:if test="${!empty task.phonenumber}">
                                                        ИЗМЕНИТЬ ЗАКАЗ
                                                    </c:if>
                                                    <c:if test="${empty task.phonenumber}">
                                                        ДОБАВИТЬ ЗАКАЗ
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%">
                                                <%--ID--%>
                                            <c:if test="${!empty task.id}">
                                                <tr>
                                                    <td class="font">
                                                        <form:label path="id">
                                                            <spring:message text="ID: "/>
                                                        </form:label>
                                                    </td>
                                                    <td class="form2">
                                                        <form:input path="id" readonly="true" size="8" disabled="true"/>
                                                        <form:hidden path="id"/>
                                                    </td>
                                                </tr>
                                            </c:if>
                                                <%--products name--%>
                                            <tr>
                                                <td class="font" colspan="2" align="center">
                                                    <form:label path="productsname">
                                                        <spring:message text="Наименование:"/>
                                                    </form:label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="form" colspan="2" align="center">
                                                    <form:input placeholder="Наименование" cssClass="field"
                                                                path="productsname"/>
                                                </td>
                                            </tr>
                                                <%--modelname--%>
                                            <tr>
                                            <tr>
                                                <td class="font" colspan="2" align="center">
                                                    <form:label path="modelsname">
                                                        <spring:message text="Модель:"/>
                                                    </form:label>
                                                </td>
                                            </tr>
                                            </tr>
                                            <tr>
                                                <td class="form" colspan="2" align="center">
                                                    <form:input placeholder="Модель" cssClass="field"
                                                                path="modelsname"/>
                                                </td>
                                            </tr>
                                                <%--phoneNumber--%>
                                            <tr>
                                                <td class="font" colspan="2" align="center">
                                                    <form:label path="phonenumber">
                                                        <spring:message text="Номер телефона:"/>
                                                    </form:label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="form" colspan="2" align="center">
                                                    <form:input placeholder="Номер телефона" cssClass="field"
                                                                path="phonenumber"/>
                                                </td>
                                            </tr>
                                                <%--buyersName--%>
                                            <tr>
                                                <td class="font" colspan="2" align="center">
                                                    <form:label path="buyersname">
                                                        <spring:message text="ФИО покупателя:"/>
                                                    </form:label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="form" colspan="2" align="center">
                                                    <form:input placeholder="ФИО покупателя" cssClass="field"
                                                                path="buyersname"/>
                                                </td>
                                            </tr>
                                                <%--amount--%>
                                            <tr>
                                                <td class="font" valign="center">
                                                    <form:label path="amount">
                                                        <spring:message text="Количество:"/>
                                                    </form:label>
                                                </td>
                                                <td class="form" valign="center">
                                                    <form:input placeholder="Количество" cssClass="field"
                                                                path="amount"/>
                                                </td>
                                            </tr>
                                                <%--prise--%>
                                            <tr>
                                                <td class="font">
                                                    <form:label path="price">
                                                        <spring:message text="Цена:"/>
                                                    </form:label>
                                                </td>
                                                <td class="form">
                                                    <form:input placeholder="Цена" cssClass="field"
                                                                path="price"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="form">
                                                    <c:if test="${!empty task.phonenumber}">
                                                        <input class="btn" type="submit"
                                                               value="<spring:message text="ИЗМЕНИТЬ ЗАКАЗ"/>"/>
                                                    </c:if>
                                                    <c:if test="${empty task.phonenumber}">
                                                        <input class="btn" type="submit"
                                                               value="<spring:message text="ДОБАВИТЬ ЗАКАЗ"/>"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </form:form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="form" width="100%">
                            <tr>
                                <td class="form">
                                    <form action="/">
                                        <input class="field" type="text" placeholder="Мин 3 цифры телефона"
                                               name="phonenumber"/>
                                        <input class="btn" type="submit" value="Поиск"/>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <%--Vertical divider--%>
        <td width="2%">

        </td>
        <%--Main table--%>
        <td width="78%" valign="top">
            <table width="100%">
                <tr>
                    <td>
                        <table class="header" align="center">
                            <tr class="header" align="center">
                                <td class="header" align="center" height="100px">
                                    ЗАКАЗЫ
                                </td>
                            </tr>
                        </table>
                        <c:if test="${!empty listTasks}">
                            <table class="tg" align="center" width="100%">
                                <tr>
                                    <th width=5%>ID</th>
                                    <th width=15%>Наименование</th>
                                    <th width=10%>Название модели</th>
                                    <th width=10%>Количество</th>
                                    <th width=10%>Цена</th>
                                    <th width=15%>Дата изменения/добавления</th>
                                    <th width=15%>Телефон</th>
                                    <th width=15%>ФИО покупателя</th>
                                    <th width=5%></th>
                                    <th width=5%></th>
                                </tr>
                                <tr height="10px" bgcolor="#eeeeee">

                                </tr>
                                <c:forEach items="${listTasks}" var="task">
                                    <tr>
                                        <td align="center">${task.id}</td>
                                        <td align="center">${task.productsname}</td>
                                        <td align="center">${task.modelsname}</td>
                                        <td align="center">${task.amount}</td>
                                        <td align="center">${task.price}</td>
                                        <td align="center">${task.orderdate}</td>
                                        <td align="center">${task.phonenumber}</td>
                                        <td align="center">${task.buyersname}</td>
                                        <td align="center"><a href="<c:url value='/edit/${task.id}'/>"><img
                                                src="../../resources/pencilcircle.png"></a></td>
                                        <td align="center"><a href="<c:url value='/remove/${task.id}'/>"><img
                                                src="../../resources/closecircle2.png"></a></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>
                        <c:if test="${empty listTasks}">
                            <center>List of tasks is empty.</center>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="material" align="center">
                            <tr align="center">
                                <td align="center">
                                    <c:url value="/" var="prev">
                                        <c:param name="page" value="${page-1}"/>
                                    </c:url>
                                    <c:if test="${page > 1}">
                                        <a href="<c:out value="${prev}" />" class="link">Previous</a>
                                    </c:if>

                                    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                                        <c:choose>
                                            <c:when test="${page == i.index}">
                                                <span>${i.index}</span>
                                            </c:when>
                                            <c:otherwise>
                                                <c:url value="/" var="url">
                                                    <c:param name="page" value="${i.index}"/>
                                                </c:url>
                                                <a href='<c:out value="${url}" />' class="link">${i.index}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:url value="/" var="next">
                                        <c:param name="page" value="${page + 1}"/>
                                    </c:url>
                                    <c:if test="${page + 1 <= maxPages}">
                                        <a href='<c:out value="${next}" />' class="link">Next</a>
                                    </c:if>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
</body>
</html>