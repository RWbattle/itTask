<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/body.css">
    <title>葡萄藤</title>
</head>
<body>

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->

    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item">
            <img src="${pageContext.request.contextPath}/images/banner-0.jpg" alt="" class="img-responsive">
        </div>
        <div class="item active">
            <img src="${pageContext.request.contextPath}/images/banner-1.jpg" alt="" class="img-responsive">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/images/banner-2.jpg" alt="" class="img-responsive">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/images/banner-3.jpg" alt="" class="img-responsive">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/images/banner-4.jpg" alt="" class="img-responsive">
        </div>

    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev"><img src="${pageContext.request.contextPath}/images/leftarrow.png" alt="">
    </a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next"><img src="${pageContext.request.contextPath}/images/rightarrow.png" alt="">
    </a>
</div>
<div class="logo">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-3 text-center">
                <img src="${pageContext.request.contextPath}/images/logo01.png" alt="">
                <strong>高效</strong>
                <p>将五到七年的成长时间，缩短<br>到一年到三年。</p>
            </div>
            <div class="col-xs-12 col-sm-3 text-center">
                <img src="${pageContext.request.contextPath}/images/logo02.png" alt="">
                <strong>规范</strong>
                <p>标准的实战教程，不会走弯路</p>
            </div>
            <div class="col-xs-12 col-sm-3 text-center">
                <img src="${pageContext.request.contextPath}/images/logo03.png" alt="">
                <strong>人脉</strong>
                <p>同班好友，同院学长，技术大师，入学就混入职脉圈，为以后铺平道路。</p>
            </div>
            <div class="col-xs-12 col-sm-3 text-center number">
                <strong><img src="${pageContext.request.contextPath}/images/logo04.png" alt="">${onlineStudents}</strong>
                <span class="gy">累计在线学习人数</span>
                <strong><img src="${pageContext.request.contextPath}/images/logo04.png" alt="">${jobStudents}</strong>
                <span class="gy">学员已经找到满意工作</span>
            </div>
        </div> <!-- logo-row -->
    </div> <!-- logo-container -->
</div> <!-- logo -->
<div class="stream">
    <div class="container">
        <div class="row text-center">
            <div class="col-xs-12">
                <strong>如何学习</strong>
            </div>
            <div class="col-xs-12 media-stream">
                <div class="colxs-12 col-sm-3">
                    <div class="circular">1<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>匹配你现在的个人情况寻找适合自己的岗位</p>
                </div>
                <div class="colxs-12 col-sm-3">
                    <div class="circular">2<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>了解职业前景薪金待遇、竞争压力等</p>
                </div>
                <div class="colxs-12 col-sm-3">
                    <div class="circular">3<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>掌握行业内顶级技能</p>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <div class="circular">4<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>查看职业目标任务</p>
                </div>
            </div>
            <div class="col-xs-12 media-stream">
                <div class="colxs-12 col-sm-3">
                    <div class="circular">5<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>参考学习资源，掌握技能点，逐个完成任务</p>
                </div>
                <div class="colxs-12 col-sm-3">
                    <div class="circular">6<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>加入班级，和小伙伴们互帮互助，一块学习</p>
                </div>
                <div class="colxs-12 col-sm-3">
                    <div class="circular">7<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>选择导师，一路引导，加速自己成长</p>
                </div>
                <div class="colxs-12 col-sm-3">
                    <div class="circular">8<img src="${pageContext.request.contextPath}/images/logo04.png" alt="" /></div>
                    <p>完成职业技能，升级业界大牛</p>
                </div>
            </div>
        </div> <!-- stream-row -->
    </div> <!-- stream-container -->
</div> <!-- stream -->


<div class="student">
    <div class="container">
        <div class="row">

            <div class="col-xs-12 text-center">
                <strong>优秀学员展示</strong>
            </div>

            <c:if test="${empty goodStudents}">
                暂无优秀学员
            </c:if>


            <c:if test="${!empty goodStudents}">
                 <c:forEach items="${goodStudents}" var="li">

                          <div class="col-xs-12 col-sm-3 text-center student-border media-student">
                           <img src="${pageContext.request.contextPath}/images/portrait1.png" alt="">
                           <strong>${li.name}</strong>
                           <p>${li.detail}</p>
                           </div>
                 </c:forEach>
            </c:if>


            <div class="col-xs-12 small-circle text-center">
                <a href=""><span></span></a>
                <a href=""><span></span></a>
                <a href=""><span></span></a>
                <a href=""><span></span></a>
            </div>
        </div> <!-- student-row -->
    </div> <!-- student-container -->
</div>
<div class="cooperation">
    <div class="container">
        <div class="row text-center">
            <div class="col-xs-12"><strong>战略合作企业</strong></div>
            <div class="cooperation-warp col-xs-12 col-sm-12">
                <div class="col-xs-12 col-sm-2 img-shadow media-img-shadow"><img src="${pageContext.request.contextPath}/images/qy1.png" alt="" class="img-responsive"></div>
                <div class="col-xs-12 col-sm-2 img-shadow media-img-shadow"><img src="${pageContext.request.contextPath}/images/qy2.png" alt="" class="img-responsive"></div>
                <div class="col-xs-12 col-sm-2 img-shadow media-img-shadow"><img src="${pageContext.request.contextPath}/images/qy3.png" alt="" class="img-responsive"></div>
                <div class="col-xs-12 col-sm-2 img-shadow media-img-shadow"><img src="${pageContext.request.contextPath}/images/qy4.png" alt="" class="img-responsive"></div>
                <div class="col-xs-12 col-sm-2 img-shadow media-img-shadow"><img src="${pageContext.request.contextPath}/images/qy5.png" alt="" class="img-responsive"></div>
            </div>
        </div>
    </div>
</div>
<div class="friends">
    <div class="div container">
        <div class="row">
            <div class="col-xs-12 hidden-xs text-center">
                <strong>友情链接</strong>
                <ul class="text-center">
                    <li><a href="">·手机软件</a></li>
                    <li><a href="">·教师招聘</a></li>
                    <li><a href="">·找工作</a></li>
                    <li><a href="">·线下聚会</a></li>
                    <li><a href="">·线上辅导</a></li>

                    <li><a href="">·手机软件</a></li>
                    <li><a href="">·教师招聘</a></li>
                    <li><a href="">·找工作</a></li>
                    <li><a href="">·线下聚会</a></li>
                    <li><a href="">·线上辅导</a></li>
                    <br>
                    <li><a href="">·手机软件</a></li>
                    <li><a href="">·教师招聘</a></li>
                    <li><a href="">·找工作</a></li>
                    <li><a href="">·线下聚会</a></li>
                    <li><a href="">·线上辅导</a></li>

                    <li><a href="">·手机软件</a></li>
                    <li><a href="">·教师招聘</a></li>
                    <li><a href="">·找工作</a></li>
                    <li><a href="">·线下聚会</a></li>
                    <li><a href="">·线上辅导</a></li>

                </ul>
            </div> <!-- friends-col-xs-12 -->
        </div>  <!-- friends-row -->
    </div> <!-- friends-container -->
</div>
</body>
</html>
