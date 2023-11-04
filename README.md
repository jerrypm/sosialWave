# Sosial Wave

 <img src="https://github.com/jerrypm/sosialWave/assets/15967964/eb5e2f56-005b-4fc0-a3ed-19da7c250e79" alt="drawing" width="300"/> | <img src="https://github.com/jerrypm/sosialWave/assets/15967964/0198cf6d-a600-43bf-8623-51c7506e227a" alt="drawing" width="300"/>



Sosial Wave is an iOS application built using SwiftUI to monitor and interact with your social media in one convenient place.

## Key Features
- Integrated Social Media Feed View
- Support for Various Social Media Platforms
- Image and Video Integration with Kingfisher

## Installation
1. Make sure you have [Xcode](https://developer.apple.com/xcode/) installed on your system.
2. Clone this repository to your computer.

```bash
git clone https://github.com/username/SosialWave.git

```
1. Open the Sosial Wave project in Xcode.

2. Ensure that you have installed the Swift Package Manager to manage project dependencies.

3. Install the Kingfisher dependency using SPM:
   - Open Xcode.
   - Open your project file.
   - Select your project in the navigator.
   - Choose the "Swift Packages" tab.
   - Click the "+" button to add a package.
   - Enter the Kingfisher repository URL:
  
     
   ``` bash
   https://github.com/onevcat/Kingfisher.git
   ```
   - Click "Next" and select the appropriate Kingfisher version.
   - Follow the instructions to complete the installation.
   
4. Once the installation is complete, your project is ready to use Kingfisher.

```bash
import Kingfisher

let url = URL(string: "https://example.com/image.jpg")
imageView.kf.setImage(with: url)
```

Contributions
We greatly appreciate contributions! If you'd like to contribute to this project, please open an issue or submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.
