#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Calculations are performed to compute EMI, Interest and Principle:
# Provides out in form of EMI values, Overall Interest amount and principle
#    

library(shiny)
library(rsconnect)
library(plotrix)

# Define server logic required to compute EMI, Interest

shinyServer(function(input, output) {
  emicalc<- reactive({
    interest1<-input$interest
    mon1<-input$mon
    loan1<-input$loan
    int1<-(interest1/(1200))
    emi1<-(loan1*int1)
    emi2<-((1+int1)^mon1)
    emi5<-emi1*emi2
    emi3<-(1+int1)
    emi4<-(emi3)^(mon1)-1
    emi<-emi5/emi4
    
  })
  # print output values of EMI
  output$EMI <- renderText({
    emicalc()
  })
  # Compute intrest and output values of Intrest
  output$INT <- renderText({
    (emicalc()*input$mon)-(input$loan)
  })
  #Output values of loan amount
  output$LOAN <- renderText({
    input$loan
  })
  # Plot the pie chart to show components of intrest and principle
  output$plot1<-renderPlot({
    int2<-reactive({
      mon1<-input$mon
      loan1<-input$loan
      int<-(emicalc*mon1)-loan1
      int<-as.integer(int)
    })
    loan2<-reactive({loan1<-input$loan
    loan1<-as.integer(loan1)
    })
    slices<-c(emicalc()*input$mon-input$loan,input$loan)
    lbls<-c("INTEREST","PRINCIPLE")
    pie3D(slices, labels=lbls,explode = 0.3 ,main="Distribution of total Payout")
    
    
  })
  
}
)

