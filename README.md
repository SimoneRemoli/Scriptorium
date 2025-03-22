



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

<div style="display: flex; justify-content: flex-start; gap: 40px; align-items: flex-start;">

  <!-- 📚 LEFT - Book Table -->
  <div style="flex: 1;">
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
  </div>
  <div style="flex: 1;">
    <!-- Inserisci qui la seconda tabella o qualsiasi altro contenuto -->


    
  </div>


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
