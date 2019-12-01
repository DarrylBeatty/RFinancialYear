library(lubridate)


FinYear <- function(FinDate) {
  
  FinDate <- ymd(FinDate)
  
  SecondYear <- year(FinDate) + (month(FinDate) >= 6)
  
  FirstYear <- year(FinDate) - (month(FinDate) < 7)
    
  paste0('FY ',FirstYear,'-',SecondYear)  
}




FinYear('2019/09/01')
FinYear('2019/05/01')
FinYear('2020/05/01')
FinYear('2020/07/01')
FinYear('2019/07/01')
