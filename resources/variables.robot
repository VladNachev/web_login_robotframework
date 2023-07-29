*** Variables ***
${URL_Login_Page_Practice}                          https://rahulshettyacademy.com/loginpagePractise/
${UserName_Locator_ID}                              id:username
${Password_Locator_ID}                              id:password
${SignIn_Button_Locator_ID}                         id:signInBtn
${Shop_Page_Header_Locator_XPATH}                   xpath://button[@class='navbar-toggler']//preceding-sibling::a[@class='navbar-brand']
${SignIn_Error_Message_Locator_XPATH}               xpath://div[@class='alert alert-danger col-md-12']
${Valid_UserName_Input_Text}                        rahulshettyacademy
${Valid_Password_Input_Text}                        learning
${InValid_UserName_Input_Text}                      InValidUserName
${InValid_Password_Input_Text}                      InValidPassword
${URL_Angular_Practice_Shop}                        https://rahulshettyacademy.com/angularpractice/shop
${Incorrect_UserName_Password_Error_Message}        Incorrect username/password.
${Empty_UserName_Password_Error_Message}            Empty username/password.
${Actual_Shop_Page_Header_Text}
${Expected_Shop_Page_Header_Text}                   ProtoCommerce Home