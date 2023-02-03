# Inspo

Inspo is a simple app that provides you with a source of inspiration at your fingertips. With just one pull of a button, you’ll be able to see one randomly selected picture from the Harvard Museum collection. No information, just pure visual inspiration! 

## 🛠 Technologies
* **MVVM** architecture and **SwiftUI** were employed to create the user interface and data flow of the Inspo app. 
* A **separate networking level** was developed to decode **JSON** responses from the **Harvard Museum API** and a repository and protocol were implemented to ensure the persistence of the data. 
* **AsyncImage** was used for displaying the main picture and **DragGesture** was utilised to allow the user to trigger updates to the picture. 
* The launch screen (only) was designed using **Storyboard**.

## 🗺 Roadmap
### ✈️ Start of the journey

The Inspo app was created as an exercise set by my mentor to develop skills in working with images and JSON responses. The task was to find a public API, set up a networking layer, and handle the image loading within the app.

As an art historian, I saw the opportunity to provide users with a unique and memorable experience of exploring artwork. By using the [Harvard Art Museum API](https://harvardartmuseums.org/collections/api), Inspo allows users to discover art without any preconceived notions or additional information, giving them the chance to form their own opinions and interpretations. Whether you are an artist seeking inspiration or simply curious about the museum’s collection, Inspo provides an stress-free way to engage with art and discover something new.

### 📱 Current status

The current status of the app is that it is fully functional, allowing users to randomly load images from the Harvard Art Museum collection. It meets all the requirements established during the planning phase.

However, there still is room for improvement and additional features in the future. [The Harvard Art Museum API](https://github.com/harvardartmuseums/api-docs) provides a wealth of resources, and I am eager to continue exploring the possibilities for working with images using SwiftUI.

### 👩‍💻 Plans for the future updates

The next update will feature the ability to request and cache a unique collection of images from the Harvard Art Museum API, creating a persistent user experience. A save and share button will also be added.

📮 If you have ideas or recommendations about the features for this app - please don’t hesitate to reach out on Twitter [@mouse_or_cleg](https://twitter.com/mouse_or_cleg).
Any feedback is highly appreciated!

## Credits and acknowledgments
First of all I want to say thank you for my mentor who reviews my numerous app ideas and push requests - [@togramago](https://github.com/togramago).

I’m planning to use [Code with Enid](https://twitter.com/ios_dev_alb) as a reference material for this project and follow some of the steps in [@SwiftfulThinking](https://www.youtube.com/@SwiftfulThinking) guides on Youtube. I will add details as it goes.

## ©️ License
MIT license @mouseorcleg
____
👋 Say hello on [Twitter](https://twitter.com/mouse_or_cleg) or [LinkedIn](https://www.linkedin.com/in/maria-kharybina-b0993148/).
