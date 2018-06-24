#
# #
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
# 
# Overview:

# This app will calculate Equated Monthly Instalments (EMI) for user selcted 
# loan amount,intrest rate and tenure in months. 
# It provides interactive graphics to show components of intrest and principle
# in the overall payment to be made. User can optimise the EMI, and total payout
# by working on tenure and intrest rates from different banks. 
#    
#

library(shiny)
library(rsconnect)
# Define UI for EMI Calc app ----
shinyUI(fluidPage(
  
  # App title ----
  titlePanel("EMI calculator"),
  
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar to demonstrate various slider requirements ----
    sidebarPanel(
      
      # Input: Simple integer interval for loan amount----
      numericInput("loan", "Loan Amount:",
                   min = 0, max = 1000000,
                   value = 50000,step=1000),
      
      # Input: Decimal interval with step value for intrest rate per annum ----
      sliderInput("interest", "Interest Rate(pa):",
                  min = 0, max = 15,
                  value = 12, step = 0.05),
      
      # Input: integer interval with step value for Tenure of loan in months ----
      sliderInput("mon", "No. of months :",
                  min = 0, max = 100,
                  value = 36, step = 1),
      
      checkboxInput("show_title","SHOW/HIDE Title")
      
      
    ),
    
    mainPanel(
      h3("EMI:" ),    textOutput("EMI"),
      h3("LOAN Amount:" ),    textOutput("LOAN"),
      h3("Total Interest:" ),    textOutput("INT"),
      plotOutput("plot1")
    )
  )
))

