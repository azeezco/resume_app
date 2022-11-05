<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->




<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Resume App</h3>

  <p align="center">
    This is an app that serves as a Resume, It shows details about you, Work Experiences, Skills An how you can be contacted.
    <br />
    <a href="https://github.com/azeezco/resume_app"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://appetize.io/app/3ntx7jaho4ziurgrqcvhliwogi?device=pixel6&osVersion=12.0&scale=75">View Demo</a>

  </p>
</div>






<!-- ABOUT THE PROJECT -->
## About The Project


This is a resume app that shows showcase your skills, work experience, how you can be contacted and generally what you want a potential recruiter to know about you.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* Flutter
* Dart

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

What things you need to run the app

  ```sh
  * Android Studio/Vscode/Intellij IDE
  * Flutter SDK
  * Android SDK
  * Macbook / Windows / Linux
  ```

### Installation


1. Clone the repo
   ```sh
   git clone https://github.com/azeezco/resume_app.git
   ```
2. To run
   ```sh
   C:\path\to\project> flutter pub get
   ```
3. Then run
   ```sh
   C:\path\to\project> flutter run
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- APP DESCRIPTION EXAMPLES -->
## App Description

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Features
- [ ] Download CV from the app
- [ ] Contact and go to my social media handles from the app
- [ ] Switch light to dark mode and vice vsersa
    


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## CodeBase Structure
The codebase consists of three folders
  1. Screens- This contains the design of (Contact, Homepage, Landing page, Experience Page And Services page).
  2. Utils - This consists of custom styles class and custom dark theme classes
  3. Widgets- This holds my drawer widget file
Then there is the main.dart file where it all starts from. The main method runs from the main.dart file and it begins by displaying the home page.
The 


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- DESIGN -->
## Design

The design insiration is a free Design on Figma from a designer called JAY PATEL, this is the [link](https://www.figma.com/@iamj_patel)
 to his profile. And this is the [link](https://www.figma.com/file/gLNEYxzkJmdSZVAIbXjbg2/Portfolio-(Community)?node-id=10%3A5) to the portfolio design i used.
 
 The Design consists of 
 * An header that is persistent all through the app.
 * 4 tags(About me, Work Experience, Services and Contact), which should change the UI dependng on which is clicked.
 
 Other things i added
 * A dark mode for the app
 * A drawer

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- Libaray -->
## Libraries

* url_lancher<p >To my social media from the app</p>
* Shared_preferences<p >To enable my custom theme persist all through the app</p>
* provider<p >To help me manage my states</p>
* gap<p >I prefer to use this in place of SizedBox Widget as it doesn't require me to set width or height, i just put in the value and it knows what to do.</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Features i would have loved to build
* The Services page well
* Make the app respond well on landscape and all devices
* Make it more accesible by switching Languages
* Make the Hire me lnk take you to email me
* Clean the code and moke some widgets resuable especially while i was trying to implement portrait and landscape mode

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Challenges
* Hard time geting provider to work as it was my first time using it
* Libraries needing a diffrent version of flutter to work. Spent almost a day trying to get flutter to upgrade
* Trying to get a widget to change depending on wgich of the tags was clicked.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## App links
* Appetize.io [link](https://appetize.io/app/3ntx7jaho4ziurgrqcvhliwogi?device=pixel6&osVersion=12.0&scale=75)
* Release Apk [link](https://drive.google.com/file/d/1XKso41AqZ0Y7IVJvqMrtgSR3Gc_icmMo/view?usp=share_link)
