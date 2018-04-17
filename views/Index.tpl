<!DOCTYPE html>
<html>
  <head>
    <title>Agenda 2018</title>
    <style type="text/css">
      body {font-family:sans-serif;color:#4f494f;}
      form input {border-radius: 7.5px;}
      h5 {display: inline;}
      .label {text-align: right}
      .book {float:left; padding-top: 10px;}
      .name {width:100%;float:left; padding:3px;}
      .wrapper { padding-left: 25px; padding-top: 20px}
    </style>
  </head>

  <body>
    <div class="wrapper">
      <h1>Agenda</h1>
      <div class="book_input" >
      <form method="post" class="form" action="/newguest" method='post'>
        Nombre: <input type="text" name="name"/>
        Email:  <input type="text" name="email"/>
        </br></br>

        <input type="submit" value='Agregar'/>
        <input type="reset" value='Reset' />
      </form>
      </div>
      <div class="book">
        <h3>Ultimos agregados:</h3>
        %for name in mynames:
        <div class="name">
        <h5>Nombre:</h5> {{name['name']}},
         <h5>Email:</h5> {{name['email']}}
        </div>
        %end
      </div>
    </div>
  </body>
</html>