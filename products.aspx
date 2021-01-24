<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="WebApplication1.products" %>

<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Home</title>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/style.css">
    <!--подключение bootstrap для разметки страницы-->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script src="js/slider.js"></script>
    <script type="text/javascript">
        $(function () {
            function equalHeight(group) {
                var tallest = 0;
                group.each(function () {
                    var thisHeight = $(this).height();
                    if (thisHeight > tallest) {
                        tallest = thisHeight;
                    }
                });
                group.height(tallest);
            }
            equalHeight($(".box-1 .inner"));
        })
	</script>

</head>
<body id="page1">
<!-- Header -->
<header>
    <div class="inner">
        <h1 class="logo"><a href="home.html"></a></h1>
        <div class="fright">
            <div class="header-meta">
                <form id="search-form" method="post">
                    <input type="text" onblur="if(this.value==''){this.value='search'}" onfocus="if(this.value=='search'){this.value=''}" value="поиск" name="search">
                    <a class="search-form-submit" onclick="document.getElementById('search-form').submit()"></a>
                </form>
                <div class="col-elem">
                    У вас есть вопросы?<br>
                    звоните: 
                    <span class="phone">
                        +7 (343) 234232
                    </span>
                </div>
            </div>
             <nav>
                <ul class="sf-menu">
                    <li><a href="home.html">Главная</a></li>
                    <li ><a href="about.html">О нас</a></li>
                    
                     
                    <li>
                        <a href="services.html">Услуги</a>
                        
                                        
                </li>
                <li><a href="contacts.html">Контакты</a></li>
                    <li ><a href="calculate.aspx">Калькулятор</a></li>
                    <li class="current"><a href="products.aspx">Готовое</a></li>
            </nav>
        </div>
        <div class="clear"></div>
    </div>
</header>
<section id="content">
    <div class="container_24">
        <div class="indent-bot-2 boxes-bg">
            <article class="grid_6">
                <div class="box-1">
                    <div class="inner">
                        <h3>Ворота</h3>
                        <p>
                            У нас вы можете закзать автоматические ворота: промышленные, откатные, распашные и рольворота 
                        </p>
                        <div class="btn-container">
                            <div class="button-box">
                                <a href="#" class="button">подробнее</a>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <article class="grid_6">
                <div class="box-1">
                    <div class="inner">
                        <h3>Рольставни</h3>
                        <p>
                                У нас вы можете закзать рольставни для вашего частного дома или предприятия
                        </p>
                        <div class="btn-container">
                            <div class="button-box">
                                <a href="#" class="button">подробнее</a>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <article class="grid_6">
                <div class="box-1">
                    <div class="inner">
                        <h3>Шлагбаумы</h3>
                        <p>
                            Шлагбаумы - недорогие и эффективные средства для регулирования въезда/выезда транспорта на закрытые территории
                        </p>
                        <div class="btn-container">
                            <div class="button-box">
                                <a href="#" class="button">подробнее</a>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <article class="grid_6">
                <div class="box-1">
                    <div class="inner">
                        <h3>Автоматика</h3>
                        <p>
                            Любая автоматика в компании "Профмонтаж" и так далее и тому подобное
                        </p>
                        <div class="btn-container">
                            <div class="button-box">
                                <a href="#" class="button">подробнее</a>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <div class="clear"></div>
        </div>
    </div>
    <form id="form1" runat="server" class="container_24">
    <div class="container">
        <div class="row bl">
            <h1 class="col-6 offset-3 text-center">Готовые решения</h1>
            <p class="col-6 offset-3 text-center">Мы можем предложеить вам уже готовые решения</p>
        </div>
        <div class="row container bl" style="padding-bottom: 50px;">
            <div class="row" style="width: 100%;">
                <div class="col-6">
                    <div><label for="">Выберите пожалуйста тип профиля:</label></div>
                    <!--select name="" id="" style="max-width: 100px;">
                        <option value="">Профиль с пенным наполнением 40мм - 3000 р.</option>
                        <option value="">Профиль с пенным наполнением 40мм - 3000 р.</option>
                    </!--select-->
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="title" DataValueField="title">
                    </asp:DropDownList>

                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DataClasses1DataContext" EntityTypeName="" TableName="View" Select="new (title)">
                    </asp:LinqDataSource>

                </div>
                <div class="col-2" style="margin-top: 12px;">
                    <asp:Button ID="Button1" runat="server" Text="Выбрать"  CssClass="btn btn-success" />
                </div>
            </div>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="WebApplication1.DataClasses1DataContext" EntityTypeName="" OrderBy="price" TableName="View" >

            </asp:LinqDataSource>
            <%foreach (WebApplication1.View row in GetData())
            {
                Response.Write(String.Format(@"
                    <div class='row col-12 gr'>
                        <div class='col-10 item row'>
                            <img src='{1}' alt='' class='col-4' style='max-height:220px;'>
                            <div class='col-8'>
                                <h5>{0}</h5>
                                <p>Размер: {3}</p>
                                <p>Тип профиля: {4}</p>
                                <p>Цена: {2}р</p>
                            </div>
                        </div>
                    </div>  
                ", row.name,row.image,row.price, row.size, row.title));
              }
          %>
            
        


        

    
    </div>
    </form>
</section>
<footer>
    <div class="copyright">
        &copy; 2020 <strong class="footer-logo"></strong>
        <div></div>
    </div>
   </footer>
</body>
</html>
