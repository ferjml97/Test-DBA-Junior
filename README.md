<p align ="right"> <b>10/01/2022</b></p>

![](https://img.shields.io/github/watchers/ferjml97/Test-DBA-Junior?style=social)  
![MySQL](https://img.shields.io/badge/SQL-yellow?style=flat)
![MySQL](https://img.shields.io/badge/MySQL-2B579A?style=flat&logo=mysql&logoColor=white)

# Test-DBA-Junior 👨‍💻

### Indice  
- [Descripción](https://github.com/ferjml97/Test-DBA-Junior#descripci%C3%B3n)  
- [Propósito](https://github.com/ferjml97/Test-DBA-Junior#prop%C3%B3sito)  
- [Herramientas](https://github.com/ferjml97/Test-DBA-Junior#herramientas)  
- [Entregables](https://github.com/ferjml97/Test-DBA-Junior#entregables)  
	- [1° Entregable](https://github.com/ferjml97/Test-DBA-Junior#-1-entregable)  
	- [2° Entregable](https://github.com/ferjml97/Test-DBA-Junior#-2-entregable)  
	- [3° Entregable](https://github.com/ferjml97/Test-DBA-Junior#-3-entregable) 
- [Links](https://github.com/ferjml97/Test-DBA-Junior#links)

### Descripción

Test de vacante para DBA Junior.

### Propósito

<div align = "center">
  
#### **`Diseñar, poblar y consultar información de una base de datos de una tienda en línea.`**

</div>

### Herramientas

<div align = "center">
  
**Lenguaje:** _SQL_  
**Gestor:** _MySQL_  
**Otras herramientas:**  
MySQL Workbench 8.0.27 MSI Installer
|:---:|
| [Descargar](https://dev.mysql.com/downloads/windows/installer/8.0.html) |
  
</div>

### Entregables

#### ✅ 1° Entregable

Un archivo sql que tenga la creación de las tablas, de acuerdo a criterio (con el diseño que tú creas que es el mejor para este proceso).  
Debe contener los constraints necesarios para restricciones y referencias entre tablas.

Diseñar una base de datos que permita almacenar la información de:
- **Clientes** (_identificación, nombre, correo, dirección_).
- **Productos** (_código, nombre, presentación, precio, impuesto_).
- **Facturación** (_Debe contener la información del cliente, la fecha de venta y los productos vendidos_).

<details open>
<summary> Evidencia #1 📑 </summary>
</br>
<pre>
🟢 Descargué e instalé <a href="https://github.com/ferjml97/Test-DBA-Junior#herramientas" target="_black"> <b> MySQL Workbench 8.0.27 </b> </a> </br>  
🟢 Creé el diagrama EER del modelo de la base de datos en el apartado de modelado de la herramienta. </br> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i> ( con ello, la creación de las tablas mencionadas anteriormente en este apartado ). </i> </br>
</pre>

<div align = "center">
 <b> Imagen Base de Datos </b> </br> </br>
 <img src="https://github.com/ferjml97/Test-DBA-Junior/blob/main/img/img_modelo_DB.png" target="_black">
</div> </br></br>

<div align = "center">
<table>
  <tr align="center" > <td><b> Información de las Tablas: </b></td> </tr>
  <tr><td>
	  <table>
		  <tr align="center" > <td> Clientes </td> <td> Productos </td> <td> Facturas </td> </tr>
      <tr> <td>
  
  | Columna | Tipo dato |
  |:--:|:--:|
  | idCliente | int |
  | nomCliente | varchar(45) |
  | emailCliente | varchar(45) |
  | direccionCliente | varchar(45) |
 
  </td><td>

  | Columna | Tipo dato |
  |:--:|:--:|
  | idProducto | int |
  | codigoProducto | int |
  | nombreProducto | varchar(45) |
  | descripcionProducto | varchar(45) |
  | precioProducto | float |
  | impuestoProducto | float |

  </td><td>

  | Columna | Tipo dato |
  |:--:|:--:|
  | idFactura | int |
  | codigoProductoFK | int |
  | idClienteFK | int |
  | fechaFactura | varchar(45) |
  </td>
      </tr>
	  </table>   
  </tr>
</table>
Tabla 1. Información de las tablas </br> </br>
</div>
</br> 

<pre>
🟢 Realice un Forward Engineer del modelo hecho para obtener el <a href="https://github.com/ferjml97/Test-DBA-Junior/blob/main/scripts/script_DB.sql" target="_black"> <b> Script Model-DB </b> </a> para la creación de la base de datos. 
	<i> ( me parece convencional hacer el uso de este plus de la herramienta Workbench para facilitar el proceso ). </i> </br>
</pre>
...🐱‍👤  </br>

</details>


#### ✅ 2° Entregable

Un archivo sql con los insert necesarios para poblar con información random.  
Por favor inserta mucha información para poder generar varios informes.

LLenar las tablas con información random. clientes, productos y facturación.


<details open>
<summary> Evidencia #2 📑 </summary>
</br>
<pre>
🟢 Elaboré los scripts correspondientes de llenado <code>INSERT INTO</code> de cada tabla. </br>
	<a href="https://github.com/ferjml97/Test-DBA-Junior/blob/main/scripts/script_insert_clientesDB.sql" target="_black"> <b> Script INSERT Tabla Clientes </b> </a> </br> 
	<a href="https://github.com/ferjml97/Test-DBA-Junior/blob/main/scripts/script_insert_productosDB.sql" target="_black"> <b> Script INSERT Tabla Productos </b> </a> </br> 
	<a href="https://github.com/ferjml97/Test-DBA-Junior/blob/main/scripts/script_insert_facturasDB.sql" target="_black"> <b> Script INSERT Tabla Facturas </b> </a> </br>  </br> 
	<a href="https://github.com/ferjml97/Test-DBA-Junior/blob/main/scripts/script_all_insertsDB.sql" target="_black" alt="Contiene todos los scripts"> <b> Script ALL INSERT </b> </a> </br> 
</pre>
	
...🐱‍👤  </br>

</details>

#### ✅ 3° Entregable

Un archivo sql con las consultas de cada uno de los puntos solicitados 

<div align = "center">
<table>
  <tr><th> <b> Consultas </b> </th></tr>
  <tr><td>
    
  | N° | Reporte | Check|
  |:---:|:---:|:---:| 
  | 1 | Clientes que han comprado más en valor.  | ✔️ |
  | 2 | Clientes que han comprado más en cantidad.  | ✔️ |
  | 3 | Productos más vendidos en valor.  | ✔️ |
  | 4 | Productos más vendidos en cantidad.  | ✔️ |
  | 5 | Productos menos vendidos en valor.  | ✔️ |
  | 6 | Productos menos vendidos en cantidad.  | ✔️ |
  | 7 | Valor de las ventas agrupadas por mes.  | ✔️ |
  | 8 | Valor de las ventas agrupadas por producto y mes.  | ✔️ |

</table>
Tabla 2. Consultas </br> </br>
</div>

<details open>
<summary> Evidencia #3 📑 </summary>
</br>
<pre>
🟢 Elaboré los scripts correspondientes a las consultas de la tabla anterior de esta sección <a href="https://github.com/ferjml97/Test-DBA-Junior/blob/main/scripts/script_consultasDB.sql" target="_black"> <b> Script de CONSULTAS </b> </a>   
&nbsp;&nbsp; de la Tabla 2. Consultas </br> 
</pre>
	
...🐱‍👤  </br>

</details>

### Links
[Generate Data](https://generatedata.com/generator, "Generador Datos")

---
✏❤ **@ferjml97** 

