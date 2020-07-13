<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<script type="text/javascript" src="<c:url value='/js/lbt.js'/>"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/style1.css'/>">
	
<style type="text/css">
h1{

color:#00FF00;
}
a {text-decoration: none;}
.a{
background:	#7FFF00;
border:5px solid #556B2F;
}
.b{
background:	#FFD700;
border:5px solid #556B2F;
}
.c{
background:	#FFA500;
border:5px solid #556B2F;
}
.d{
background:	#FFFF00;
border:5px solid #556B2F;
}
.e{
background:	#7FFF00;
border:5px solid #556B2F;
}
.f{
background:	#FFFFE0;
border:5px solid #556B2F;
}
.a img,.b img,.c img,.d img,.e img,.f img{
float:right; 
width:450px;
height:350px;
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
  </head>
<!-- 左右两边云 -->
<div class="wel" id="box">
    <div class="box-1 lefp righp"></div>
</div>
<!-- 荧光点点 -->
<div class="wel" id="git"></div> 
  <body style="background-image:url(/goods/book_img/wm2.jpg);">
    
    <p style="text-align:center;color:lightgreen;font-size:50px;font-family:Georgia;font-weight:bold;">茶文化
    <h3 style="text-align:center;color:lightblue;font-size:50px;">Tea Culture</h3></p>
    <h1>铁观音</h1>  
    <div class="a">
    <img src="/goods/images/tea.gif">
    <h2 style="text-indent:35px;">铁观音（tiě guān yīn）茶，中国传统名茶，属于青茶类，是中国十大名茶之一。<br>
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
</h2>
    </div>
    <h1 style="color:#A0522D">普洱茶</h1>    
    <div class="b">
    <img src="/goods/images/tea5.gif">
    <h2 style="text-indent:35px;">普洱茶，（学名：Camellia sinensis var. assamica），大乔木，高达16米，嫩枝有微毛，顶芽有白柔毛。叶薄革质，椭圆形，上面干后褐绿色，略有光泽，下面浅绿色，中肋上有柔毛，其余被短柔毛，老叶变秃；侧脉8-9对，在上面明显。
    花腋生，被柔毛。苞片2，早落。萼片5，近圆形，外面无毛。花瓣6-7片，倒卵形，无毛。雄蕊长8-10毫米，离生，无毛。子房3室，被茸毛；花柱长8毫米，先端3裂。蒴果扁三角球形。种子每室1个，近圆形，直径1厘米。
    （标本信息来自中国植物志） [1] 
普洱茶主要产于云南省的西双版纳、临沧、普洱等地区。普洱茶讲究冲泡技巧和品饮艺术，其饮用方法丰富，既可清饮，也可混饮。普洱茶茶汤橙黄浓厚，
香气高锐持久，香型独特，滋味浓醇，经久耐泡。
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、具有降低血脂、减肥、抑菌助消化、暖胃、生津、止渴、醒酒解毒等。
<br>2、可清胃生津、消食化痰、解酒解毒、利尿散寒，止咳化痰、降低血脂胆固醇。
</h2>
    </div> 
  <!--  5毛钱 特效 -->
    <div class="wel" id="box">
    <div class="box-1 lefp"></div>
    <div class="box-1">
        <div class="righp"></div>
    </div>
</div>
    <h1 style="color:red">红茶</h1>
     <div class="c">
     <img src="/goods/images/tea6.gif">
   <h2 style="text-indent:35px;"> 红茶，英文为Black tea。红茶在加工过程中发生了以茶多酚酶促氧化为中心的化学反应，鲜叶中的化学成分变化较大，茶多酚减少90%以上，产生了茶黄素、茶红素等新成分。香气物质比鲜叶明显增加。所以红茶具有红茶、红汤、红叶和香甜味醇的特征。我国红茶品种以祁门红茶最为著名，为我国第二大茶类。
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
</h2>
  	</div>
  <h1 style="color:yellow">花茶</h1>
  <div class="d">
  <img src="/goods/images/tea7.gif">
  <h2 style="text-indent:35px;"> 花茶（Scented tea），又名香片， 即将植物的花或叶或其果实泡制而成的茶，是中国特有的一类再加工茶。其是利用茶善于吸收异味的特点，将有香味的鲜花和新茶一起闷，茶将香味吸收后再把干花筛除，制成的花茶香味浓郁，茶汤色深。
  花茶又可细分为花草茶和花果茶。饮用叶或花的称之为花草茶，如荷叶、甜菊叶。饮用其果实的称之为花果茶，如：无花果、柠檬、山楂、罗汉果、有花果。其气味芬香并具有养生疗效。
  外形条索紧结匀整，色泽黄绿尚润；内质香气鲜灵浓郁，具有明显的鲜花香气，汤色浅黄明亮，叶底细嫩匀亮。
  花茶主要以绿茶、红茶或者乌龙茶作为茶坯、配以能够吐香 的鲜花作为原料，采用窨制工艺制作而成的茶叶。
  根据其所用的香花品种不同，分为茉莉花茶、玉兰花茶、桂花花茶、珠兰花茶等， 其中以茉莉花茶产量最大。 [1]
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、花茶不仅仍有茶的功效，而且花香也具有良好的药理作用，裨益人体健康，具有排出宿便，调节肠胃循环，排毒等。<br>
2、具有美容护肤、美体瘦身、排毒除臭的功用，帮助瘦小腹最佳。
</h2>
   </div>
   <h1 style="color:#2E8B57">绿茶</h1>
   <div class="e">
   <img src="/goods/images/tea10.gif">
   <h2 style="text-indent:35px;">绿茶（Green Tea），是中国的主要茶类之一，是指采取茶树的新叶或芽，未经发酵，经杀青、整形、烘干等工艺而制作的饮品。
   其制成品的色泽和冲泡后的茶汤较多的保存了鲜茶叶的绿色格调。常饮绿茶能防癌，降脂和减肥，对吸烟者也可减轻其受到的尼古丁伤害。
绿茶是未经发酵制成的茶，保留了鲜叶的天然物质，含有的茶多酚、儿茶素、叶绿素、咖啡碱、氨基酸、维生素等营养成分也较多。
绿茶中的这些天然营养成份对防衰老、防癌、抗癌、杀菌、消炎等具有特殊效果，是其他茶类所不及的。绿茶是以适宜茶树新梢为原料，经杀青、揉捻、干燥等典型工艺过程制成的茶叶。
其干茶色泽和冲泡后的茶汤、叶底以绿色为主调，故名绿茶。绿茶是将采摘来的鲜叶先经高温杀青，杀灭了各种氧化酶，保持了茶叶绿色，然后经揉捻、干燥而制成，清汤绿叶是绿茶品质的共同特点。
中国生产绿茶的范围极为广泛，河南、贵州、江西、安徽、浙江、江苏、四川、陕西（陕南）、湖南、湖北、广西、福建是我国的绿茶主产省份。
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、绿茶中含强效的抗氧化剂以及维生素C，不但可以清除体内的自由基，<br>
2、还能分泌出对抗紧张压力的荷尔蒙。绿茶中所含的少量的咖啡因可以刺激中枢神经、振奋精神。也正因为如此，我们推荐在上午饮用绿茶，以免影响睡觉。
</h2>
   </div>
   <h1 style="color:#FFFFE0">白茶</h1>
   <div class="f">
   <img src="/goods/images/tea12.gif">
   <h2 style="text-indent:35px;">白茶，属微发酵茶，是中国茶农创制的传统名茶。中国六大茶类之一。指一种采摘后，不经杀青或揉捻，只经过晒或文火干燥后加工的茶。具有外形芽毫完整，满身披毫，毫香清鲜，汤色黄绿清澈，滋味清淡回甘的品质特点。
属轻微发酵茶，是中国茶类中的特殊珍品。因其成品茶多为芽头，满披白毫，如银似雪而得名。主要产区在福建福鼎、政和、蕉城天山、松溪、建阳、云南景谷等地。基本工艺包括萎凋、烘焙（或阴干）、拣剔、复火等工序。云南白茶工艺主要晒青，晒青茶的优势在于口感保持茶叶原有的清香味。萎凋是形成白茶品质的关键工序。 [1] 
白茶因茶树品种、原料（鲜叶）采摘的标准不同，主要品种分为：首日芽、天山白、白毫银针、白牡丹、寿眉（贡眉） [2].
	<p style="text-indent:35px;">白茶，素为茶中珍品，历史悠久。史载，东汉时期，一个叫尹珍的青年怀揣家乡生长自制的“荼”， 拜谒著名儒学大师许慎，遭门丁刁难，便在其檐下席地嚼“荼”，
片刻，许慎整个府邸充溢着浓郁的茗香。许慎踱步而出溯源，随即便邀尹珍入书房，将其“荼”冲泡相观，但见其外形优美，白色叶底如银针坠壶，汤色碧绿明亮，	
品之顿觉味鲜而清爽醇厚，偶有淡雅苦味即刻津生口中。更激发其在《说文解字》中对 “荼”的注解，用“槚、茗、蔎” 译注“荼”字的色、香、味。 [3]
<br>
<p style="color:#A9A9A9;font-size:30px;">功效：</p>
1、具有解酒醒酒、清热润肺、平肝益血、消炎解毒、降压减脂、消除疲劳等功效.
<br>2、尤其针对烟酒过度、油腻过多、肝火过旺引起的身体不适、消化功能障碍等症，具有独特、灵妙的保健作用,白茶的药效性能很好。
</h2>
   </div>
<br><br><br>
<h1 color="green">茶叶展示</h1>
<br><h1 style="color:green;text-align:center;">轮播图</h1>
<div class="lbt">
<div id="container">
        <div id="list" style="left:-600px">
            <img src="/goods/images/1.jpg"/>
            <img src="/goods/images/2.jpg"/>
            <img src="/goods/images/3.jpg"/>
            <img src="/goods/images/4.jpg"/>
            <img src="/goods/images/5.jpg"/>
            <!-- <img src="/goods/images/6.jpg"/>
            <img src="/goods/images/7.jpg"/>
            <img src="/goods/images/8.jpg"/>
            <img src="/goods/images/9.jpg"/>
            <img src="/goods/images/10.jpg"/>
            <img src="/goods/images/11.jpg"/>
            <img src="/goods/images/12.jpg"/>
            <img src="/goods/images/13.jpg"/>
            <img src="/goods/images/14.jpg"/>
            <img src="/goods/images/15.jpg"/>
            <img src="/goods/images/16.jpg"/>
            <img src="/goods/images/17.jpg"/>
            <img src="/goods/images/18.jpg"/>
            <img src="/goods/images/19.jpg"/>
            <img src="/goods/images/20.jpg"/> -->
        </div>
        <div id="buttons"> <!-- 圆点按钮 -->
            <span index="1" class="on"></span>
            <span index="2"></span>
            <span index="3"></span>
            <span index="4"></span>
            <span index="5"></span>
            <!-- <span index="6"></span>
            <span index="7"></span>
            <span index="8"></span>
            <span index="9"></span>
            <span index="10"></span>
            <span index="11"></span>
            <span index="12"></span>
            <span index="13"></span>
            <span index="14"></span>
            <span index="15"></span>
            <span index="16"></span>
            <span index="17"></span>
            <span index="18"></span>
            <span index="19"></span>
            <span index="20"></span> -->
        </div>
        <a href="javascript:;" id="prev" class="arrow">&lt;</a><!-- 左转 -->
        <a href="javascript:;" id="next" class="arrow">&gt;</a><!-- //右转 -->
</div>
</div>
  </body>
</html>
