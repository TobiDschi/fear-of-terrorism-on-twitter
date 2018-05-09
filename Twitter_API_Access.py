import sys

#imports from tweepy library

from tweepy.streaming import StreamListener
from tweepy import OAuthHandler
from tweepy import Stream 

#imports from email library

from email.mime.text import MIMEText
from smtplib import SMTP

#definition of the emailing function

def email(file):
  from_address = "XXXX" #address falls under privacy details of research
  to_address = ["XXXX", "XXXX"] 
  message = "Error in the capture of tweets"
  mime_message = MIMEText(message["From"]) = from_address
  mime_message["To"] = ", ".join(to_address)
  mime_message["Subject"] = "Error in" + file
  smtp = SMTP("smtp.gmail.com", 587)
  smtp.ehlo()
  smtp.starttls()
  smtp.login(from_address, "XXXXXXX") #Password anonymized
  smtp.sendmail(from_address, to_address, mime_message.as_string())
  smtp.quit()

#definition of the hashtags to be investigated

Q = ["Barcelona", "#stopIslam", "PrayForBarcelona"]
F = "atentadoBCN.json"

#number of tweets collected

n = 0

#Variables containing user credentials to access Twitter API 

access_token = "XXXXXXXXXXXXXXXXXXXXXXXXXX" #anonymized for data security, use own credentials
access_token_secret = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
consumer_key = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
consumer_secret = "XXXXXXXXXXXXXXXXXXXXXXXXXX"

#open file

outfile = open("file/", F, "a")

#listener for printing received tweets

def on_data(self, data):
  global n
  outfile.writelines(data)
  n = int(n) + int(1)
  print("Tweet", n)
  return True
  
def on_error(self,status):
  email(F)
  
if __name__ == '__main__': #handles Twitter authentication and connection to Twitters Streaming API
  I = StdOutListener()
  auth = OAuthHandler(consumer_key, consumer_secret)
  auth.set_access_token(access_token, access_token_secret)
  stream = Stream(auth, I)
  try: # this section filters the Twitter Streams to capture data by keywords and handles corersponding exceptions. 
    stream.filter(track = Q)
    except Exception:
      email(F)
      except requests.packages.urllib3.exceptions.ReadTimeroutError:
      email(F)
      except AttributeError:
      email(F)
