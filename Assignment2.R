##Assignment2-Qingzhu

##先设定路径并确定路径内有文件
getwd()
mypath = "D:/assignment_idaccuracy/Aminer"
setwd(mypath)
file.exists(mypath) 

install.packages('readr')
library(readr)
dir()
merged_data <- data.frame()
file_list <- list.files(mypath, full.names = TRUE)

for (file in file_list) {
  data <- read.csv(file)  
  merged_data <- rbind(merged_data, data) 
}
write.csv(merged_data, "merged_data.csv", row.names = FALSE)

merged_data <- data.frame()
merged_data <- do.call(rbind, lapply(file_list, read.csv))
write.csv(merged_data, "merged_data.csv", row.names = FALSE)

###合成的文件表头为乱码？！
