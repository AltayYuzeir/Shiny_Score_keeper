library(shiny)
library(shinyalert)
library(shinyjs)
library(shinyWidgets)
source(file = "user_manual.R")
#library(shinyWidgets)

wd = "C:/Users/altay/Altay/Lectures_Biochemustry/Business_Science_R/Score_keeper_app/"

ui = fluidPage(
  shinyWidgets::setBackgroundColor("#93c2eb"),
  fluidRow(column(10,offset = 2, titlePanel(tags$div(
    style = "margin:auto;margin-bottom:-20px;margin-top:-10px;color: #333333", #width: 800px; 
    class = "title-app",
    tags$h1("YuScore - Score Keeper app for (board/card) games")
    
  )
  ))), 
  title = shinytitle::use_shiny_title(),
  
  hr(style = "border-top: 1px solid #000000;"),
  sidebarLayout(
    sidebarPanel(
      tags$style(".well {background-color:#a3a3c2;}"),
      img(src = "YuScore-logo.png", height = "100%", width = "50%",
          style="display: block; margin-left: auto; margin-right: auto;"),
      hr(style = "border-top: 1px solid #ffffff;"),
      div(style="text-align:center; color: #666699", tags$b("Copyright"),icon("copyright"),
          tags$b("2022-2022"),br(), tags$b("Altay Yuzeir")),
      hr(style = "border-top: 1px solid #ffffff;"),
      
      
      fluidRow(
        column( width = 4, 
                offset = 2,
                actionButton("userManual", "Open User manual", 
                             icon = icon("book-open"), 
                             style = "background:#70dbdb;color:#404040")
                
        )
      ),
      p(),
      htmlOutput("userManualText"),
      #br(),
      uiOutput("hideUserManual"),
      
      width = 3),
    mainPanel(
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player1", "Player names:", placeholder = "Horse", value = "", icon = icon("horse"))
        ),
        column(
          width = 2,
          numericInput("score1", "Running score:", value = NA) # Score for this round:
        ),
        column(
          width = 2,
          numericInput("total1", "Total Score:", value = NA, width = "100%")
        ),
        column(width = 2,
               actionButton("newGame", label = "New Game", icon = icon("plus"),
                            style = "background:#ffb366;color:white; margin-top:25px;")
        ),
        #### New Game confirm/cancel UI ----
        column(width = 1,
               uiOutput("newGameConfirm")
        ),
        column(width = 1,
               offset = 1,
               uiOutput("newGameCancel")
        )
        
      ),
      
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player2", label = NULL, placeholder = "Dog", value = "", icon = icon("dog"))
        ),
        column(
          width = 2,
          numericInput("score2", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total2", label = NULL, value = NA, width = "100%")
        ),
        column(width = 1,
               actionButton("save", label = "Save", icon = icon("check"),
                            style = "background:green;color:white;")
        )
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player3", label = NULL, placeholder = "Fish", value = "", icon = icon("fish"))
        ),
        column(
          width = 2,
          numericInput("score3", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total3", label = NULL, value = NA, width = "100%")
        ),
        column(
          width = 2,
          actionButton("undo", label = "Undo", icon = icon("arrow-rotate-left"),
                       style = "background:#adad85;color:white;") #ff6666
        ),
        #### Undo confirm/cancel UI ----
        column(width = 1,
               uiOutput("undoConfirm")
        ),
        column(width = 1,
               offset = 1,
               uiOutput("undoCancel")
        )
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player4", label = NULL, placeholder = "Otter", value = "", icon = icon("otter"))
        ),
        column(
          width = 2,
          numericInput("score4", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total4", label = NULL, value = NA, width = "100%")
        ),
        column(
          width = 2,
          actionButton("showMax", label = "Players Max points", icon = icon("hourglass-start"),
                       style = "background:#e68a00;color:white;")
        )
        
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player5", label = NULL, placeholder = "Cat", value = "", icon = icon("cat"))
        ),
        column(
          width = 2,
          numericInput("score5", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total5", label = NULL, value = NA, width = "100%")
        ),
        column(
          width = 2,
          actionButton("showMin", label = "Players Min points", icon = icon("hourglass-end"),
                       style = "background:#cccc00;color:white;")
        )
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player6", label = NULL, placeholder = "Dove", value = "", icon = icon("dove"))
        ),
        column(
          width = 2,
          numericInput("score6", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total6", label = NULL, value = NA, width = "100%")
        )
        
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player7", label = NULL, placeholder = "Dragon", value = "", icon = icon("dragon"))
        ),
        column(
          width = 2,
          numericInput("score7", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total7", label = NULL, value = NA, width = "100%")
        )
        
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player8", label = NULL, placeholder = "Hippo", value = "", icon = icon("hippo"))
        ),
        column(
          width = 2,
          numericInput("score8", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total8", label = NULL, value = NA, width = "100%")
        )
        
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player9", label = NULL, placeholder = "Frog", value = "", icon = icon("frog"))
        ),
        column(
          width = 2,
          numericInput("score9", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total9", label = NULL, value = NA, width = "100%")
        )
        
      ),
      fluidRow(
        column(
          width = 3,
          offset = 0,
          textInputIcon("player10", label = NULL, placeholder = "Cow", value = "", icon = icon("cow"))
        ),
        column(
          width = 2,
          numericInput("score10", label = NULL, value = NA)
        ),
        column(
          width = 2,
          numericInput("total10", label = NULL, value = NA, width = "100%")
        )
        
      ),
      
      shinyjs::useShinyjs()
    )))


