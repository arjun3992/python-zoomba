***Keywords***
Open Flipkart
  [Arguments]  ${url}
  Open Browser  ${url}  gc
  Maximize Browser Window
  Click Element  ${close_button}
  sleep  5s

Go to ‘Electronics’ tab
  Mouse Over  ${electronics}

Search for any of your desired Mobile from ‘Mobiles’ section
  ${audio} =  Get Element Count  xpath=//*[@class="_3XS_gI _7qr1OC"]/a
  Log to Console  ${audio}
  sleep  3s
  FOR  ${i}  IN RANGE  1  ${audio}
    ${list_names}  Get Text  xpath=//*[@class="_3XS_gI _7qr1OC"]/a[${i}]
    Scroll Element Into View  xpath=//*[@class="_3XS_gI _7qr1OC"]/a[14]
    Log to Console  ${list_names}
    Exit For Loop If  "${list_names}" == "${tablet}"
  END
  Mouse Over  xpath=//*[@class="_3XS_gI _7qr1OC"]/a[14]

  ${Click Element}  Get Text  ${all}
  Log to Console  ${Click Element}
  Click Element  ${all}


Do not select first 5 mobiles from the list.Try scrolling and search for the mobile
  Click Element  ${somewhere}
  Zoomba.GUILibrary.Execute Javascript  window.scrollTo(0,3000)
  sleep  3s
  Zoomba.GUILibrary.Execute Javascript  window.scrollTo(0,1000)
  sleep  3s
  Zoomba.GUILibrary.Execute Javascript  window.scrollTo(0,1500)
  Sleep  10s


go to that specific mobile’s details page.
  Click Element  ${lap}
  ${handles}=  Get Window Handles
  Switch Window   ${handles}[1]
  ${title}  Get Title
  Log to console  ${title}
  ${prod1}  Get Text  xpath=/html/body/div[1]/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/h1/span
  Log to console  ${prod1}
  sleep  10s


  #Click on ADD TO CART button
  Zoomba.GUILibrary.Execute Javascript  window.scrollTo(0,1000)
  sleep  4s
  Click Element  ${addtocart}

  #Open Flipkart website
  ${handles}=  Get Window Handles
  Switch Window   ${handles}[0]
  sleep  4s

  #Go to Cart
  Click Element  ${cart}
  sleep  5s
  ${cart_mob}  Get Text  xpath=/html/body/div[1]/div/div[2]/div/div/div[1]/div/div[3]/div/div[1]/div[1]/div[1]/a
  Log to console  ${cart_mob}

  #Verify if the the Mobile which we added is available in the list.
  IF  "${prod1}" == "${cart_mob}"
  Log to console  IT IS UR MOBILE
  END