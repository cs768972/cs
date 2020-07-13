<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>安溪茶叶商城</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/layui.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/style1.css'/>">
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/layui.js" type="text/javascript"></script>
<script type="text/javascript" src="<c:url value='/js/lbt.js'/>"></script>


</head>
<style type="text/css">
h1{

color:#00FF00;
}
a {text-decoration: none;}
 
.a{
margin-left:280px;
background:	#7FFF00;
border:5px solid #556B2F;
}
.b{
margin-left:280px;
background:	#FFD700;
border:5px solid #556B2F;
}
.c{
margin-left:280px;
background:	#FFA500;
border:5px solid #556B2F;
}
.d{
margin-left:280px;
background:	#FFFF00;
border:5px solid #556B2F;
}
.e{
margin-left:280px;
background:	#7FFF00;
border:5px solid #556B2F;
}
.f{
margin-left:280px;
background:	#FFFFE0;
border:5px solid #556B2F;
}
.a img,.b img,.c img,.d img,.e img,.f img{
float:right; 
width:400px;
height:300px;
margin-right:15px;

margin-top:15px;
}

/* 轮播图 */


       body{
        padding: 20px;
       }
       .lbt{
       	width:100%;
       	height:500px;
       	/* 以下四条代码可以使元素居中 */
       	align-items: center;
		justify-content: center;
		display: flex;
		flex-direction: column;
       }
       #container{
       	maigin:0 auto;
        position: relative;
        width: 600px;
        height:400px;
        border: 1px solid #333;
        overflow: hidden;
       }
       #list{
        position: absolute;
        z-index: 1;
        width: 3600px;
        height: 400px;
       }
       #list img{
        float: left;
        width: 600px;
        height: 400px;
       }
       #buttons{
        position: absolute;
        left: 250px;
        bottom: 20px;
        z-index: 2;
        height: 10px;
        width: 140px;
       }
       #buttons span{
        float: left;
        margin-right: 5px;
        width: 10px;
        height: 10px;
        border: 1px solid #fff;
        border-radius: 50%;
        background-color: #333;
        cursor: pointer;
       }
       #buttons .on {
            background:orangered;
        }
      .arrow {
          position: absolute;
          top: 180px;
          z-index: 2;
          display: none;
          width: 40px;
          height: 40px;
          font-size: 24px;
          line-height: 39px;
          text-align: center;
          color: #fff;
          background-color: RGBA(0, 0, 0, .3);
          cursor: pointer;
        }        
        .arrow:hover {
            background-color: RGBA(0, 0, 0, .7);
        }        
        #container:hover .arrow {
            display: block;
        }
        #prev {
            left: 20px;
        }

        #next {
            right: 20px;
        }

</style>
<body style="background-color:	#E1FFFF;">
	<!--导航栏部分-->
	<jsp:include page="userview/include/header.jsp" />
	<!-- 中间内容 -->
	

<!-- 左右两边云 -->
<div class="wel" id="box">
    <div class="box-1 lefp righp"></div>
</div>
<!-- 荧光点点 -->
<div class="wel" id="git"></div> 
  <body style="background-image:url(/upload/wm2.jpg);">
    
    <p style="text-align:center;color:green;font-size:70px;font-family:Georgia;font-weight:bold;">茶文化
    <h3 style="text-align:center;color:lightgreen;font-size:45px;">Tea Culture</h3>
    </p>
      
    <div class="a">
    <h1>铁观音</h1>
    <img src="/tea/upload/tea.gif">
    <h3 style="text-indent:35px;">铁观音（tiě guān yīn） ，中国传统名茶，属于青茶类，是中国十大名茶之一。<br>
    原产于福建泉州市安溪县西坪镇，发现于1723—1735年。“铁观音”既是茶名，也是茶树品种名，铁观音茶介于绿茶和红茶之间，属于半发酵茶类，铁观音独具“观音韵”，清香雅韵，冲泡后有天然的兰花香，滋味纯浓,香气馥郁持久，有“七泡有余香之誉 ”。
   除具有一般茶叶的保健功能外，铁观音含有较高的氨基酸、维生素、矿物质、茶多酚和生物碱，有多种营养和药效成分，具有养生保健的功能
