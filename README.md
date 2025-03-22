



<h1 align="center">
  Scriptorium
  <img src="https://github.com/user-attachments/assets/757db61e-2042-473a-95a8-c6c2fc870a2f" width="30px"/>
</h1>
<p align="center">
Scriptorium is a Database Systems project dedicated to managing a library. <br> <br> Just as ancient scriptoria preserved and organized knowledge, this information system archives, manages, and optimizes access to books and bibliographic data in a modern and efficient way. 
</p>
<blockquote>
  Scriptorium is inspired by the ancient scriptoria where knowledge was meticulously preserved, catalogued, and made accessible.
</blockquote>

<p align="center"> </p>


<p align="center"><img src= "https://github.com/user-attachments/assets/a24ca27b-605b-4f06-ba54-b67d7e695d9f" width="300" /></p>
<h3 align="center">Simone Remoli</h3>
<p align="center">
  <a href="https://www.gnu.org/licenses/gpl-3.0.html#license-text"><img src="https://img.shields.io/github/license/1Panel-dev/maxkb?color=%231890FF" alt="License: GPL v3"></a> 
</p>
<hr/>




<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<p align="center">
  <em>
    📚 <strong>Scriptorium</strong> was developed as an academic project for the <strong>Database Systems</strong> course at the 
    <strong>Faculty of Engineering</strong>, University of Rome <strong>Tor Vergata</strong>.
  </em>
</p>


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://ing.uniroma2.it">
    <img src="https://github.com/user-attachments/assets/85461217-bc57-4664-b7b7-08affee891c9" alt="Logo" width="250" height="80">
  </a>

  <h3 align="center">Organize Your Library</h3>

  <p align="center">
    Bridging medieval wisdom and digital knowledge.
    <br />
    <a href="https://github.com/SimoneRemoli/Scriptorium"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>
</div>

<br>
<!-- ABOUT THE PROJECT -->

<img src="https://github.com/user-attachments/assets/782918b1-8fec-46cc-a392-d0c4f37fdbac" align="right"
     alt="Size Limit logo by Anton Lovchikov" width="163" height="179">

 📘 Project Overview

A library provides a book reservation service for its registered users.  
This project aims to develop an **Information Management System** for such a library, which is characterized by:

- its **address**  
- a **telephone number**  
- the **name of the manager**  
- and its **weekly opening hours**

---

## 📚 Book Management

The system manages a collection of **books**, each of which may have **multiple available copies**.  
Every copy is associated with a **status** that can either be:

- `Available`
- `On loan`

Books are physically organized by **shelf and position**, which the system provides to staff when a copy is available.

---

## 👥 User Registration

Users can **register** by providing their **personal details** along with **any number of contact methods**  
(e.g., phone, mobile, email). Each user must specify their **preferred communication method**  
for being contacted by the library staff.

---

## 📖 Book Loans

When issuing a loan, librarians can check the **availability** of book copies:

- If a copy is available, the system shows the **shelf and position** for retrieval.
- If no copies are available in the local library, the system allows librarians to **search the availability**
  in other libraries within the **partnered network** and **request an interlibrary transfer**.

Likewise, the library can **receive transfer requests** from other institutions in the network.  
In such cases, the copy is marked as:

> `Loaned to another library`

The system also stores information about the **destination library**.

📞 **Interlibrary transfers** are handled by direct phone communication between librarians.

---

## ⏳ Loan Duration

Upon receiving a copy, users may choose to **retain it for consultation** for a period of:

- 1 month  
- 2 months  
- or 3 months

---

## 📄 Reporting Tools

Librarians can generate **reports** to track:

- All books currently **on loan**
- The **users** who currently have those books
- The **contact details** for each user, which can be used to send **return reminders**

---

## ❌ Book Deactivation

If a book has **not been borrowed for the last 10 years**, it is **deactivated** by the **circuit administrators**.  
This means:

- The book **can no longer be borrowed**
- Its **record remains in the system** for historical purposes
- Any **ongoing loans** remain valid until the copy is returned

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

