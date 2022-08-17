<img src="www/YuScore-logo.png" align="right" width=120 height=139 alt="" />

# YuScore - Score Keeper app
If you like playing board and card games with your friends, YuScore is just the app for you.\
You will not need to have pen and pencil all the time to keep the Running and the Total scores.\
YuScore can keep track of all Running scores of 1 to 10 players and also displays the Total scores too.\
It can even display which player(s) have the Minimum and Maximum Total scores.\
The app is perfectly suitable to keep Scores in Uno, Uno-Flip, Scrabble, Sushi-Go, Phase 10, Skip-Bo, Game Factory Gold, Game Factory Kombio, Qwirkle, Dominoes, Cribbage, Azul and many, many more of your favorite board and card games.

<img src="user_interface.png" align="center" width=100% height=400 alt="" />

# Setup
Option 1: Hosted locally (Easiest setup)
1. Download all provided files.
2. Download and install the [shinyShortcut](https://cran.r-project.org/web/packages/shinyShortcut/README.html) package and follow the instructions. 
3. Run the _shinyShortcut_ command. You will get a standalone .VBS executable file which can be executed without R or RStudio being open.
4. Read the provided in-app user manual at least once :)

Option 2: Hosted online, e.g. shinyapps.io
1. Download all files and create an account in shinyapps.io and follow their instructions furter.
2. Here you will need a persistant data storage solution. One possibilty is to host your score in Dropbox with the help of the [rdrop2](https://cran.r-project.org/web/packages/rdrop2/) package. You can create access keys (tokens) which can allow your Shiny app to read and write files from and to your Dropbox folder.
3. You will need to modify the code a bit. You will need the special functions for reading the score file from Dropbox _drop_read_csv_ by providing the score filename and Dropbox access token. Once you have done changes to the score, you create file in the virtual environment with _write.csv_ function and you upload it to Dropbox with _drop_upload_ by providing name and Dropbox token.

# User manual (same as the in-app one)
1. YuScore can help you keep track of your points in most (board/card) games for 1-10 people.
2. Create New Game record and Confirm it.
3. Provide all the names of your friends.
4. Save the Running score for every round for every player by pressing Save.
5. If you made a mistake there is the Undo button, which needs to be Confirmed.
6. Total score for the game is automatically calculated.
7. In most games, player with Maximum (sometimes Minimum) points is winner. Player(s) with Max or Min points are shown by pressing on the Player Max/Min points buttons. 

# Acknowledgements and my thanks
To [Dean Attali](https://deanattali.com/) for the packages _**shinyjs**_ and _**shinyalert**_ which we have used here. But Mr. Attali is doing so much more and creating amazing tools for us to use in Shiny. Feel free to check him out.