于民国八年自福建安溪引进木栅区试种，分“红心铁观音”及“青心铁观音”两种，主要产区在文山期树属横张型，枝干粗硬，叶较稀松，芽少叶厚，产量不高，但制包种茶品质高，产期较青心乌龙晚。
其树形稍，叶呈椭圆形，叶厚肉多。叶片平坦展开。
 <br>《清上明制茶法》载：“青茶（即乌龙茶）起源：福建安溪劳动人民在清雍正三年至十三年（1725-1735年）创制发明了青茶，首先传入闽北后传入台湾省。”
铁观音因品质优异，香味独特，各地相互仿制，先后传遍闽南、闽北、广东、台湾等乌龙茶区。

<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、具有抗衰老、抗动脉硬化、防治糖尿病、减肥健美、防治龋齿、清热降火，敌烟醒酒等。<br>
2、安溪铁观音的粗儿茶素组合，具较强抗氧化活性，可消除细胞中的活性氧分子，从而使人体免受衰老疾病侵害。
铁观音中的锰、铁、氟以及钾、钠含量比，高于其他茶叶，其中以含氟量高名列各茶类之首，对防治龋齿和老年骨骼疏松症效果显著。
</h3>
    </div>
  <br><br>    
    <div class="b">
    <h1 style="color:#A0522D">普洱茶</h1>  
    <img src="/tea/upload/tea5.gif">
    <h3 style="text-indent:35px;">普洱茶，（学名：Camellia sinensis var. assamica），大乔木，高达16米，嫩枝有微毛，顶芽有白柔毛。叶薄革质，椭圆形，上面干后褐绿色，略有光泽，下面浅绿色，中肋上有柔毛，其余被短柔毛，老叶变秃；侧脉8-9对，在上面明显。
    花腋生，被柔毛。苞片2，早落。萼片5，近圆形，外面无毛。花瓣6-7片，倒卵形，无毛。雄蕊长8-10毫米，离生，无毛。子房3室，被茸毛；花柱长8毫米，先端3裂。蒴果扁三角球形。种子每室1个，近圆形，直径1厘米。
    （标本信息来自中国植物志） [1] 
普洱茶主要产于云南省的西双版纳、临沧、普洱等地区。普洱茶讲究冲泡技巧和品饮艺术，其饮用方法丰富，既可清饮，也可混饮。普洱茶茶汤橙黄浓厚，
香气高锐持久，香型独特，滋味浓醇，经久耐泡。
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、具有降低血脂、减肥、抑菌助消化、暖胃、生津、止渴、醒酒解毒等。
<br>2、可清胃生津、消食化痰、解酒解毒、利尿散寒，止咳化痰、降低血脂胆固醇。
</h3>
    </div> 
  <!--  5毛钱 特效 -->
    <div class="wel" id="box">
    <div class="box-1 lefp"></div>
    <div class="box-1">
        <div class="righp"></div>
    </div>
</div>
<br><br>
    
     <div class="c">
     <h1 style="color:red">红茶</h1>
     <img src="/tea/upload/tea11.gif">
   <h3 style="text-indent:35px;"> 红茶，英文为Black tea。红茶在加工过程中发生了以茶多酚酶促氧化为中心的化学反应，鲜叶中的化学成分变化较大，茶多酚减少90%以上，产生了茶黄素、茶红素等新成分。香气物质比鲜叶明显增加。所以红茶具有红茶、红汤、红叶和香甜味醇的特征。我国红茶品种以祁门红茶最为著名，为我国第二大茶类。
