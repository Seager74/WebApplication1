<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
                    <li class="current"><a href="calculate.aspx">Калькулятор</a></li>
                    <li ><a href="products.aspx">Готовое</a></li>
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
    <form id="form1" runat="server">
    <div class="container">
        <div class="row bl">
            <h1 class="col-6 offset-3">Калькулятор рольставен</h1>
            <p class="col-6 offset-3">Введите необходимые данный для расчета и мы висчитаем для вас наиболее выгодное предложение</p>
        </div>


        <div class="row bl" style="padding-bottom: 60px;">
            <h4 class="col-12 offset-3">Укажите размеры:</h4>
            <div class="col-2 offset-3">
                <div>
                        <asp:Label Text="Ширина (мм)*" runat="server" />
                </div>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Укажите ширину" CssClass="red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regularexp" runat="server" ControlToValidate="TextBox1" ErrorMessage="Это должно быть целое число" ValidationExpression="^\d+?$" CssClass="red"></asp:RegularExpressionValidator>
            </div>
            <div class="col-2 offset-1">
                <div>
                        <asp:Label Text="Высота (мм)*" runat="server" />
                </div>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Укажите высоту" CssClass="red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Это должно быть целое число" ValidationExpression="^\d+?$" CssClass="red"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row gr">
            <h4 class="col-6 offset-3">Дополнительные данные:</h4>
        </div>
        <div class="row gr">               
            <div class="col-8 offset-3">
                <div>
                    <asp:Label Text="Выберите тип профиля*" runat="server" />
                </div>
                
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="price">

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [name], [price] FROM [Table]"></asp:SqlDataSource>
            </div>

            
        </div>
        <div class="row gr" style="padding-bottom: 60px;">               

            <div class="col-8 offset-3">
                <div>
                    <asp:Label Text="Выбор управления*" runat="server" />
                </div>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="price">

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [name], [price] FROM [pow]"></asp:SqlDataSource>
            </div>
            
        </div>
        <div class="row bl">
            <h4 class="col-3 offset-3">Доставка:</h4>
        </div>
        <div class="row bl">
            <div class="col-6 offset-3">
                <div>
                    <asp:Label Text="Выберите тип доставки*" runat="server" />
                </div>
                
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Выберите доставку" CssClass="red" ></asp:RequiredFieldValidator>
                
                
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="0">Самовывоз: МЕТАЛЛУРГОВ 87</asp:ListItem>
                    <asp:ListItem Value="1000">Доставка до дома</asp:ListItem>
                    
                </asp:RadioButtonList>
                
            </div>
        </div>
        <div class="row bl" style="padding-bottom:60px;">
            
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="col-2  offset-3">_____</asp:Label>
            
            <asp:Button Text="Расчитать стоимость" runat="server" CssClass="col-2 btn-success btn" OnClick="Unnamed6_Click"/>
        </div>


    
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
