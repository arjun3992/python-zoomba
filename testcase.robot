***Settings***
Library    Zoomba.GUILibrary

Resource   keyword.robot
Resource   variable.robot

***Test Cases***
Working on flipkart
  Open Flipkart  ${flip}
  Go to ‘Electronics’ tab
  Search for any of your desired Mobile from ‘Mobiles’ section
  Do not select first 5 mobiles from the list.Try scrolling and search for the mobile
  go to that specific mobile’s details page.
