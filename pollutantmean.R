pollutantmean <- function(directory, pollutant, id = 1:332) {
    files_full <- list.files(directory, full.names=TRUE) #open full name list of files in directory
    dat<-data.frame()#create empty data frame to hold contents of directory
    for (i in id) {#loop thru directory and append contents to data frame
        dat <- rbind(dat, read.csv(files_full[i]))
    }
    
    mean(dat[,pollutant], na.rm = TRUE)#subset pollutant column (DONT FORGET COMMA), remove NA and calc mean
    
}