The technologies listed below constitute the foundational stack employed in the design and implementation of this system:
<p align="center"> <a href="https://www.oracle.com/java/" target="_blank"> <img src="https://img.icons8.com/color/96/000000/java-coffee-cup-logo.png" alt="Java" title="Java" width="60" style="border-radius: 50%;"/> </a> &nbsp;&nbsp; <a href="https://docs.oracle.com/javase/8/docs/technotes/guides/jdbc/" target="_blank"> <img src="https://static.thenounproject.com/png/1883802-200.png" alt="JDBC" title="JDBC" width="60" style="border-radius: 50%;"/> </a> &nbsp;&nbsp; <a href="https://dbeaver.io/" target="_blank"> <img src="https://dbeaver.com/img/dbeaver-head.png" alt="DBeaver" title="DBeaver" width="60" style="border-radius: 50%;"/> </a> &nbsp;&nbsp; <a href="https://www.jetbrains.com/idea/" target="_blank"> <img src="https://resources.jetbrains.com/storage/products/company/brand/logos/IntelliJ_IDEA_icon.svg" alt="IntelliJ IDEA" title="IntelliJ IDEA" width="60" style="border-radius: 50%; background: #000; padding: 5px;"/> </a> </p>


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Logical Schema

This section illustrates the logical schema of the system by presenting representative subsets of the database tables used in its implementation.

<div style="display: flex; justify-content: flex-start; gap: 40px; align-items: flex-start;">

<table align="center" border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: left;">Title</th>
      <th style="text-align: center;">ISBN</th>
      <th style="text-align: center;">Category Code</th>
      <th style="text-align: center;">Available</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9;">
      <td>Enciclopedia Universale</td>
      <td>978-0000000001</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Dizionario della Lingua Italiana</td>
      <td>978-0000000002</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Atlante del Mondo</td>
      <td>978-0000000003</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Manuale di Biblioteconomia</td>
      <td>978-0000000004</td>
      <td>010</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Guida ai Libri Rari</td>
      <td>978-0000000005</td>
      <td>020</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Storia della Scrittura</td>
      <td>978-0000000006</td>
      <td>030</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Grandi Enciclopedie</td>
      <td>978-0000000007</td>
      <td>030</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Introduzione alla Bibliografia</td>
      <td>978-0000000008</td>
      <td>010</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Catalogazione e Archiviazione</td>
      <td>978-0000000009</td>
      <td>020</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Giornalismo e Media</td>
      <td>978-0000000010</td>
      <td>050</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Enciclopedia della Conoscenza</td>
      <td>978-0000000011</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Dizionario Enciclopedico</td>
      <td>978-0000000012</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Guida ai Testi Antichi</td>
      <td>978-0000000013</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Manuale di Ricerca Bibliografica</td>
      <td>978-0000000014</td>
      <td>010</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Enciclopedia Storica</td>
      <td>978-0000000015</td>
      <td>030</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Enciclopedia del Sapere</td>
      <td>978-0000000101</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Manuale di Archivistica</td>
      <td>978-0000000102</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>La Biblioteca del Mondo</td>
      <td>978-0000000103</td>
      <td>000</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td>Bibliografia Universale</td>
      <td>978-0000000104</td>
      <td>010</td>
      <td>Yes</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td>Dizionario Filosofico</td>
      <td>978-0000000105</td>
      <td>030</td>
      <td>Yes</td>
    </tr>
  </tbody>
