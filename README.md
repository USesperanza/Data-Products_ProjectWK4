# Data-Products_ProjectWK4
Course Era Project Work for Week 4   
# Overview:

# This app will calculate Equated Monthly Instalments (EMI) for user selcted 
# loan amount,intrest rate and tenure in months. 
# It provides interactive graphics to show components of intrest and principle
# in the overall payment to be made. User can optimise the EMI, and total payout
# by working on tenure and intrest rates from different banks.

# Inputs for computation of EMI:
1.0 The User is required to provide input Loan value under "Loan Amount" input take. The values can be incremented by 1000 by clicking the up and down arrrow. The User can also enter the Numeric value directly between 0-1000000.

2.0 The User can select value for Interest rate by use of slider from 0-15 % in steps of 0.05. The intrest value to be selected as per the bank rate, that is usually mentioned as % per annum. 

3.0 The User can select value for tenure of loan by sliding the slider between 0-100 months. in case you have the tenure in years, the input shall be provided by multiplying year with 12. Months = years * 12.

# Ouputs from App

1.0 The Value of EMI is indicated against wording "EMI" on the main Panel

2.0 The Value of loan amount is indicated to reconfirm the user the value of Loan considered for calculation.

3.0 The total interest payable for the entire tenure and loan amount is also disaplyed to provide user extra amount he would pay for the loan availed by him.

4.0 The chart at the bottom of the main panel shows bifurcation of priciple and interest in the form of a 3D pie chart. 

The values of EMI, Loan,  total Interest and the pie chart are reactive to changes in the input value.

# Calculation of EMI and mathematical Formuale used in the App
You can calculate your EMI by using a piece of software called Microsoft Excel or a mathematical formula.

1.0 USING EXCEL
One of the easiest ways of calculating the EMI is by using the Excel spreadsheet. In Excel, the function for calculating the EMI is PMT and not EMI. You need three variables. These are rate of interest (rate), number of periods (nper) and, lastly, the value of the loan or present value (pv).

The formula which you can use in excel is:

=PMT(rate,nper,pv).

Let us check the EMI of Suraj by using the above formula.

It must be noted that the rate used in the formula should be the monthly rate, that is, 12%/12=1% or 0.01.

The number of periods represents the number of EMIs.

=PMT(0.12/12, 4*12, 445,000)= 11,718

The result will come in negative or red, which indicates the cash outflow of the borrower.

Let's take another example. Suppose you are paying a quarterly instalment on a loan of Rs 10 lakh at 10% interest per annum for 20 years. In such a case, instead of 12, you should divide the rate by four and multiply the number of years by four. The equated quarterly instalment for the given figures will be =PMT(10%/4, 20*4, 10,00,000).

2.0 USING MATHEMATICAL FORMULA
Unfortunately, you cannot access the Excel spreadsheet everywhere. In such a case, you can use your mathematical mind or an electronic calculator to know how much the EMI comes to. The mathematical formula for calculating EMIs is:

EMI = [P x R x (1+R)^N]/[(1+R)^N-1], where P stands for the loan amount or principal, R is the interest rate per month [if the interest rate per annum is 11%, then the rate of interest will be 11/(12 x 100)], and N is the number of monthly instalments. When you use the above formula, you will get the same result that you will get in the Excel spreadsheet.