红茶属全发酵茶，是以适宜的茶树新牙叶为原料，经萎凋、揉捻（切）、发酵、干燥等一系列工艺过程精制而成的茶。
萎凋是红茶初制的重要工艺，红茶在初制时称为“乌茶”。红茶因其干茶冲泡后的茶汤和叶底色呈红色而得名。
中国红茶品种主要有：日照红茶、 [1]  祁红、昭平红、霍红、滇红、越红、泉城红、泉城绿、苏红、川红、英红、东江楚云仙红茶等，
2013年湖南东江楚云仙红茶喜获“中茶杯”特等奖。 [2]
中医认为，茶也分寒热，例如绿茶属苦寒，适合夏天喝（要看个人体质），用于消暑；红茶、普洱茶偏温，较适合冬天饮用。至于乌龙茶、铁观音等较为中性。
红茶能辅助血糖调节，但仍无确切的定论。 
在冬天胃容易不舒服，冰瓜果吃太多感到不适的人，可以红茶酌加黑糖、生姜片，趁温热慢慢饮用，有养胃功效，身体会比较舒服，但不建议喝冰红茶。
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、具有帮助胃肠消化、促进食欲，可利尿、消除水肿，并强壮心脏等功能。
<br>2、红茶中富含的黄酮类化合物能消除自由基，具有抗酸化作用，降低心肌梗塞的发病率。
</h3>
  	</div>
  <br><br> 
  <div class="d">
  <h1 style="color:orange">花茶</h1>
  <img src="/tea/upload/tea7.gif">
  <h3 style="text-indent:35px;"> 花茶（Scented tea），又名香片， 即将植物的花或叶或其果实泡制而成的茶，是中国特有的一类再加工茶。其是利用茶善于吸收异味的特点，将有香味的鲜花和新茶一起闷，茶将香味吸收后再把干花筛除，制成的花茶香味浓郁，茶汤色深。
  花茶又可细分为花草茶和花果茶。饮用叶或花的称之为花草茶，如荷叶、甜菊叶。饮用其果实的称之为花果茶，如：无花果、柠檬、山楂、罗汉果、有花果。其气味芬香并具有养生疗效。
  外形条索紧结匀整，色泽黄绿尚润；内质香气鲜灵浓郁，具有明显的鲜花香气，汤色浅黄明亮，叶底细嫩匀亮。
  花茶主要以绿茶、红茶或者乌龙茶作为茶坯、配以能够吐香 的鲜花作为原料，采用窨制工艺制作而成的茶叶。
  根据其所用的香花品种不同，分为茉莉花茶、玉兰花茶、桂花花茶、珠兰花茶等， 其中以茉莉花茶产量最大。 [1]
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、花茶不仅仍有茶的功效，而且花香也具有良好的药理作用，裨益人体健康，具有排出宿便，调节肠胃循环，排毒等。<br>
2、具有美容护肤、美体瘦身、排毒除臭的功用，帮助瘦小腹最佳。
</h3>
   </div>
   <br><br>
   <div class="e">
   <h1 style="color:#2E8B57">绿茶</h1>
   <img src="/tea/upload/tea10.gif">
   <h3 style="text-indent:35px;">绿茶（Green Tea），是中国的主要茶类之一，是指采取茶树的新叶或芽，未经发酵，经杀青、整形、烘干等工艺而制作的饮品。
   其制成品的色泽和冲泡后的茶汤较多的保存了鲜茶叶的绿色格调。常饮绿茶能防癌，降脂和减肥，对吸烟者也可减轻其受到的尼古丁伤害。
