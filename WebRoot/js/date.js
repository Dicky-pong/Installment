(function() {

    // var draw = function(data1) {
    //     var dl = data1.result.length;
    //     var nameArry = [];
    //     var numberArry = [];
    //     for (var i = 0; i < dl; i++) {
    //         nameArry[i] = data1.result[i].city;
    //     }
    //     for (var j = 0; j < dl; j++) {
    //         numberArry[j] = data1.result[j].number;
    //     }



    //     // 路径配置
    //     require.config({
    //         paths: {
    //             echarts: 'http://echarts.baidu.com/build/dist'
    //         }
    //     });

    //     // 使用
    //     require(
    //         [
    //             'echarts',
    //             'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
    //         ],
    //         function(ec) {
    //             // 基于准备好的dom，初始化echarts图表
    //             var myChart = ec.init(document.getElementById('canvasDiv'));

    //             var option = {
    //                 title: {
    //                     x: 'center',
    //                     text: '用户地域分布统计',
    //                     subtext: 'Rainbow bar example',
    //                     link: 'http://echarts.baidu.com/doc/example.html'
    //                 },
    //                 //数据触发
    //                 tooltip: {
    //                     trigger: 'item'
    //                 },
    //                 //工具箱
    //                 toolbox: {
    //                     show: true,
    //                     feature: {
    //                         dataView: {
    //                             show: true,
    //                             readOnly: false
    //                         },
    //                         restore: {
    //                             show: true
    //                         },
    //                         saveAsImage: {
    //                             show: true
    //                         }
    //                     }
    //                 },
    //                 //拖放重新计算功能
    //                 calculable: true,
    //                 grid: {
    //                     borderWidth: 0,
    //                     y: 80,
    //                     y2: 60,
    //                     x: 200,
    //                     x2: 200
    //                 },
    //                 xAxis: [{
    //                     type: 'category',
    //                     show: false,
    //                     data: ['Line', 'Bar', 'Scatter', 'K', 'Pie', 'Radar', 'Chord', 'Force', 'Map', 'Gauge', 'Funnel']
    //                 }],
    //                 yAxis: [{
    //                     type: 'value',
    //                     show: false
    //                 }],
    //                 series: [{
    //                     name: 'ECharts例子个数统计',
    //                     type: 'bar',
    //                     itemStyle: {
    //                         normal: {
    //                             color: function(params) {
    //                                 // build a color map as your need.
    //                                 var colorList = [
    //                                     '#C1232B', '#B5C334', '#FCCE10', '#E87C25', '#27727B',
    //                                     '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
    //                                     '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
    //                                 ];
    //                                 return colorList[params.dataIndex]
    //                             },
    //                             label: {
    //                                 show: true,
    //                                 position: 'top',
    //                                 formatter: '{b}\n{c}'
    //                             }
    //                         }
    //                     },


    //                     data: [12, 21, 10, 4, 12],
    //                     markPoint: {
    //                         tooltip: {
    //                             trigger: 'item',
    //                             backgroundColor: 'rgba(0,0,0,0)',
    //                             formatter: function(params) {
    //                                 return '<img src="' + params.data.symbol.replace('image://', '') + '"/>';
    //                             }
    //                         },
    //                         data: [{
    //                             xAxis: 0,
    //                             y: 350,
    //                             name: 'Line',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/折线图.png'
    //                         }, {
    //                             xAxis: 1,
    //                             y: 350,
    //                             name: 'Bar',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/柱状图.png'
    //                         }, {
    //                             xAxis: 2,
    //                             y: 350,
    //                             name: 'Scatter',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/散点图.png'
    //                         }, {
    //                             xAxis: 3,
    //                             y: 350,
    //                             name: 'K',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/K线图.png'
    //                         }, {
    //                             xAxis: 4,
    //                             y: 350,
    //                             name: 'Pie',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/饼状图.png'
    //                         }, {
    //                             xAxis: 5,
    //                             y: 350,
    //                             name: 'Radar',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/雷达图.png'
    //                         }, {
    //                             xAxis: 6,
    //                             y: 350,
    //                             name: 'Chord',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/和弦图.png'
    //                         }, {
    //                             xAxis: 7,
    //                             y: 350,
    //                             name: 'Force',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/力导向图.png'
    //                         }, {
    //                             xAxis: 8,
    //                             y: 350,
    //                             name: 'Map',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/地图.png'
    //                         }, {
    //                             xAxis: 9,
    //                             y: 350,
    //                             name: 'Gauge',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/仪表盘.png'
    //                         }, {
    //                             xAxis: 10,
    //                             y: 350,
    //                             name: 'Funnel',
    //                             symbolSize: 20,
    //                             symbol: 'image://../asset/ico/漏斗图.png'
    //                         }, ]
    //                     }
    //                 }]
    //             };
    //             option.xAxis[0].data = nameArry;
    //             option.series[0].data = numberArry;
    //             console.log(data1);
    //             // 为echarts对象加载数据 
    //             myChart.setOption(option);
    //         }
    //     );

    // }

    var draw1 = function(data1) {
        var dl = data1.result.length;
        var styleArry = [];
        var numberArry = [];
        for (var i = 0; i < dl; i++) {
            styleArry[i] = data1.result[i].style;
        }
        for (var j = 0; j < dl; j++) {
            numberArry[j] = data1.result[j].number;
        }
        console.log(styleArry + numberArry);



        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });

        // 使用
        require(
            [
                'echarts',
                'echarts/chart/line'
            ],
            function(ec) {
                var myChart = ec.init(document.getElementById('canvasDiv'));

                var option = {
                    title: {
                        text: 'iPhone6 与 iPhone6s各月份销售量对比',
                        subtext: '纯属虚构'
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        data: []
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            mark: {
                                show: true
                            },
                            dataView: {
                                show: true,
                                readOnly: false
                            },
                            magicType: {
                                show: true,
                                type: ['line', 'bar']
                            },
                            restore: {
                                show: true
                            },
                            saveAsImage: {
                                show: true
                            }
                        }
                    },
                    calculable: true,
                    xAxis: [{
                        type: 'category',
                        boundaryGap: false,
                        data: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月']
                    }],
                    yAxis: [{
                        type: 'value',
                        axisLabel: {
                            formatter: '{value} 台'
                        }
                    }],
                    series: [{
                        name: '',
                        type: 'line',
                        data: [],
                        markLine: {
                            data: [{
                                type: 'average',
                                name: '平均值'
                            }]
                        }

                    }, {
                        name: '',
                        type: 'line',
                        data: [],
                        markLine: {
                            data: [{
                                type: 'average',
                                name: '平均值'
                            }]
                        }

                    }]
                };

                option.title.text = styleArry[0] + '与' + styleArry[1] + '各月份销售量对比';
                option.series[0].name = styleArry[0];
                option.series[1].name = styleArry[1];
                option.series[0].data = numberArry[0];
                option.series[1].data = numberArry[1];
                option.legend.data = styleArry;

                console.log(data1);
                myChart.setOption(option);
            }
        );

    }

    // document.getElementsByClassName('query-list')[0].
    // document.body.onclick = function(e) {
    //     var e = e || event;
    //         var current = e.target || e.srcElement
    //         if (current.id == 'user') {

    //     var XMLHttpReq;

    //     function getAjaxRequest() {

    //         XMLHttpReq = new XMLHttpRequest();
    //         XMLHttpReq.open('post', 'db.txt', true);
    //         XMLHttpReq.onreadystatechange = processResponse;
    //         XMLHttpReq.send(null);

    //     }

    //     function processResponse() {
    //         if (XMLHttpReq.readyState == 4) {
    //             // if(XMLHttpReq.status == 200)
    //             // {
    //             var txt = XMLHttpReq.responseText;
    //             var data1 = eval("(" + txt + ")");
    //             console.log(data1);
    //             draw(data1);



    //             // }

    //         }
    //     }

    //     function change(){
    //      document.getElementsByClassName('title')[0].innerHTML= '<span class="query-list" id="user">用户地域分布图  </span><span class="query-list">各月份销量对比</span>';
    //     }

    //     getAjaxRequest();
    //     change();
    // }



    // }

    document.body.onclick = function(e) {
        var e = e || event;
        var current = e.target || e.srcElement
        if (current.id == 'query') {

            // var str=document.getElementsByClassName('title')[0].innerHTML;
            // str =str + "<select name='stytle1' ><option >64G</option></select> <select name='stytle2'><option >128G</option></select>";
            // document.getElementsByClassName('title')[0].innerHTML=str;

            var select1 = document.getElementsByTagName('select')[0].value;
            var select2 = document.getElementsByTagName('select')[1].value;

            var XMLHttpReq;

            function getAjaxRequest() {
                try {
                    XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP"); // ie msxml3.0+（IE7.0及以上）  
                } catch (e) {
                    try {
                        XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP"); //ie msxml2.6（IE5/6）  
                    } catch (e2) {
                        XMLHttpReq = false;
                    }
                }
                if (!XMLHttpReq && typeof XMLHttpRequest != 'undefined') { // Firefox, Opera 8.0+, Safari  
                    XMLHttpReq = new XMLHttpRequest();
                }


                XMLHttpReq.open('post', 'getSalesByGoods.do', true);
                XMLHttpReq.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                XMLHttpReq.onreadystatechange = processResponse;
                XMLHttpReq.send(null);

            }

            function processResponse() {
                if (XMLHttpReq.readyState == 4) {
                    // if(XMLHttpReq.status == 200)
                    // {
                    var txt = XMLHttpReq.responseText;
                    console.log(txt);
                    var data1 = eval("(" + txt + ")");
                    console.log(data1);
                    draw1(data1);



                    // }

                }
            }

            getAjaxRequest();
        }


    }

})();