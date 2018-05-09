# fear-of-terrorism-on-twitter
We propose an emotion detection in text approach to measure the propensity of tweets to elicit fear of terrorism in the community

# Header

### title: Readme
### authors: Tobias Gretenkort°, Francisco Javier Castro Toledo*, Miriam Esteve*, Fernando Miró*
### affiliations: ° RWTH Aachen University, Department for English, American and Romance Studies
###               \* Universidad Rafael Hernández (Elche, ES), Centro CRIMINA
           

# Readme

This *readme* file is to inform on the utility of our analysis and information provided. Special attention is paid to the proteccion of both participants' and Twitter users' personal data. 

## Contained Files

Our analysis consists of the following datafiles

> 1. Twitter_API_Access.py
> 2. Data_Setup.R
> 3. Datset_Calculation.R
> 4. Demographics_Analysis.R
> 5. Rating_Illustration_across_Tweets.R
> 6. Statistical_Modelling_and_Visualization.R
> 7. Readme.md
> 8. Confidentiality Agreement.docx

# Data Protection

## Legal basis

According to the General Data Protection Regulation (henceforth GDPR) valid (April 14th, 2016) and enforceable in the European Union (EU) as of May 25th, 2018, the processing of personalized or potentially personalized data is prohibited, unless affected persons express their consent or the regulation permits the processing of data otherwise. 

Users of Twitter do subscribe to Twitter's data protection agreement, which grants permission to process data on the grounds of justified interests (Article 6.1) especially in a scientific context (Articles 85, 89). The further publication of this data, however, is not justifiable since "pseudonymisation" (in the sense of Article 4.5) is not techincally possible. Linguistic material that was recompiled from Twitter, can, by virtue of containing a linguistic expression, be traced back to its author without costly expenses in ressources or time.

Since Chapter 9 (Articles 85 through 91) does not justify to compromise Article 11.1 of the Charter of Fundamental Rights of the European Union which grants freedom of expression and the right to hold opinions without interference by public authority (or other parties), we estimate that the free publication of our dataset might compromise the rights of users. This is because some of the analysed material does allow for the attribution of politcal opinions to their authors. Publication of these opinions on Twitter does **not** entail the right for third parties to further distribute these opinions and target the authors.

## Access to our datasets

Due to the above stated considerations, we will refrain ourselves from publishing out dataset freely on any freely accessible webserver, independently of their level of security.

Researchers that claim to have justified interest in our dataset in the sense of GDPR Article 6.1 (including but not limited to: Peer-reviewers, reproduction study conductors, academic teachers, students in the field, etc.) can request the dataset under the condition that they sign a confidentiality agreement. This confidentiality agreement does, of course, not forbid researchers from making any scientific claims regarding the dataset, but to mention or publish any of the contained tweets. 

We estimate that this practise provides the most reasonable balance between reproducibility and data protection. 

# Analysis replication

Using the files in order should make a replication of analyses possible.

1. File number 1, "Twitter_API_Access.py", serves to recompile tweets from Twitter, but does not contain our credentials for the access to the Streaming API on Twitter. Replication studies are required to either (a) collect the data with their own credentials or (b) request our dataset under the condition of confidentiality.

2. File number 2, "Data_Setup.R", is used to setup the different dataframes that are made use of in order to run and replicate the study. Different data frames with different properties had to be established for further analysis. Reference is coherent throuhg all files. 

3. File 3, "Datase_Caculation.R", is used to make the actual calculations on the data. This code also contains the computerized analysis of the linguistic material and attributed emotional values to tweets in accordance to the words found in them and correpsonding values in the norms (Stadthagen-Gonzales & al. 2017)

4. File 4, "Demographics_Analysis.R", replicates the analysis on demographic data in the study

5. File 5, "Rating_Illustration_across_Tweets.R", illustrates the ratings of our participants in their assessment of the propensity of Tweets to impact on the feeling of security of a potential reader. This is calculated across Tweets in ascending order. The means are normally distributed. 

6. File 6, "Statistical_Modelling_and_Visualization.R", replicates the reported statistical models and visualizations as reported in the study article. 

7. File 7, "Readme.md", explains how replication can be done on the basis of the supplied code. 

8. File 8, "Confidentialiy Agreement.docx" is only of interest, if you want to request the dataset containing personalized data that was processed during the investigation from the authors. On the technical front, the document serves no purpose. 