</table>
    
    
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">Copy Number</th>
      <th style="text-align: center;">Status</th>
      <th style="text-align: center;">ISBN</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000001</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000002</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>In prestito altra biblioteca</td><td>978-0000000003</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000004</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000005</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000006</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000007</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>In prestito altra biblioteca</td><td>978-0000000008</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000009</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000010</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000011</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000012</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000013</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>In prestito altra biblioteca</td><td>978-0000000014</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000015</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000101</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>In prestito altra biblioteca</td><td>978-0000000102</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000103</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000104</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000105</td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">Category Code</th>
      <th style="text-align: center;">Name</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>000</td><td>Opere generali</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>010</td><td>Bibliografia</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>020</td><td>Scienze dell’informazione e biblioteconomia</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>030</td><td>Enciclopedie e libri di riferimento</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>050</td><td>Periodici e giornalismo</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>060</td><td>Organizzazioni e museologia</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>070</td><td>Giornalismo, editoria e media</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>080</td><td>Citazioni e antologie</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>090</td><td>Manoscritti e libri rari</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>100</td><td>Filosofia</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>110</td><td>Metafisica</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>120</td><td>Epistemologia, causalità e cambiamento</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>130</td><td>Parapsicologia e occultismo</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>140</td><td>Scuole filosofiche specifiche</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>150</td><td>Psicologia</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>160</td><td>Logica</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>170</td><td>Etica</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>180</td><td>Filosofia antica, medievale e orientale</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>190</td><td>Filosofia moderna e occidentale</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>200</td><td>Religione</td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">Shelf Code</th>
      <th style="text-align: center;">Shelf Name</th>
      <th style="text-align: center;">Category Code</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>Scaffale Generale 1</td><td>000</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>2</td><td>Scaffale Bibliografie</td><td>010</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>3</td><td>Scaffale Biblioteconomia</td><td>020</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>4</td><td>Scaffale Enciclopedie</td><td>030</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>5</td><td>Scaffale Giornalismo</td><td>050</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>6</td><td>Scaffale Organizzazioni</td><td>060</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>7</td><td>Scaffale Media e Editoria</td><td>070</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>8</td><td>Scaffale Citazioni</td><td>080</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>9</td><td>Scaffale Manoscritti</td><td>090</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>10</td><td>Scaffale Filosofia 1</td><td>100</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>11</td><td>Scaffale Metafisica</td><td>110</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>12</td><td>Scaffale Epistemologia</td><td>120</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>13</td><td>Scaffale Parapsicologia</td><td>130</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>14</td><td>Scaffale Filosofie Specifiche</td><td>140</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>15</td><td>Scaffale Psicologia</td><td>150</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>16</td><td>Scaffale Logica</td><td>160</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>17</td><td>Scaffale Etica</td><td>170</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>18</td><td>Scaffale Filosofia Antica</td><td>180</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>19</td><td>Scaffale Filosofia Moderna</td><td>190</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>20</td><td>Scaffale Religione</td><td>200</td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">Shelf Number</th>
      <th style="text-align: center;">Shelf Code</th>
      <th style="text-align: center;">ISBN</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td><td>1</td><td>978-0000000001</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>2</td><td>1</td><td>978-0000000002</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>3</td><td>1</td><td>978-0000000003</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>4</td><td>1</td><td>978-0000000011</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>5</td><td>1</td><td>978-0000000012</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>6</td><td>1</td><td>978-0000000013</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>7</td><td>1</td><td>978-0000000101</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>8</td><td>1</td><td>978-0000000102</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>9</td><td>1</td><td>978-0000000103</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>10</td><td>1</td><td>978-0000000107</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>11</td><td>1</td><td>978-0000000108</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>12</td><td>1</td><td>978-0000000201</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>13</td><td>1</td><td>978-0000000202</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>14</td><td>1</td><td>978-0000000203</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>15</td><td>1</td><td>978-0000000205</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>2</td><td>978-0000000004</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>2</td><td>2</td><td>978-0000000008</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>3</td><td>2</td><td>978-0000000014</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>4</td><td>2</td><td>978-0000000104</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>5</td><td>2</td><td>978-0000000110</td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">ISBN</th>
      <th style="text-align: center;">Library</th>
      <th style="text-align: center;">City</th>
      <th style="text-align: center;">Copies</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-0000000002</td><td>Biblioteca Storica</td><td>Venezia</td><td>5</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-0000000008</td><td>Biblioteca Storica</td><td>Venezia</td><td>3</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-0000000011</td><td>Biblioteca Accademica</td><td>Pisa</td><td>9</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-0000000012</td><td>Biblioteca Popolare</td><td>Palermo</td><td>1</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-0000000102</td><td>Biblioteca Comunale</td><td>Firenze</td><td>1</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-0000000108</td><td>Biblioteca Centrale</td><td>Roma</td><td>2</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-0000000109</td><td>Biblioteca Civica</td><td>Torino</td><td>2</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-0000000201</td><td>Biblioteca Civica</td><td>Torino</td><td>2</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-1000000002</td><td>Biblioteca Centrale</td><td>Roma</td><td>4</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-1000000005</td><td>Biblioteca Universitaria</td><td>Bologna</td><td>4</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-1000000009</td><td>Biblioteca Nazionale</td><td>Milano</td><td>5</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-1000000015</td><td>Biblioteca Accademica</td><td>Pisa</td><td>4</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-1000000104</td><td>Biblioteca Comunale</td><td>Firenze</td><td>4</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-1000000106</td><td>Biblioteca Popolare</td><td>Palermo</td><td>2</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-1000000204</td><td>Biblioteca Centrale</td><td>Roma</td><td>4</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-1000000206</td><td>Biblioteca Comunale</td><td>Firenze</td><td>2</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-1000000208</td><td>Biblioteca Civica</td><td>Torino</td><td>1</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-2000000008</td><td>Biblioteca Civica</td><td>Torino</td><td>1</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-2000000011</td><td>Biblioteca Popolare</td><td>Palermo</td><td>5</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>978-2000000013</td><td>Biblioteca Comunale</td><td>Firenze</td><td>1</td>
    </tr>
  </tbody>
