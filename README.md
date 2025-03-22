



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



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

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
## Usage

The following section illustrates practical examples of how the system may be utilized in real-world scenarios.
Sample workflows, interface screenshots, and code snippets may be provided to demonstrate core functionalities and typical use cases.

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

    <tr style="background-color: #f9f9f9;">
      <td>Giornalismo Investigativo</td>
      <td>978-0000000106</td>
      <td>050</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Atlante del XX Secolo</td>
      <td>978-0000000107</td>
      <td>000</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Enciclopedia della Scienza</td>
      <td>978-0000000108</td>
      <td>000</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Le Grandi Biografie</td>
      <td>978-0000000109</td>
      <td>030</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Manuale di Documentazione</td>
      <td>978-0000000110</td>
      <td>010</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Guida Definitiva all’Inutilità</td>
      <td>978-0000000201</td>
      <td>000</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Dizionario delle Parole Inventate</td>
      <td>978-0000000202</td>
      <td>000</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>L’Enciclopedia delle Cose che Non Sai di Non Sapere</td>
      <td>978-0000000203</td>
      <td>000</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Manuale di Biblioteconomia per Chi Non Legge</td>
      <td>978-0000000204</td>
      <td>010</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Atlante delle Terre che Non Esistono</td>
      <td>978-0000000205</td>
      <td>000</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Come Nascondersi in una Biblioteca</td>
      <td>978-0000000206</td>
      <td>010</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Le 1000 Cose che Nessuno Ti Chiederà Mai</td>
      <td>978-0000000207</td>
      <td>030</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Giornalismo Spazzatura per Esperti</td>
      <td>978-0000000208</td>
      <td>050</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Scrivere un Libro Senza Scriverlo</td>
      <td>978-0000000209</td>
      <td>020</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida agli Errori di Stampa Memorabili</td>
      <td>978-0000000210</td>
      <td>030</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Le Follie dell'Imperatore</td>
      <td>978-00000432</td>
      <td>950</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>La madre di tutti</td>
      <td>978-002345611</td>
      <td>920</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia della Filosofia</td>
      <td>978-1000000001</td>
      <td>100</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Metafisica e Realtà</td>
      <td>978-1000000002</td>
      <td>110</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>La Conoscenza Scientifica</td>
      <td>978-1000000003</td>
      <td>120</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Psicologia del Comportamento</td>
      <td>978-1000000004</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Logica e Argomentazione</td>
      <td>978-1000000005</td>
      <td>160</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Filosofia Antica</td>
      <td>978-1000000006</td>
      <td>180</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Pensiero Critico e Ragionamento</td>
      <td>978-1000000007</td>
      <td>160</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>La Mente Umana</td>
      <td>978-1000000008</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Filosofia Orientale</td>
      <td>978-1000000009</td>
      <td>180</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Etica e Morale</td>
      <td>978-1000000010</td>
      <td>170</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>La Filosofia Contemporanea</td>
      <td>978-1000000011</td>
      <td>100</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Letture di Metafisica</td>
      <td>978-1000000012</td>
      <td>110</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Psicologia del Pensiero</td>
      <td>978-1000000013</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Logica Matematica</td>
      <td>978-1000000014</td>
      <td>160</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>I Grandi Filosofi</td>
      <td>978-1000000015</td>
      <td>180</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Pensiero Umano</td>
      <td>978-1000000101</td>
      <td>100</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Metafisica per Tutti</td>
      <td>978-1000000102</td>
      <td>110</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Filosofia e Logica</td>
      <td>978-1000000103</td>
      <td>120</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Psicologia Clinica</td>
      <td>978-1000000104</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Etica e Società</td>
      <td>978-1000000105</td>
      <td>170</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Filosofia Orientale Moderna</td>
      <td>978-1000000106</td>
      <td>180</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Psicanalisi e Neuroscienze</td>
      <td>978-1000000107</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Filosofia Analitica</td>
      <td>978-1000000108</td>
      <td>160</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Significato della Vita</td>
      <td>978-1000000109</td>
      <td>100</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia della Mente</td>
      <td>978-1000000110</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>La Profonda Filosofia del Divano</td>
      <td>978-1000000201</td>
      <td>100</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Zen e l’Arte di Perdere Tempo</td>
      <td>978-1000000202</td>
      <td>110</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Logica e il Dilemma del Biscotto Spezzato</td>
      <td>978-1000000203</td>
      <td>160</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Psicologia del Pollo in Fuga</td>
      <td>978-1000000204</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Filosofia della Pigrizia Estrema</td>
      <td>978-1000000205</td>
      <td>170</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Il Pensiero Esistenziale del Gatto</td>
      <td>978-1000000206</td>
      <td>180</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Paradossi per Confondersi Meglio</td>
      <td>978-1000000207</td>
      <td>120</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Convincersi di Avere Sempre Ragione</td>
      <td>978-1000000208</td>
      <td>150</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida alla Vita secondo i Cartoni Animati</td>
      <td>978-1000000209</td>
      <td>100</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Metafisica del Bucato</td>
      <td>978-1000000210</td>
      <td>110</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Religioni del Mondo</td>
      <td>978-2000000001</td>
      <td>200</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Filosofia della Religione</td>
      <td>978-2000000002</td>
      <td>210</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Cristianesimo e la Bibbia</td>
      <td>978-2000000003</td>
      <td>220</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia del Cristianesimo</td>
      <td>978-2000000004</td>
      <td>270</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Islam: Storia e Dottrina</td>
      <td>978-2000000005</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Religioni Orientali</td>
      <td>978-2000000006</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Buddhismo</td>
      <td>978-2000000007</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Ebraismo e Torah</td>
      <td>978-2000000008</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Teologia Contemporanea</td>
      <td>978-2000000009</td>
      <td>260</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Miti e Leggende Religiose</td>
      <td>978-2000000010</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Le Religioni Preistoriche</td>
      <td>978-2000000011</td>
      <td>200</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Filosofia della Spiritualità</td>
      <td>978-2000000012</td>
      <td>210</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Islam: Tradizione e Storia</td>
      <td>978-2000000013</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>L’Ebraismo Oggi</td>
      <td>978-2000000014</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Mitologia Cristiana</td>
      <td>978-2000000015</td>
      <td>270</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>La Religione nell’Antichità</td>
      <td>978-2000000101</td>
      <td>200</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Miti e Leggende Bibliche</td>
      <td>978-2000000102</td>
      <td>220</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Spiritualità e Filosofia</td>
      <td>978-2000000103</td>
      <td>210</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Buddismo Zen</td>
      <td>978-2000000104</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Teologia e Dottrina Cristiana</td>
      <td>978-2000000105</td>
      <td>230</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>L’Islam tra Storia e Fede</td>
      <td>978-2000000106</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Ebraismo: Tradizioni e Cultura</td>
      <td>978-2000000107</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Mitologia Norrena</td>
      <td>978-2000000108</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Cristianesimo Primitivo</td>
      <td>978-2000000109</td>
      <td>270</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>La Storia delle Religioni</td>
      <td>978-2000000110</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Preghiere per Trovare il Telecomando</td>
      <td>978-2000000201</td>
      <td>200</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida alla Teologia dei Meme</td>
      <td>978-2000000202</td>
      <td>210</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Buddismo per Chi Non ha Tempo di Meditare</td>
      <td>978-2000000203</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Come Vendere la Propria Anima Senza Rimorsi</td>
      <td>978-2000000204</td>
      <td>270</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Il Cristianesimo Spiegato ai Polli</td>
      <td>978-2000000205</td>
      <td>220</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Ebraismo e la Festa del Cibo Gratis</td>
      <td>978-2000000206</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Mitologia delle Divinità Pigre</td>
      <td>978-2000000207</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Islam: Le 100 Domande che Nessuno ha Mai Fatto</td>
      <td>978-2000000208</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Manuale per Santi Pigri</td>
      <td>978-2000000209</td>
      <td>260</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Vangelo secondo il Gatto</td>
      <td>978-2000000210</td>
      <td>290</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scienze Sociali e Politiche</td>
      <td>978-3000000001</td>
      <td>300</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Introduzione alla Statistica</td>
      <td>978-3000000002</td>
      <td>310</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Fondamenti di Economia</td>
      <td>978-3000000003</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Il Sistema Giuridico</td>
      <td>978-3000000004</td>
      <td>340</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Sociologia della Comunicazione</td>
      <td>978-3000000005</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Antropologia Culturale</td>
      <td>978-3000000006</td>
      <td>390</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Teorie Politiche</td>
      <td>978-3000000007</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Psicologia Sociale</td>
      <td>978-3000000008</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Globalizzazione e Società</td>
      <td>978-3000000009</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Politica Internazionale</td>
      <td>978-3000000010</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Statistica per le Scienze Sociali</td>
      <td>978-3000000011</td>
      <td>310</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Economia e Mercati Globali</td>
      <td>978-3000000012</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Introduzione alla Politica</td>
      <td>978-3000000013</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Sociologia Urbana</td>
      <td>978-3000000014</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Geopolitica e Conflitti</td>
      <td>978-3000000015</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Sociologia e Cultura</td>
      <td>978-3000000101</td>
      <td>300</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Geopolitica Moderna</td>
      <td>978-3000000102</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Economia e Mercati Finanziari</td>
      <td>978-3000000103</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Legislazione e Diritto Civile</td>
      <td>978-3000000104</td>
      <td>340</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Storia del Pensiero Politico</td>
      <td>978-3000000105</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Psicologia Sociale</td>
      <td>978-3000000106</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Statistiche e Previsioni</td>
      <td>978-3000000107</td>
      <td>310</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Lavoro e Diritti</td>
      <td>978-3000000108</td>
      <td>350</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Globalizzazione e Sviluppo</td>
      <td>978-3000000109</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Società e Innovazione</td>
      <td>978-3000000110</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Come Evitare la Gente senza Offenderli</td>
      <td>978-3000000201</td>
      <td>300</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Il Grande Manuale delle Scuse Perfette</td>
      <td>978-3000000202</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Politica per Chi non Vuole Averci a Che Fare</td>
      <td>978-3000000203</td>
      <td>320</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Economia del Baratto di Meme</td>
      <td>978-3000000204</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Diritto e Come Non Essere Arrestati</td>
      <td>978-3000000205</td>
      <td>340</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Sociologia degli Influencer Falliti</td>
      <td>978-3000000206</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Manuale di Sopravvivenza ai Pranzi di Famiglia</td>
      <td>978-3000000207</td>
      <td>390</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Fare Soldi Senza Lavorare</td>
      <td>978-3000000208</td>
      <td>330</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Psicologia dell’Ordine Casuale</td>
      <td>978-3000000209</td>
      <td>360</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Introduzione alla Pigrizia Sociale</td>
      <td>978-3000000210</td>
      <td>300</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Introduzione alla Linguistica</td>
      <td>978-4000000001</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Grammatica della Lingua Inglese</td>
      <td>978-4000000002</td>
      <td>420</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida alla Lingua Tedesca</td>
      <td>978-4000000003</td>
      <td>430</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Letteratura Francese</td>
      <td>978-4000000004</td>
      <td>440</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Dizionario Italiano</td>
      <td>978-4000000005</td>
      <td>450</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scrittura Creativa</td>
      <td>978-4000000006</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Traduzione e Interpretariato</td>
      <td>978-4000000007</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Filologia Romana</td>
      <td>978-4000000008</td>
      <td>490</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Dialetti Italiani</td>
      <td>978-4000000009</td>
      <td>490</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Analisi del Testo</td>
      <td>978-4000000010</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Analisi Morfologica e Sintattica</td>
      <td>978-4000000011</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Fonologia e Fonetica</td>
      <td>978-4000000012</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Traduzione Letteraria</td>
      <td>978-4000000013</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia della Lingua Italiana</td>
      <td>978-4000000014</td>
      <td>450</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida alla Poesia</td>
      <td>978-4000000015</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Linguistica Teorica</td>
      <td>978-4000000101</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Fonetica e Dialettologia</td>
      <td>978-4000000102</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia della Lingua Inglese</td>
      <td>978-4000000103</td>
      <td>420</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Lessicografia e Semantica</td>
      <td>978-4000000104</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Grammatica Avanzata</td>
      <td>978-4000000105</td>
      <td>450</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Linguaggi Artificiali</td>
      <td>978-4000000106</td>
      <td>490</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scrittura e Comunicazione</td>
      <td>978-4000000107</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Traduzione Tecnica</td>
      <td>978-4000000108</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Analisi del Discorso</td>
      <td>978-4000000109</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Lingue Romanze</td>
      <td>978-4000000110</td>
      <td>490</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Dizionario delle Parole Inutili</td>
      <td>978-4000000201</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>L’Arte di Parlare senza Dire Nulla</td>
      <td>978-4000000202</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Inventare un Nuovo Dialetto</td>
      <td>978-4000000203</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida alla Scrittura Brutta</td>
      <td>978-4000000204</td>
      <td>450</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Lingue Aliene per Principianti</td>
      <td>978-4000000205</td>
      <td>490</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Analisi Grammaticale delle Parolacce</td>
      <td>978-4000000206</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Imparare il Latino in 3 Minuti (Impossibile)</td>
      <td>978-4000000207</td>
      <td>490</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Traduzioni Letterarie dei Meme</td>
      <td>978-4000000208</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Parlare in Inglese con 5 Parole</td>
      <td>978-4000000209</td>
      <td>420</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Linguistica per Chi non sa Leggere</td>
      <td>978-4000000210</td>
      <td>400</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scienze della Natura</td>
      <td>978-5000000001</td>
      <td>500</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Elementi di Matematica</td>
      <td>978-5000000002</td>
      <td>510</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Introduzione Astronomia</td>
      <td>978-5000000003</td>
      <td>520</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Fisica per Principianti</td>
      <td>978-5000000004</td>
      <td>530</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Chimica Organica</td>
      <td>978-5000000005</td>
      <td>540</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Biologia e Evoluzione</td>
      <td>978-5000000006</td>
      <td>570</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Geologia e Minerali</td>
      <td>978-5000000007</td>
      <td>550</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Zoologia Generale</td>
      <td>978-5000000008</td>
      <td>590</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scienza dell Ambiente</td>
      <td>978-5000000009</td>
      <td>550</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Piante e Botanica</td>
      <td>978-5000000010</td>
      <td>580</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Matematica per la Fisica</td>
      <td>978-5000000011</td>
      <td>510</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Introduzione alla Statistica Bayesiana</td>
      <td>978-5000000012</td>
      <td>310</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>L’Universo e i Buchi Neri</td>
      <td>978-5000000013</td>
      <td>520</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Zoologia Applicata</td>
      <td>978-5000000014</td>
      <td>590</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Teoria dei Numeri</td>
      <td>978-5000000015</td>
      <td>510</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Fisica Quantistica</td>
      <td>978-5000000101</td>
      <td>530</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Matematica Computazionale</td>
      <td>978-5000000102</td>
      <td>510</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Chimica Inorganica</td>
      <td>978-5000000103</td>
      <td>540</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Biotecnologie e Genetica</td>
      <td>978-5000000104</td>
      <td>570</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Scienze della Terra</td>
      <td>978-5000000105</td>
      <td>550</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Astronomia e Astrofisica</td>
      <td>978-5000000106</td>
      <td>520</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Evoluzione e Biodiversità</td>
      <td>978-5000000107</td>
      <td>590</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Fisica delle Particelle</td>
      <td>978-5000000108</td>
      <td>530</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Teorie Cosmologiche</td>
      <td>978-5000000109</td>
      <td>520</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Botanica e Micologia</td>
      <td>978-5000000110</td>
      <td>580</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Matematica per Chi Odia i Numeri</td>
      <td>978-5000000201</td>
      <td>510</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Fisica Quantistica per Cani</td>
      <td>978-5000000202</td>
      <td>530</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>La Biologia della Pigrizia</td>
      <td>978-5000000203</td>
      <td>570</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Farsi Amico un Atomo</td>
      <td>978-5000000204</td>
      <td>540</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Astronomia per Chi Dorme Troppo</td>
      <td>978-5000000205</td>
      <td>520</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Teoria della Relatività del Tempo Perso</td>
      <td>978-5000000206</td>
      <td>530</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>La Botanica del Cactus da Scrivania</td>
      <td>978-5000000207</td>
      <td>580</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Guida alla Scienza del Nulla</td>
      <td>978-5000000208</td>
      <td>500</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Chimica delle Sostanze Immaginarie</td>
      <td>978-5000000209</td>
      <td>540</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Come Calcolare Senza Fare Calcoli</td>
      <td>978-5000000210</td>
      <td>510</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Introduzione alla Tecnologia</td>
      <td>978-6000000001</td>
      <td>600</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Manuale di Ingegneria</td>
      <td>978-6000000002</td>
      <td>620</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Fondamenti di Medicina</td>
      <td>978-6000000003</td>
      <td>610</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scienze Alimentari</td>
      <td>978-6000000004</td>
      <td>640</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Robotica e Automazione</td>
      <td>978-6000000005</td>
      <td>670</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Nanotecnologie</td>
      <td>978-6000000006</td>
      <td>660</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Bioinformatica</td>
      <td>978-6000000007</td>
      <td>610</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Intelligenza Artificiale</td>
      <td>978-6000000008</td>
      <td>600</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Cybersecurity e Privacy</td>
      <td>978-6000000009</td>
      <td>650</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Blockchain e FinTech</td>
      <td>978-6000000010</td>
      <td>650</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Blockchain e il Futuro del Web</td>
      <td>978-6000000011</td>
      <td>650</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Neuroscienze e Tecnologia</td>
      <td>978-6000000012</td>
      <td>610</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Robotica Avanzata</td>
      <td>978-6000000013</td>
      <td>620</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Nanotecnologie e Materiali Innovativi</td>
      <td>978-6000000014</td>
      <td>660</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Guida alla Medicina Digitale</td>
      <td>978-6000000015</td>
      <td>610</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Robotica e IA</td>
      <td>978-6000000101</td>
      <td>620</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Medicina del Futuro</td>
      <td>978-6000000102</td>
      <td>610</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scienza dei Materiali</td>
      <td>978-6000000103</td>
      <td>660</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Blockchain e Sicurezza Informatica</td>
      <td>978-6000000104</td>
      <td>650</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Sistemi di Produzione Industriale</td>
      <td>978-6000000105</td>
      <td>670</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Big Data e AI</td>
      <td>978-6000000106</td>
      <td>650</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Automazione e Controllo</td>
      <td>978-6000000107</td>
      <td>620</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Nanotecnologie e Biomedicina</td>
      <td>978-6000000108</td>
      <td>660</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Ingegneria dei Sistemi</td>
      <td>978-6000000109</td>
      <td>620</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Tecnologie dell’Informazione</td>
      <td>978-6000000110</td>
      <td>650</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Guida alla Fotografia Digitale</td>
      <td>978-7000000011</td>
      <td>770</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Cinema e Montaggio</td>
      <td>978-7000000012</td>
      <td>790</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia del Jazz</td>
      <td>978-7000000013</td>
      <td>780</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Tecniche di Pittura Moderna</td>
      <td>978-7000000014</td>
      <td>750</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scultura Contemporanea</td>
      <td>978-7000000015</td>
      <td>730</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Pittura e Disegno</td>
      <td>978-7000000101</td>
      <td>750</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Cinema e Regia</td>
      <td>978-7000000102</td>
      <td>790</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Storia della Musica</td>
      <td>978-7000000103</td>
      <td>780</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Architettura Moderna</td>
      <td>978-7000000104</td>
      <td>720</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Fotografia e Postproduzione</td>
      <td>978-7000000105</td>
      <td>770</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Scultura e Arte Contemporanea</td>
      <td>978-7000000106</td>
      <td>730</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Danza e Coreografia</td>
      <td>978-7000000107</td>
      <td>700</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Arti Digitali</td>
      <td>978-7000000108</td>
      <td>760</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Teatro e Performance</td>
      <td>978-7000000109</td>
      <td>790</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Arti Grafiche e Pubblicità</td>
      <td>978-7000000110</td>
      <td>760</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>I Classici della Letteratura Inglese</td>
      <td>978-8000000011</td>
      <td>820</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Romanzi Storici</td>
      <td>978-8000000012</td>
      <td>830</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Teatro Contemporaneo</td>
      <td>978-8000000013</td>
      <td>850</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Antologie di Poesia</td>
      <td>978-8000000014</td>
      <td>800</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Scrittura Creativa: Tecniche e Stili</td>
      <td>978-8000000015</td>
      <td>800</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Storia delle Guerre Mondiali</td>
      <td>978-9000000011</td>
      <td>900</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Geografia Economica</td>
      <td>978-9000000012</td>
      <td>910</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Il Rinascimento Italiano</td>
      <td>978-9000000013</td>
      <td>940</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #f9f9f9;">
      <td>Storia dell’Antica Roma</td>
      <td>978-9000000014</td>
      <td>930</td>
      <td>Yes</td>
    </tr>

    <tr style="background-color: #ffffff;">
      <td>Viaggi ed Esplorazioni</td>
      <td>978-9000000015</td>
      <td>910</td>
      <td>Yes</td>
    </tr>

  </tbody>
</table>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] Add Changelog
- [x] Add back to top links
- [ ] Add Additional Templates w/ Examples
- [ ] Add "components" document to easily copy & paste sections of the readme
- [ ] Multi-language Support
    - [ ] Chinese
    - [ ] Spanish

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Top contributors:

<a href="https://github.com/othneildrew/Best-README-Template/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=othneildrew/Best-README-Template" alt="contrib.rocks image" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the Unlicense License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Malven's Flexbox Cheatsheet](https://flexbox.malven.co/)
* [Malven's Grid Cheatsheet](https://grid.malven.co/)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
* [Font Awesome](https://fontawesome.com)
* [React Icons](https://react-icons.github.io/react-icons/search)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
