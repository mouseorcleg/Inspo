# Inspo

<img align="left" src="https://user-images.githubusercontent.com/45575272/216647355-1809e752-c46d-44a2-bd2e-ccd757c3d3f8.png" width="70" alt="app icon" > Inspo is a simple app that provides you with a source of inspiration at your fingertips. With just one pull of a button, youâll be able to see one randomly selected picture from the Harvard Museum collection. No extra information, just pure visual inspiration! 

![inspoHeader](https://user-images.githubusercontent.com/45575272/216647707-5b1b6d39-a449-46a0-b5d9-d02a4f1b6490.png)

## ð Table of content
* [Technologies](#-technologies)
* [Roadmap](#-roadmap)
  * [Start of the journey](#%EF%B8%8F-start-of-the-journey)
  * [Current status](#-current-status)
  * [Plans for the future updates](#-plans-for-the-future-updates)
* [ScreenShots](#-screenshots)
* [Credits and acknowledgements](#-credits-and-acknowledgements)
* [License](#%EF%B8%8F-license)

## ð  Technologies
* **MVVM** architecture and **SwiftUI** were employed to create the user interface and data flow of the Inspo app. 
* A **separate networking level** was developed to decode **JSON** responses from the **Harvard Museum API** and a repository and protocol were implemented to ensure the persistence of the data. 
* **AsyncImage** was used for displaying the main picture and **DragGesture** was utilised to allow the user to trigger updates to the picture. 
* The launch screen (only) was designed using **Storyboard**.

## ðº Roadmap
### âï¸ Start of the journey

The Inspo app was created as an exercise set by my mentor to develop skills in working with images and JSON responses. The task was to find a public API, set up a networking layer, and handle the image loading within the app.

As an art historian, I saw the opportunity to provide users with a unique and memorable experience of exploring artwork. By using the [Harvard Art Museum API](https://harvardartmuseums.org/collections/api), Inspo allows users to discover art without any preconceived notions or additional information, giving them the chance to form their own opinions and interpretations. Whether you are an artist seeking inspiration or simply curious about the museumâs collection, Inspo provides an stress-free way to engage with art and discover something new.

### ð± Current status

The current status of the app is that it is fully functional, allowing users to randomly load images from the Harvard Art Museum collection. It meets all the requirements established during the planning phase.

However, there still is room for improvement and additional features in the future. [The Harvard Art Museum API](https://github.com/harvardartmuseums/api-docs) provides a wealth of resources, and I am eager to continue exploring the possibilities for working with images using SwiftUI.

### ð©âð» Plans for the future updates

The next update will feature the ability to request and cache a unique collection of images from the Harvard Art Museum API, creating a persistent user experience. A save and share button will also be added.

ð® If you have ideas or recommendations about the features for this app - please donât hesitate to reach out on Twitter [@mouse_or_cleg](https://twitter.com/mouse_or_cleg).
Any feedback is highly appreciated!

## ð· ScreenShots

Discover the versatility of the app with this glimpse into the user experience. Don't miss out on the GIF section, where you can explore the Harvard Art Museum collection in a unique and dynamic way.

<details>
    <summary>â¨ amazing screenshots â¨</summary>
<img height="400" alt="launch screen" src="https://user-images.githubusercontent.com/45575272/216648296-b8f7927e-39c1-43c1-b91f-edecc0aa1507.png"><img height="400" alt="first screen" src="https://user-images.githubusercontent.com/45575272/216649290-192d97ed-b5ba-4917-a68b-eeccef4dff45.png"><img height="400" alt="picture of the flowers inside the app's screen" src="https://user-images.githubusercontent.com/45575272/216648555-3f5cf96e-0dbf-4fc1-a9b4-125eb16a72cf.png"><img height="400" alt="japanese grafic inside the app's screen" src="https://user-images.githubusercontent.com/45575272/216648733-9515d334-4ddf-4b91-ad25-5e65701654df.png">

</details>

<details>
  <summary>ð¾ and gifs ð¾</summary>
 
 ![start](https://user-images.githubusercontent.com/45575272/216650149-edd91c90-5e4a-4155-aef5-90a7191e31fb.gif) ![2 screens + loading screen](https://user-images.githubusercontent.com/45575272/216653112-84583d0b-961f-445f-8655-95dc631d0eca.gif)
 ![2 screens dark mode](https://user-images.githubusercontent.com/45575272/216650205-76977043-2815-4550-8846-1c4e15831dbc.gif)
 ![many screens](https://user-images.githubusercontent.com/45575272/216653123-343f7499-3f2f-4abd-997e-5760d2a5df21.gif)

</details>

## ð Credits and acknowledgements

In the development of this app, the Harvard Art Museum API with it's brilliant [documentation](https://github.com/harvardartmuseums/api-docs) was a valuable resource. 

The guidance provided by my mentor, [@togramago](https://github.com/togramago), was instrumental in ensuring the success of this project, from setting the task to reviewing the code and keeping me on track. 

I also wish to acknowledge the influence of the [@SwiftfulThinking](https://www.youtube.com/@SwiftfulThinking) channel, created by [Nick Sarno](https://github.com/SwiftfulThinking), which was a helpful source of information and inspiration throughout the process.

Last but not least, I would like to extend my gratitude towards OpenAI and ChatGPT for providing valuable assistance with debugging and composing this ReadMe, contributing to the development of this app.

P.S.: all graphics for this app were created using Canva.

## Â©ï¸ License
MIT license [@mouseorcleg](https://github.com/mouseorcleg)
- - - -
ð Say hello on [Twitter](https://twitter.com/mouse_or_cleg) or [LinkedIn](https://www.linkedin.com/in/maria-kharybina-b0993148/).
