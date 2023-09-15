# BioPro

BioPro is my stage 2 task submission for the HNG10 internship. This mobile app showcases personal and professional details just like a CV. It consist of an homepage which displays the required information and a second page where the details can be edited.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [App Testing](#app-testing)

## Features

- Home screen showing the prefilled CV details:
  * Full Name
  * Slack Username
  * Github Handle
  * Brief Personal Bio
  * An 'Edit CV' Button
- Edit Page
  * Input Text Fields
  * A 'Done' Button
    

## Getting Started

The following instructions will guide you on how to set up and use this app on your device.

### Prerequisites

BioPro was built with the flutter (version 3.13.1) framework of the Dart programming language. It also has a SDK of '>=3.1.0 <4.0.0' however, there are no external dependencies. 

To succcessfully clone this project, ensure you have the flutter version 3.0 or greater and a SDK greater than 3.0 else it will lead to errors while getting your dependencies.

### Installation

1. Clone this repository using the link:
   https://github.com/OlatunjI-Ruth/BioPro.git
2. Click on the pub get that appears at the top of your IDE or enter the 'flutter pub get' in your terminal, to install the dependencies.
3. Select your andriod device or IOS emilator and click on the run icon at the top of your IDE.
4. Ensure developer mode is enabled on your physical devise if you are using one.
5. Allow some seconds for the app to build on the device.
6. Interact with the application.

## Usage

1. The home screen comes with my prefilled details which can be edited by tapping on the 'Edit CV' button.
2. You will be redirected to the input screen where you can input your details. All inputed data should be more than or equal to 6 characters long, else an alert dialog will request that the fields be properly filled. No field can be left unfilled also.
3. Upon currectly inputing your details, click the done button. This pops the input screen and your details will be displayed automatically on the home screen.

## App Testing

This app can be tested using Appetize.io, an online emulator designed for testing mobile apps. To test this app using Appetize, follow the instructions below.

1. Click the link below and you will be redirected to the interface for testing this app

   https://appetize.io/app/o2mhqwi5ut2stefiytqb4ifara?device=pixel4&osVersion=11.0&scale=75
   
3. upon the emulator loading, select the options you prefer
   
4. press play
   
5. interact with app 


