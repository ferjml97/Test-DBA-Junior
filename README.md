<p align ="right"> <b>10/01/2022</b></p>

![](https://img.shields.io/github/watchers/ferjml97/Test-DBA-Junior?style=social)  
![MySQL](https://img.shields.io/badge/SQL-yellow?style=flat)
![MySQL](https://img.shields.io/badge/MySQL-2B579A?style=flat&logo=mysql&logoColor=white)

# Test-DBA-Junior 👨‍💻

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
<summary> Evidencia 📑 </summary>
🟢 Descargué <a href="https://github.com/ferjml97/Test-DBA-Junior#herramientas" target="_black"> <b> MySQL Workbench 8.0.27 </b> </a> </br>  
🟢 Creé el diagrama EER del modelo de la base de datos en el apartado de modelado de la herramienta. </br> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (con ello, la creación de las tablas mencionadas anteriormente en este apartado ).  </br> </br>

<div align = "center">
 <b> Imagen Base de Datos </b> </br> </br>
 <img src="https://github.com/ferjml97/Test-DBA-Junior/blob/main/img_modelo_DB.png" target="_black">
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
</div>
</br> </br>

...🐱‍👤  </br>



</details>


#### ✅ 2° Entregable

Un archivo sql con los insert necesarios para poblar con información random.  
Por favor inserta mucha información para poder generar varios informes.

LLenar las tablas con información random. clientes, productos y facturación.

#### ✅ 3° Entregable

Un archivo sql con las consultas de cada uno de los puntos solicitados 

<div align = "center">
<table>
  <tr><th>Table 1 Heading 1 </th></tr>
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
</div>

---
✏❤ **@ferjml97** 