</table>


<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    Let us now assume a scenario in which a user requests to borrow a book that is available in the library.
    A loan is initiated for a copy of the book titled
    <strong><em>"Manuale di Biblioteconomia"</em></strong>.
  </p>

  <p>
    The user, <strong>Simone Remoli</strong>, specifies his mobile number
    <strong>(+39 3881211212)</strong> as his preferred contact method
    <em>(note: this is not the author's actual phone number)</em>.
  </p>

  <p>
    Consequently, the selected copy is registered in the system with the status
    <strong style="color: #006400;">"On loan to user"</strong>,
    which is duly reflected in the database records.
  </p>

  <p>
    Furthermore, the user's name is recorded in the <strong>loan tracking table</strong>,
    establishing a link between the borrowed copy and the requesting individual.
  </p>
</div>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">Copy Number</th>
      <th style="text-align: center;">Status</th>
      <th style="text-align: center;">ISBN</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000001</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000002</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td>
      <td>In prestito altra biblioteca</td>
      <td>978-0000000003</td>
    </tr>
    <tr style="background-color: #00ff00; text-align: center;">
      <td>1</td>
      <td>In prestito utente</td>
      <td>978-0000000004</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000005</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000006</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000007</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td>
      <td>In prestito altra biblioteca</td>
      <td>978-0000000008</td>
    </tr>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000009</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td>
      <td>Disponibile</td>
      <td>978-0000000010</td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">First Name</th>
      <th style="text-align: center;">Last Name</th>
      <th style="text-align: center;">Date of Birth</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>Simone</td>
      <td>Remoli</td>
      <td>2000-10-02</td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">First Name</th>
      <th style="text-align: center;">Last Name</th>
      <th style="text-align: center;">Date of Birth</th>
      <th style="text-align: center;">Phone</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>Simone</td>
      <td>Remoli</td>
      <td>2000-10-02</td>
      <td>3881211212</td>
    </tr>
  </tbody>
</table>

<br>

This table indicates that the user Simone Remoli has requested a copy of the book identified by ISBN 978-0000000004, initiating a loan on March 22, 2025, with a scheduled return date of June 22, 2025.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">ISBN</th>
      <th style="text-align: center;">Copy Number</th>
      <th style="text-align: center;">First Name</th>
      <th style="text-align: center;">Last Name</th>
      <th style="text-align: center;">Date of Birth</th>
      <th style="text-align: center;">Loan Start Date</th>
      <th style="text-align: center;">Loan End Date</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; text-align: center;">
      <td>978-0000000004</td>
      <td>1</td>
      <td>Simone</td>
      <td>Remoli</td>
      <td>2000-10-02</td>
      <td>2025-03-22</td>
      <td>2025-06-22</td>
    </tr>
  </tbody>
</table>

<br>

<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    <strong>Scriptorium</strong> is designed to simulate the reception of external events through a scheduled database trigger.
  </p>

  <p>
    This mechanism selects a random <strong>ISBN</strong> from the pool of available copies and issues a request on behalf of a randomly chosen library.
  </p>

  <p>
    Since the system also includes <strong>external libraries</strong> that may request books held internally,
    this simulation reproduces the <em>interlibrary loan process</em> triggered by such external institutions.
  </p>
</div>

<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    Let us now assume that the <strong>Municipal Library of Florence</strong> requests a copy of the book entitled
    <em>"La Biblioteca del Mondo"</em>, identified by ISBN <strong>978-0000000103</strong>.
  </p>

  <p>
    As a result, the corresponding record in the <strong>Copy</strong> table must be updated.
    The change in the copy's status is duly reflected in the system's database.
  </p>
</div>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">Copy Number</th>
      <th style="text-align: center;">Status</th>
      <th style="text-align: center;">ISBN</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000001</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000002</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000003</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>In prestito utente</td><td>978-0000000004</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000005</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000006</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000007</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000008</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000009</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000010</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>In prestito utente</td><td>978-0000000011</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000012</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000013</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000014</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000015</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000101</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000102</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>In prestito altra biblioteca</td><td>978-0000000103</td>
    </tr>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000104</td>
    </tr>
    <tr style="background-color: #ffffff; text-align: center;">
      <td>1</td><td>Disponibile</td><td>978-0000000105</td>
    </tr>
  </tbody>
</table>

It is now possible to clearly observe the external loan that has been recorded.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th style="text-align: center;">ISBN</th>
      <th style="text-align: center;">Copy Number</th>
      <th style="text-align: center;">Library Name</th>
      <th style="text-align: center;">City</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>978-0000000103</td>
      <td>1</td>
      <td>Biblioteca Comunale</td>
      <td>Firenze</td>
    </tr>
  </tbody>
</table>

<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    If a user requests a copy of a book that is not available within the local library,
    the system allows a request to be issued to an <strong>external library</strong>
    that holds a copy of the desired book.
  </p>
</div>
<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    Let us assume that the user <strong>Emilio</strong> intends to request a loan of the book titled
    <em>"Enciclopedia della Conoscenza"</em>.
  </p>
  <p>
    However, the book is currently <strong>unavailable</strong> within the library, as all copies have been exhausted.
  </p>
  <p>
    Consequently, the system must identify external libraries where the book is available for loan.
  </p>
</div>

<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    The book requested by <strong>Emilio</strong>, identified by ISBN <strong>978-0000000011</strong>,
    is currently available at the <strong>Academic Library of Pisa</strong>, which holds a total of
    <strong>9 copies</strong>.
  </p>
</div>


<img width="350" alt="Screenshot 2025-03-22 alle 13 58 53" src="https://github.com/user-attachments/assets/75905560-d965-49f1-b850-47e52915f208" />

<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    After the book has been explicitly requested, the corresponding table is updated:
    the number of available copies is reduced from <strong>9</strong> to <strong>8</strong>,
    and the loan transaction is duly recorded in the system.
  </p>
</div>

<img width="350" alt="Screenshot 2025-03-22 alle 14 00 51" src="https://github.com/user-attachments/assets/0088c0ec-9082-4068-983c-c609ec90800b" />

<div style="font-family: sans-serif; line-height: 1.6; font-size: 16px;">
  <p>
    The table below records an interlibrary loan successfully initiated by the user <strong>Emilio Rossi</strong>.
    The book, identified by ISBN <strong>978-0000000011</strong>, was borrowed from the <strong>Academic Library of Pisa</strong>.
  </p>
  <p>
    The transaction includes the user's full identification details and the scheduled loan period,
    which spans from <strong>March 22, 2025</strong> to <strong>May 22, 2025</strong>.
  </p>
  <p>
    This operation exemplifies the system's ability to process and document external loan requests across library institutions.
  </p>
</div>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: sans-serif;">
  <thead style="background-color: #D0E3FA;">
    <tr>
      <th>ISBN</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Date of Birth</th>
      <th>Library Name</th>
      <th>City</th>
      <th>Loan Start Date</th>
      <th>Loan End Date</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #e8edff; text-align: center;">
      <td>978-0000000011</td>
      <td>Emilio</td>
      <td>Rossi</td>
      <td>2004-05-06</td>
      <td>Biblioteca Accademica</td>
      <td>Pisa</td>
      <td>2025-03-22</td>
      <td>2025-05-22</td>
    </tr>
  </tbody>
</table>












    


<p align="right">(<a href="#readme-top">back to top</a>)</p>



 