绿茶是未经发酵制成的茶，保留了鲜叶的天然物质，含有的茶多酚、儿茶素、叶绿素、咖啡碱、氨基酸、维生素等营养成分也较多。
绿茶中的这些天然营养成份对防衰老、防癌、抗癌、杀菌、消炎等具有特殊效果，是其他茶类所不及的。绿茶是以适宜茶树新梢为原料，经杀青、揉捻、干燥等典型工艺过程制成的茶叶。
其干茶色泽和冲泡后的茶汤、叶底以绿色为主调，故名绿茶。绿茶是将采摘来的鲜叶先经高温杀青，杀灭了各种氧化酶，保持了茶叶绿色，然后经揉捻、干燥而制成，清汤绿叶是绿茶品质的共同特点。
中国生产绿茶的范围极为广泛，河南、贵州、江西、安徽、浙江、江苏、四川、陕西（陕南）、湖南、湖北、广西、福建是我国的绿茶主产省份。
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、绿茶中含强效的抗氧化剂以及维生素C，不但可以清除体内的自由基，<br>
2、还能分泌出对抗紧张压力的荷尔蒙。绿茶中所含的少量的咖啡因可以刺激中枢神经、振奋精神。也正因为如此，我们推荐在上午饮用绿茶，以免影响睡觉。
</h3>
   </div>
   <br><br>
   <div class="f">
   <h1 style="color:lightblue">白茶</h1>
   <img src="/tea/upload/tea12.gif">
   <h3 style="text-indent:35px;">白茶，属微发酵茶，是中国茶农创制的传统名茶。中国六大茶类之一。指一种采摘后，不经杀青或揉捻，只经过晒或文火干燥后加工的茶。具有外形芽毫完整，满身披毫，毫香清鲜，汤色黄绿清澈，滋味清淡回甘的品质特点。
属轻微发酵茶，是中国茶类中的特殊珍品。因其成品茶多为芽头，满披白毫，如银似雪而得名。主要产区在福建福鼎、政和、蕉城天山、松溪、建阳、云南景谷等地。基本工艺包括萎凋、烘焙（或阴干）、拣剔、复火等工序。云南白茶工艺主要晒青，晒青茶的优势在于口感保持茶叶原有的清香味。萎凋是形成白茶品质的关键工序。 [1] 
白茶因茶树品种、原料（鲜叶）采摘的标准不同，主要品种分为：首日芽、天山白、白毫银针、白牡丹、寿眉（贡眉） [2].
	<p style="text-indent:35px;">白茶，素为茶中珍品，历史悠久。史载，东汉时期，一个叫尹珍的青年怀揣家乡生长自制的“荼”， 拜谒著名儒学大师许慎，遭门丁刁难，便在其檐下席地嚼“荼”，
片刻，许慎整个府邸充溢着浓郁的茗香。许慎踱步而出溯源，随即便邀尹珍入书房，将其“荼”冲泡相观，但见其外形优美，白色叶底如银针坠壶，汤色碧绿明亮，	
品之顿觉味鲜而清爽醇厚，偶有淡雅苦味即刻津生口中。更激发其在《说文解字》中对 “荼”的注解，用“槚、茗、蔎” 译注“荼”字的色、香、味。 [3]
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、具有解酒醒酒、清热润肺、平肝益血、消炎解毒、降压减脂、消除疲劳等功效.
<br>2、尤其针对烟酒过度、油腻过多、肝火过旺引起的身体不适、消化功能障碍等症，具有独特、灵妙的保健作用,白茶的药效性能很好。
</h3>
   </div>
