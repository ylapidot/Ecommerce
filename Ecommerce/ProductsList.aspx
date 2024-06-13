<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="Ecommerce.ProductsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css" integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous">
  </head>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">ראשי</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
        <div class="container"><!--בעמוד זה נציג את רשימת המוצרים לכל מוצר יהיה כפתור פרטים נוספים שיוביל עמוד המוצר -->
        <div class="row">
            <div class="col">
                <h1>מוצרי האתר</h1>
                <div class="container">
                    <div class="row">  
                        
                        <asp:Repeater ID="RptProducts" runat="server">
                            <ItemTemplate>
                                  <div class="col-3 p-2">
                                    <div class="card" style="width: 18rem;">
                                      <img src="/uploads/pics/<%#Eval("Picname") %>" class="card-img-top" alt="...">
                                      <div class="card-body">
                                        <h5 class="card-title"><%#Eval("Pname") %></h5>
                                        <p class="card-text"><%#Eval("Price") %></p>
                                        <a href="productinfo.aspx?pid=<%#Eval("Pid") %>" class="btn btn-primary">פרטים נוספים</a>
                                      </div>
                                    </div>
                                  </div>
                            </ItemTemplate>
                         <%--  <HeaderTemplate>
                               מבוצע פעם אחת בלבד בהתחלה
                           </HeaderTemplate>
                            <FooterTemplate>
                                מבוצע פעם אחת בלבד בסוף
                            </FooterTemplate>
                            <SeparatorTemplate>
                                מבוצע לאחר כל אייטם טמפלייט
                            </SeparatorTemplate>--%>
                        </asp:Repeater>
                      
                         
                    </div>
                </div>

            </div>
        </div>
        
        
        </div>
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
