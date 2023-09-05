# Flutter Internship Assessment - Mobile Bank App

## Project Overview
This mobile bank app built  has the following key pages and features: 


1. **Login Page**: The initial page of the app, featuring a login button that links to the splash page. After a 2-second delay, the app will navigate to the first of five home pages, with a 3-second interval between each page. A "Forgot Password" button at the bottom of the page links to the "Forgot Password Page."

2. **Forgot Password Page**: Here, users can enter a new password and reset it. Clicking the "Reset Password" button will take them back to the login page, where they can log in to the home page.

3. **Home Page**: Users can press the "Transaction" button at the bottom of the screen to navigate to the "Transaction Page." Tapping on the picture at the top of both the home and transaction pages will send users to the "Profile Page."

4. **Transaction Page**: - Tapping the "10000 transaction" brings up "Frame19" as a bottom sheet.

5. **Profile Page**: Users can tap on "Change Account Password" to navigate to the "Change Password Page." Tapping the back button in the top bar will send them straight to the home page. Tapping "Logout" sends them back to the login page.

6. **Change Password Page**: Tapping the back button in the top bar sends users back to the profile page. Tapping the "Change Password" word sends them to the home page.

## Known Issues
There are a few issues that were not resolved before submission:

1. **State Management**: The implementation of better state management is needed to improve the app's performance and maintainability.
2. **Unused Imports**: Some unused imports and files need to be removed for cleaner code.
3. **Non-Responsive Buttons**: The "Debit" and "Credit" buttons on the Transaction Page do not respond when tapped.
4. **Top Bar Responsiveness**: Tapping the top bar on most pages provide a response.
