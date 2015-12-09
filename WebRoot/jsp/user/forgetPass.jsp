<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农资联盟杯</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/personCenter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/input.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        (function(){
            if (typeof jQuery == 'undefined') {
                document.write(unescape("%3Cscript src='js/jquery-2.1.4.min.js' type='text/javascript'%3E%3C/script%3E"));
            }
        })()
    </script>
    <style>
        .main {
            background: #f2f2f2;

        }
        .container {
            width:960px;
            margin: 0 auto;
        }
        
        .personinfotable {
            margin-left: 200px;
        }
        
        .personinfotable tr td {
            padding-left: 20px;
            height: 30px;
            
        }
        
        .container {
            padding-top: 50px;
        } 

        .infoshow {
            background: #FFF;
            padding: 20px;
            border-radius: 5px;
        }

        .infoshow h1 {
            font-size: 20px;
            font-weight: 200;
            border-bottom: 1px solid #CACACA;
            padding-bottom: 10px;
        }

        .infoshow table {
            margin-top: 20px;
            width: 100%;
        }

        .infoshow table tr.bg {
            background: #F9F9F9;
            border: 1px solid #E2E2E2;
        }

        .infoshow table tr.bg td {
            height: 30px;
        }

        .infoshow table tr td {
            height: 10px;
        }

        .infoshow table tr td a {
            float: right;
            margin-right: 30px;
        }

        .infoshow form {
            width: 700px;
            margin: 0 auto;
            margin-top: 100px;
        }


    </style>
</head>
<body>
 <header>
		<div class="logo"><h4>地球表面最好的分期商城</h4><h1>趣分期 <span>网上商城</span></h1></div>
	</header>
    <section class="main">

        <section class="container">
            <div class="infoshow">
                <h1>修改密码</h1>
                <form action="UserInfo_forgetPass.do" method="post">
                    <table>
                        <tr>
                            <th>
                                <label for="username">用户名：</label>
                            </th>
                            <td>
                                <input type="text" name="userInfoEntity.username" placeholder="请输入用户名" required>       
                            </td>
                            <td>
                            <label>${msg }</label>
                            </td>
                        <tr>
                            
                            <th>
                                <label for="password">邮箱：</label>   
                            </th>
                            <td>
                                <input type="text" name="userInfoEntity.email" placeholder="请输入邮箱" required>
                            </td>
                            <td>
                            <label>${msg }</label>
                            </td>
                        </tr>
                        
                    </table>
                    
                    <div class="buttonGroup"><input type="submit" value="找回密码" />
                <input type="reset" value="重置" />	</div>
                     


                </form>
            </div>
        </section>
    </section>
    <footer>
        <h4>农资联盟杯作品展示小demo</h4>
        <p>&copy;copyright EarlTechnology 2015</p>
    </footer>
    <script src="js/index.js"></script>
    <script src="js/goodslist.js"></script>
</body>
</html>