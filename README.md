<h2>Manipulación de datos y transaccionalidad en las operaciones</h2>
<h3>Construcción de la tabla</h3>
<img src='https://github.com/PauliPuli/DE-Inscripciones/blob/063966095d025d89feda578e10df47be0e01de37/img/pg-1.png'>
<figcaption>Create table</figcaption>
<img src='https://github.com/PauliPuli/DE-Inscripciones/blob/063966095d025d89feda578e10df47be0e01de37/img/pg-insert.png'>
<figcaption>Ingreso de datos a tabla</figcaption>
<hr>
<h3>Preguntas</h3>
<ol>
<li>¿Cuántos registros hay?</li>
<p> R:Hay 16 registros, los cuales podemos visualizar con el comando COUNT </p>
<img src='https://github.com/PauliPuli/DE-Inscripciones/blob/063966095d025d89feda578e10df47be0e01de37/img/count.png'>
<hr>
<li>¿Cuántos inscritos hay en total?</li>
<p>R: Hay 774inscritos</p>
<img src='https://github.com/PauliPuli/DE-Inscripciones/blob/063966095d025d89feda578e10df47be0e01de37/img/sum.png'>
<hr>
<li>¿Cuál o cuáles son los registros de mayor antigüedad?</li>
<p>R: Los del día 01-01-2021</p>
<img src='https://github.com/PauliPuli/DE-Inscripciones/blob/063966095d025d89feda578e10df47be0e01de37/img/subconsulta-antiguedad.png'>
<hr>
<li>¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)</li>
  <p>R: Hay 100 inscritos el 1° de Enero, 120 el 1° de Febrero, 103 el °1 de Marzo, 93 el 1° de Abril, 88 el 1° de Mayo, 30 el 1° de Junio, 58 el 1° de Julio y 182 el 1° de Marzo.</p>
<img scr='[https://github.com/PauliPuli/DE-Inscripciones/blob/main/img/inscritosxDia.png](https://github.com/PauliPuli/DE-Inscripciones/blob/main/img/inscritosxDia.png)'>
<hr>
<li>¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?</li>
<p>R: El 1° de Agosto del 2021 fue el día en que más se inscribieron personas con un total de 182 personas.</p>
<img src='https://github.com/PauliPuli/DE-Inscripciones/blob/063966095d025d89feda578e10df47be0e01de37/img/mayorinscritosxdia.png'>
<figcaption>**En este ejercicio tuve la dificultad en cómo escribir la instrucción, ya que traté de usar MAX(sum(cantidad)) y where, pero pg no acepta una función de sumatoria dentro de una función anidada</figcaption>
</ol>
