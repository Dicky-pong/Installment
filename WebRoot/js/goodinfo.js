/**
 * Created by Administrator on 2015-11-27.
 */
$(function(){
    var zoomli = $('#zoomSmallImg ul li');
    var leftBtn = $('#zoomSmall span.left');
    var rightBtn = $('#zoomSmall span.right');
    var zoomMillImg = $('#zoomMiddle img');
    var zoomlu = $('#zoomSmallImg ul');
    var zoomliWidth = zoomli.outerWidth();
    var now = 0;
    var zoomMiddle = $('#zoomMiddle');
    var make = $('#make');
    var la = $('#zoomLa');
    var laImg = $('#zoomLa img');

    zoomli.mouseover(function(){
        $(this).addClass('curr').siblings().removeClass('curr');
        var zoomliImgSrc = $(this).children().attr('src');
        zoomMillImg.attr('src',zoomliImgSrc);
        laImg.attr('src',zoomliImgSrc);

    });

    rightBtn.click(function(){
        if(now>=2){
            now = 2;
        }else{
            now++;
            zoomlu.animate({'left':'-'+now*zoomliWidth},500);
        }
    });

    leftBtn.click(function(){
        if(now<=0){
            now = 0;
        }else{
            now--;
            zoomlu.animate({'left':'-'+now*zoomliWidth},500);
        }
    });

    function zoomfn(e){
        zoomMiddleOffset = zoomMiddle.offset();
        x = e.pageX - make.width()/2 - zoomMiddleOffset.left;
        y = e.pageY - make.height()/2 - zoomMiddleOffset.top;


        if(x<=0){
            x = 0;
        }else if(x>zoomMiddle.width()-make.width()){
            x = zoomMiddle.width()-make.width();
        }

        if(y<=0){
            y = 0;
        }else if(y>zoomMiddle.height()-make.height()){
            y = zoomMiddle.height()-make.height();
        }

        make.show();
        make.css({
            'left':x,
            'top':y
        });

        var percentageX = x/(zoomMiddle.width()-make.width());
        var percentageY = y/(zoomMiddle.height()-make.height());
        la.show();
        laImg.css({
            'left':(-600+200)*percentageX,
            'top':(-600+200)*percentageY
        });

    }

    zoomMiddle.mousemove(function(e){zoomfn(e);});



    zoomMiddle.mouseout(function(){
        make.hide();
        la.hide();
    });


    $('.gooddetails li').click(function(){
        $(this).addClass('active').siblings().removeClass('active');
        $('.gooddetails .info').eq($(this).index()).addClass('active').siblings().removeClass('active');
    })
    
    $(".select").bind("click",function(){
    	$this = $(this);
    	$this.addClass("active").siblings().removeClass("active");
    });
    
    $(".type").bind("click",function(){
    	$this = $(this);
    	var price = $this.attr("data-price");
    	var num = $this.attr("data-num")
    	
    	$("#price").html(price);
    	$("#num").html(num);
    });
    
    $("#buy").bind("click",function(){
    	var goodstypeId = $(".active.type").attr("value");
    	var colorId = $(".active.color").attr("value");
    	var monthId = $(".active.monthp").attr("value");
    	var goodsId = $("#goodsId").attr("value");
    	if(goodstypeId == null){
    		alert("必须选择一种类型");
    		return;
    	}
    	if(colorId == null){
    		alert("必须选择一种颜色");
    		return ;
    	}
    	if(monthId == null){
    		alert("必须选择一种分期方式");
    		return;
    	}
    	window.location.href = "jsp/goods/selectSite.jsp?goodstypeId="+goodstypeId+"&colorId="+colorId+"&monthId="+monthId+"&goodsId="+goodsId;//跳转页面
    	
    })
})