<br><br><br>
<h1 color="green">茶叶展示</h1>
<br><h1 style="color:green;text-align:center;">轮播图</h1>
 
	 			<!-- <div name="productArea1" class="row pd-10" id="productArea1">
					<div class="span16">
						<h2 class="title">苹果手机</h2>
						<ul>
										<a href="#">
											<li>
												<img src="upload/红米note4X.jpg" />
												<p class="goods-title">小米6X 4GB+32GB</p>
												<p class="goods-desc">全索尼相机，骁龙660 AIE处理器</p>
												<p><span class="newprice">1499元</span>&nbsp;
												</p>
											</li>
										</a>
					</div>
				</div> -->
				<!-- 商品展示 -->
				<div class="container-fluid" style="background-color:lightgreen;">
		<div class="row">
			<!-- 控制栏 -->
			<div class="col-sm-3 col-md-2 sidebar sidebar-1">
				<ul class="nav nav-sidebar">
					<c:forEach items="${applicationScope.goodsTypeList }" var="t" varStatus="c">
						<c:if test="${fn:length(t.goodsList)!=0 }">
							<c:if test="${c.count==1 }">
								<li class="list-group-item-diy"><a href="#productArea${t.typeId }">${t.typeName }<span
								class="sr-only">(current)</span></a></li>
							</c:if>
							<c:if test="${c.count!=1 }">
								<li class="list-group-item-diy"><a href="#productArea${t.typeId }">${t.typeName }</a></li>
							</c:if>
							</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 控制内容 -->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<!-- 轮播图 -->
				<div id="myCarousel" class="layui-carousel">
					 <div carousel-item>
					 	<c:forEach items="${applicationScope.bannerList }" var="b">
					 		 <div><a href="${b.bannerUrl }"><img style="width:1144px;height:300px;" src="upload/${b.bannerImg }"></a></div>
					 	</c:forEach>
					  </div>
				</div>
				<c:forEach items="${applicationScope.goodsTypeList }" var="t">
					<c:if test="${fn:length(t.goodsList)!=0 }">
						<div name="productArea${t.typeId }" class="row" id="productArea${t.typeId }"></div>
					</c:if>
				</c:forEach>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
				<jsp:include page="userview/include/foot.jsp" />
			</div>
		</div>
	</div>

	<script type="text/javascript">
	var layer;
		layui.use(['carousel','layer'], function(){
			  var carousel = layui.carousel;
			  layer=layui.layer;
			  //建造实例
			  carousel.render({
			    elem: '#myCarousel'
			    ,width: '100%' //设置容器宽度
			    ,arrow: 'hover' //始终显示箭头
			    ,anim: 'fade' //切换动画方式
			  });
		});
		$(function(){
			getAllType();
		});
		function getAllType(){
			$.ajax({
				   type: "POST",
				   url: "goodsType/findAll",
				   success: function(arr){
				     for(var i=0;i<arr.length;i++){
				    	 showGoodsByType(arr[i].typeId);
				     }
				   }
				});
		}
		function showGoodsByType(id){
			$.ajax({
				   type: "POST",
				   url: "goods/findGoodsByType",
				   data: "typeId="+id,
				   success: function(arr){
				     var str="<div class='span16'><ul>";
				     for(var i=0;i<arr.length;i++){
				    	 if(i==0){
				    		 str=str+"<h2 class='title'>"+arr[i].goodsType.typeName+"</h2>";
				    	 }
				    	 if((i+1)%4!=0){
				    		 str=str+"<a href='goods/detail?goodsId="+arr[i].goodsId+"'><li>"+
							    "<img src='upload/"+arr[i].goodsImg+"' /><p class='goods-title'>"+arr[i].goodsName+"</p>"+
							    "<p class='goods-desc'>"+arr[i].goodsDesc+"</p><p><span class='newprice'>"+arr[i].goodsPrice+"元</span>&nbsp;"+
							    "</p></li></a>";
				    	 }else{
				    		 str=str+"<a href='goods/detail?goodsId="+arr[i].goodsId+"'><li class='brick4'>"+
							    "<img src='upload/"+arr[i].goodsImg+"' /><p class='goods-title'>"+arr[i].goodsName+"</p>"+
							    "<p class='goods-desc'>"+arr[i].goodsDesc+"</p><p><span class='newprice'>"+arr[i].goodsPrice+"元</span>&nbsp;"+
							    "</p></li></a>";
				    	 }
				     }
				     var str=str+"</ul></div>";
				     $("#productArea"+id).html(str);
				   }
				});
		}
	</script>


</body>
</html>