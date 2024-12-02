# Preliminary EDA of Distribution of Images in Each Group and dataset


# Whole Dataset
d = cbind(c('None','Very Mild','Mild','Moderate'),c(2767,2518,2264,2217))
colnames(d) = c('severity','number')
df = data.frame(d)
df2<- df%>%mutate(severity=factor(df$severity,levels=c('None','Very Mild','Mild','Moderate')))

ggplot(df2,aes(x=severity,y=number,fill=severity))+
  geom_bar(stat='identity')+
  labs(title='Number of Images by Classification Group (whole dataset)', 
       x="Severity of Alzheimer's", y="Count")+
  theme(legend.position="none")

# Train Dataset
train = cbind(c('None','Very Mild','Mild','Moderate'),c(2208,2135,2114,2206))
colnames(train) = c('severity','number')
t2 = data.frame(train)%>%mutate(severity=factor(df$severity,
                                                levels=c('None','Very Mild',
                                                         'Mild','Moderate')))

ggplot(t2,aes(x=severity,y=number,fill=severity))+
  geom_bar(stat='identity')+
  labs(title='Number of Images by Classification Group (train dataset)', 
       x="Severity of Alzheimer's", y="Count")+
  theme(legend.position="none")+
  scale_fill_brewer(palette='Set1')

# Test Dataset
test = data.frame(cbind(c('None','Very Mild','Mild','Moderate'),c(559,383,150,11)))
colnames(test) = c('severity','number')
ts = test%>%mutate(severity=factor(df$severity,levels=c('None','Very Mild','Mild','Moderate')))
ggplot(ts,aes(x=severity,y=number,fill=severity))+
  geom_bar(stat='identity')+
  labs(title='Number of Images by Classification Group (test dataset)', 
       x="Severity of Alzheimer's", y="Count")+theme(legend.position="none")+
  scale_fill_brewer(palette='Set2')

