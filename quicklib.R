tidyName <- function(x){
    x <- gsub("[-() ,]", "", x)
    x <- gsub("\\.", "", x)
    x <- tolower(x)
    return(x)
}

renameActivity <- function(x){
    switch(x,
           "walking",
           "walkingdownstairs",
           "walkingupstairs",
           "sitting",
           "standing",
           "laying")
}

samean <- function(subj, activ, feat){ # sorry about this next line
    return(mean(edata[edata$subject==subj&edata$activity==activ,][[feat]]))
}

getmeans <- function(subj, activ){
    ret <- list()
    ret$subject <- subj
    ret$activity <- activ
    for(feat in names(edata[1:86])){ 
        ret[[feat]] <- samean(subj, activ, feat) 
    }
    return(ret)
}


