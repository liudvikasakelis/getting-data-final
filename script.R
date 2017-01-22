source("quicklib.R")

cnames <- read.table("features.txt", as.is=T)$V2 # read our col.names 
cnames <- sapply(cnames, tidyName, USE.NAMES = FALSE) # tidy up said names

test_data <- read.table("test/X_test.txt", col.names = cnames)
test_subjects <- read.table("test/subject_test.txt")$V1
test_activities <- read.table("test/y_test.txt")$V1
test_activities <- sapply(test_activities, renameActivity, USE.NAMES = FALSE)
test_data$activity <- test_activities
test_data$subject <- test_subjects

train_data <- read.table("train/X_train.txt", col.names = cnames)
train_subjects <- read.table("train/subject_train.txt")$V1
train_activities <- read.table("train/y_train.txt")$V1
train_activities <- sapply(train_activities, renameActivity, USE.NAMES = FALSE)
train_data$activity <- train_activities
train_data$subject <- train_subjects

fdata <- rbind(train_data, test_data)

p <- grepl("std|mean|activit|subject", names(fdata)) # yup

edata <- fdata[,p] # only mean and std measurements (+subjects and activities)

ndata <- data.frame()
for(subj in sort(unique(edata$subject))){
    for(activ in sort(unique(edata$activity))){
        ndata <- rbind(ndata, getmeans(subj, activ))
        ndata$activity <- as.character(ndata$activity) 
    }
}

write.table(ndata, file="tidyset.txt", row.names=FALSE)

