style = paste0("color:white;margin-left:0em;")


user_manual =  HTML(
  
  paste(
    tags$em(tags$b(
      span("User manual:", style = style)
    )),
    tags$em(
      span("1. YuScore can help you keep track of your points in most (board/card) games for 1-10 people.", style = style)
    ),
    tags$em(
      span("2. Create New Game record and Confirm it.", style = style)
    ),
    tags$em(
      span("3. Provide all the names of your friends.", style = style)
    ),
    tags$em(
      span("4. Save the Running score for every round for every player by pressing Save.", style = style)
    ),
    tags$em(
      span("5. If you made a mistake there is the Undo button, which needs to be Confirmed.", style = style)
    ),
    tags$em(
      span("6. Total score for the game is automatically calculated.", style = style)
    ),
    tags$em(
      span("7. In most games, player with Maximum (sometimes Minimum) points is winner. Player(s) with Max or Min points are shown by pressing on the Player Max/Min points buttons.", style = style)
    ),
    sep = "<br/>"
  )
)
