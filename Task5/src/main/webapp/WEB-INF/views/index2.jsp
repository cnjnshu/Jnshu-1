<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"  %>


<div class="container">

    <div class="nav-title">首页&gt;职业</div>
    <div class="nav-bar">
        <span class="">方向：</span>
        <a class="nav-bar-a a-selected" href="">全部</a>
        <a class="nav-bar-a" href="">前端开发</a>
        <a class="nav-bar-a" href="">后端开发</a>
        <a class="nav-bar-a" href="">移动开发</a>
        <a class="nav-bar-a" href="">整站开发</a>
        <a class="nav-bar-a" href="">运营维护</a>
    </div>




    <div class="caption">
        <h4>前端开发方向</h4>
    </div>

    <div class="row">

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[0].postion}</h4>
                        <p class="text-present">${postionList[0].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[0].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[0].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[0].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[0].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[0].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[0].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[0].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[0].postion}</h4>
                        <p class="text-present">${postionList[0].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[0].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[0].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[0].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[0].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[0].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[0].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[0].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[0].postion}</h4>
                        <p class="text-present">${postionList[0].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[0].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[0].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[0].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[0].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[0].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[0].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[0].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>



    </div>



    <div class="caption">
        <h4>后端开发方向</h4>
    </div>

    <div class="row">

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[1].postion}</h4>
                        <p class="text-present">${postionList[1].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[1].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[1].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[1].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[1].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[1].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[1].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[1].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[1].postion}</h4>
                        <p class="text-present">${postionList[1].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[1].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[1].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[1].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[1].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[1].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[1].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[1].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[1].postion}</h4>
                        <p class="text-present">${postionList[1].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[1].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[1].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[1].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[1].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[1].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[1].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[1].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[1].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>



    </div>


    <div class="caption">
        <h4>移动开发方向</h4>
    </div>

    <div class="row">

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[2].postion}</h4>
                        <p class="text-present">${postionList[2].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[2].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[2].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[2].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[2].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[2].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[2].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[2].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[2].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[2].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[2].postion}</h4>
                        <p class="text-present">${postionList[2].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[2].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[2].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[2].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[2].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[2].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[2].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[2].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[2].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[2].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[2].postion}</h4>
                        <p class="text-present">${postionList[2].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[2].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[2].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[0].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[2].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[2].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[2].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[2].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[2].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[2].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[2].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>

    </div>



    <div class="caption">
        <h4>整站开发方向</h4>
    </div>

    <div class="row">

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[3].postion}</h4>
                        <p class="text-present">${postionList[3].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[3].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[3].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[3].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[3].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[3].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[3].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[3].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[3].postion}</h4>
                        <p class="text-present">${postionList[3].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[3].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[3].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[3].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[3].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[3].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[3].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[3].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[3].postion}</h4>
                        <p class="text-present">${postionList[3].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[3].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[3].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[3].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[3].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[3].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[3].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[3].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[3].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


    </div>



    <div class="caption">
        <h4>运营维护方向</h4>
    </div>

    <div class="row">

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[4].postion}</h4>
                        <p class="text-present">${postionList[4].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[4].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[4].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[4].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[4].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[4].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[4].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[4].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>

        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[4].postion}</h4>
                        <p class="text-present">${postionList[4].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[4].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[4].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[4].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[4].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[4].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[4].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[4].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>




        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">
            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="${pageContext.request.contextPath}/resources/imges/687.png"></div>
                    <div class="text">
                        <h4 class="">${postionList[4].postion}</h4>
                        <p class="text-present">${postionList[4].postionIntro}</p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].threshold}.png"></div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].degreeDiff}.png"><img src="${pageContext.request.contextPath}/resources/imges/${postionList[4].degreeDiff}.png"></div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${postionList[4].growthCycle}</span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${postionList[4].scarcity}</span>家公司需要</div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages">${postionList[4].salary01}/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">2-3年</div>
                            <div class="rightWarp-wages">${postionList[4].salary02}/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">4-5年</div>
                            <div class="rightWarp-wages">${postionList[4].salary03}/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有${postionList[4].stuNumber}人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">${postionList[4].tips}</p>
                </div>

                <div class="flip-container">
                    <p class="flip-title">iOS工程师</p>
                    <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                </div>
            </div>

        </div>


    </div>















</div>
