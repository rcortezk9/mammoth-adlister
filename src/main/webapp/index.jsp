<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Homeschool Lifeline</h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-6">
                    <h3>Parent</h3>
                    <p>Welcome to our homeschooler's solution where parents don't know it all can connect with specialize teacher</p>
                    <button>new user</button>
                    <button>login</button>
                </div>
                <div class="col-md-6">
                    <h3>Teacher</h3>
                    <p>Teachers that will help where parents can't on all educational subjects</p>
                    <button>new user</button>
                    <button>login</button>
                </div>
            </div>
        </div>

    </div>
</body>
</html>












