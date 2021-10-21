*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
user should be able to search in flipkart application
    Launch the flipkart application
    Search for an Mobiles
    Select a phone which we like
    
User Shouble be able check the product
    Verify the product

*** Keywords ***
Launch the flipkart application
    Open Application  ${mir_server}  platformName=${platformName}  platformVersion=${platformVersion}  deviceName=${deviceName}   appActivity=${app_Activity}  appPackage=${appPackage}  noReset=true
    Capture Page Screenshot  mainpage.png
Search for an Mobiles
    Wait Until Element Is Visible  xpath=//android.widget.RelativeLayout[@content-desc="Search on flipkart"]/android.widget.TextView  timeout=40s
    Click Element  xpath=//android.widget.RelativeLayout[@content-desc="Search on flipkart"]/android.widget.TextView 
      
    Wait Until Element Is Visible  id=com.flipkart.android:id/search_autoCompleteTextView  timeout=40s
    input text  id=com.flipkart.android:id/search_autoCompleteTextView  Mobiles
    Capture Page Screenshot  search.png

    Wait Until Element Is Visible  id=com.flipkart.android:id/txt_subtitle  timeout=40s
    Click Element  id=com.flipkart.android:id/txt_subtitle 

    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup  timeout=40s
    Swipe    447    1988    538    614
    Swipe    523    1977    530    633
    Swipe    527    2053    496    618
    Capture Page Screenshot  mobile.png

Select a phone which we like 
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup  timeout=40s
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup
    Capture Page Screenshot  t1.png

    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup  timeout=40s
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup  
    Quit Application 

Verify the product
    Launch application  
    Wait Until Element Is Visible  id=com.flipkart.android:id/cart_count  timeout=40s
    Click Element  id=com.flipkart.android:id/cart_count


*** Variables ***	
${mir_server} =  http://localhost:4723/wd/hub
${platformName} =  Android	
${platformVersion} =  11.0
${deviceName} =  emulator-5554
${app_Activity} =  com.flipkart.android.activity.HomeFragmentHolderActivity
${appPackage} =  com.flipkart.android
