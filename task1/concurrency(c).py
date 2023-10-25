# Decorators and Metaprogramming: create a Python decorator that logs the execution time of a function.

# Import request from lib if you have not install then install from cmd Pip install request
import requests

# Import time from lib 
import time

def download_site(url, session):
    with session.get(url) as response:
        print(f"Read {len(response.content)} from {url}")

def download_all_sites(sites):
    with requests.Session() as session:
        for url in sites:
            download_site(url, session)

if __name__ == "__main__":
    sites = [
        "https://teamcolorcodes.com/ncaa-color-codes/aac/",         #use this url from our task
        "http://olympus.realpython.org/dice",                      #USE this url from online 
    ] * 5
    
# Import time from lib 
    start_time = time.time()                        #starttime
    download_all_sites(sites)
    duration = time.time() - start_time             #diffrence
    print(f"Downloaded {len(sites)} in {duration} seconds")