server = function(input, output, session) {
  shinytitle::change_window_title(session, title = "YuScore")
  
  observeEvent(input$userManual,{
    
    shinyjs::show(id = "userManualText")
    
    output$userManualText = renderText({
      br()
      user_manual
    })
    
    output$hideUserManual = renderUI({
      br()
      fluidRow(
        column(width = 4,
               offset = 2,
               actionButton("hideUserManualButton", "Close User manual", 
                            icon = icon("book"),
                            style = "background:#b366ff;color:#404040;margin-top:10px")
        ))
    })
    
  })
  
  observeEvent(input$hideUserManualButton, {
    shinyjs::hide(id = "userManualText")
    shinyjs::hide(id = "hideUserManualButton")
    
  })
  
  observeEvent(input$delete,{
    output$confirmDeletion = renderUI({
      actionButton("deleteConfirmButton", "Confirm Deletion", icon = icon("trash"))
    })
  })
  
  
  #### New Game confirm/cancel Server ----
  observeEvent(input$newGame,{
    output$newGameConfirm = renderUI({
      actionButton("newGameConfirmButton", "Confirm",icon = icon("check-double"),
                   style = "background:#1affb2;color:white; margin-top:25px;")
    })
    
    output$newGameCancel = renderUI({
      actionButton("newGameCancelButton", "Cancel",icon = icon("xmark"),
                   style = "background:#ff6666;color:white; margin-top:25px;")
    })
    
    shinyjs::show(id = "newGameConfirmButton")
    shinyjs::show(id = "newGameCancelButton")
  })
  
  observeEvent(input$newGameCancelButton,{
    shinyjs::hide(id = "newGameConfirmButton")
    shinyjs::hide(id = "newGameCancelButton")
  })
  
  observeEvent(input$newGameConfirmButton,{
    data = data.frame(matrix(ncol = 10, nrow = 0))
    data = rbind(data, c(0,0,0,0,0,0,0,0,0,0))
    colnames(data) = c("Player_1", "Player_2", "Player_3", "Player_4",
                       "Player_5","Player_6","Player_7", "Player_8",
                       "Player_9", "Player_10")
    
    updateNumericInput(inputId = "total1",
                       value = sum(data$Player_1))
    updateNumericInput(inputId = "total2",
                       value = sum(data$Player_2))
    updateNumericInput(inputId = "total3",
                       value = sum(data$Player_3))
    updateNumericInput(inputId = "total4",
                       value = sum(data$Player_4))
    updateNumericInput(inputId = "total5",
                       value = sum(data$Player_5))
    updateNumericInput(inputId = "total6",
                       value = sum(data$Player_6))
    updateNumericInput(inputId = "total7",
                       value = sum(data$Player_7))
    updateNumericInput(inputId = "total8",
                       value = sum(data$Player_8))
    updateNumericInput(inputId = "total9",
                       value = sum(data$Player_9))
    updateNumericInput(inputId = "total10",
                       value = sum(data$Player_10))
    
    write.csv(data, paste0(wd,"Score.txt"), row.names = F)
    shinyalert("Success", "You have created new Score record !", type = "success")
    
    shinyjs::hide(id = "newGameConfirmButton")
    shinyjs::hide(id = "newGameCancelButton")
  })
  
  observeEvent(input$save,{
    data = read.csv(paste0(wd,"Score.txt"))
    pl1 = input$score1
    pl2 = input$score2
    pl3 = input$score3
    pl4 = input$score4
    pl5 = input$score5
    pl6 = input$score6
    pl7 = input$score7
    pl8 = input$score8
    pl9 = input$score9
    pl10 = input$score10
    
    record = c(pl1,pl2,pl3,pl4, pl5, pl6, pl7, pl8, pl9, pl10)
    data = rbind(data,record)
    
    updateNumericInput(inputId = "total1",
                       value = sum(data$Player_1))
    updateNumericInput(inputId = "total2",
                       value = sum(data$Player_2))
    updateNumericInput(inputId = "total3",
                       value = sum(data$Player_3))
    updateNumericInput(inputId = "total4",
                       value = sum(data$Player_4))
    updateNumericInput(inputId = "total5",
                       value = sum(data$Player_5))
    updateNumericInput(inputId = "total6",
                       value = sum(data$Player_6))
    updateNumericInput(inputId = "total7",
                       value = sum(data$Player_7))
    updateNumericInput(inputId = "total8",
                       value = sum(data$Player_8))
    updateNumericInput(inputId = "total9",
                       value = sum(data$Player_9))
    updateNumericInput(inputId = "total10",
                       value = sum(data$Player_10))
    
    write.csv(data, paste0(wd,"Score.txt"), row.names = F)
    shinyalert("Success", "You have saved the Score !", type = "success")
    
  })
  
  #### Undo confirm/cancel Server ----
  
  observeEvent(input$undo,{
    output$undoConfirm = renderUI({
      actionButton("undoConfirmButton", "Confirm",icon = icon("check-double"),
                   style = "background:#1affb2;color:white;")
    })
    
    output$undoCancel = renderUI({
      actionButton("undoCancelButton", "Cancel",icon = icon("xmark"),
                   style = "background:#ff6666;color:white;")
    })
    
    shinyjs::show(id = "undoConfirmButton")
    shinyjs::show(id = "undoCancelButton")
  })
  
  observeEvent(input$undoCancelButton,{
    shinyjs::hide(id = "undoConfirmButton")
    shinyjs::hide(id = "undoCancelButton")
  })
  
  observeEvent(input$undoConfirmButton,{
    data = read.csv(paste0(wd,"Score.txt"))
    if(nrow(data)==1){
      shinyalert("Alert", "You have no more Scores !", type = "error")
    } else  {
      data = data[-nrow(data),]
      
      updateNumericInput(inputId = "total1",
                         value = sum(data$Player_1))
      updateNumericInput(inputId = "total2",
                         value = sum(data$Player_2))
      updateNumericInput(inputId = "total3",
                         value = sum(data$Player_3))
      updateNumericInput(inputId = "total4",
                         value = sum(data$Player_4))
      updateNumericInput(inputId = "total5",
                         value = sum(data$Player_5))
      updateNumericInput(inputId = "total6",
                         value = sum(data$Player_6))
      updateNumericInput(inputId = "total7",
                         value = sum(data$Player_7))
      updateNumericInput(inputId = "total8",
                         value = sum(data$Player_8))
      updateNumericInput(inputId = "total9",
                         value = sum(data$Player_9))
      updateNumericInput(inputId = "total10",
                         value = sum(data$Player_10))
      
      write.csv(data, paste0(wd,"Score.txt"), row.names = F)
      shinyalert("Success", "Last Score record removed !",type = "success")
    }
    
    shinyjs::hide(id = "undoConfirmButton")
    shinyjs::hide(id = "undoCancelButton")
  })
  
  observeEvent(input$showMax,{
    data = read.csv(paste0(wd,"Score.txt"))
    if(nrow(data) == 1) shinyalert("Alert", "Score record is Empty!", type = "error")
    else {
      colsum = colSums(data)
      clean_colsum = unname(colsum)
      names = c(input$player1, input$player2, input$player3, input$player4,
                input$player5, input$player6, input$player7, input$player8,
                input$player9, input$player10)
      
      renamed_sum = setNames(clean_colsum, names)
      
      indexes = which(renamed_sum == max(renamed_sum,na.rm = T))
      if(max(clean_colsum, na.rm = T) == Inf | max(clean_colsum, na.rm = T) == -Inf)  
        shinyalert("Alert", "Score record is Empty!", type = "error")
      else{ 
        if(length(indexes) != 1) {
          shinyalert(
            "Maximum Points",
            paste(paste0(names(indexes), collapse = ", "),"have Max of", max(clean_colsum, na.rm = T), "points"), 
            type = "success")
        } else shinyalert(
          "Maximum Points",
          paste(paste0(names(indexes)), "has Max of", max(clean_colsum, na.rm = T), "points"),
          type = "success")
      }}
  })
  
  
  observeEvent(input$showMin,{
    data = read.csv(paste0(wd,"Score.txt"))
    if(nrow(data) == 1) shinyalert("Alert", "Score record is Empty!", type = "error")
    else {
      colsum = colSums(data)
      clean_colsum = unname(colsum)
      names = c(input$player1, input$player2, input$player3, input$player4,
                input$player5, input$player6, input$player7, input$player8,
                input$player9, input$player10)
      
      renamed_sum = setNames(clean_colsum, names)
      
      indexes = which(renamed_sum == min(renamed_sum,na.rm = T))
      if(min(clean_colsum, na.rm = T) == Inf | min(clean_colsum, na.rm = T) == -Inf)  
        shinyalert("Alert", "Score record is Empty!", type = "error")
      else {
        if(length(indexes) != 1) {
          shinyalert(
            "Minimum Points",
            paste(paste0(names(indexes), collapse = ", "),"have Min of", min(clean_colsum, na.rm = T), "points"), 
            type = "success")
        } else shinyalert(
          "Minimum Points",
          paste(paste0(names(indexes)), "has Min of", min(clean_colsum, na.rm = T), "points"),
          type = "success")
      }}
  })
  
}

shinyApp(ui = ui, server = server)

