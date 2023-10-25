# Import request from lib if you have not install then install from cmd Pip install request
import requests
#from bs4 import BeautifulSoup (you have to download Beautifulsoup)
from bs4 import BeautifulSoup
# download mysql connectorand import connector
import mysql.connector


# URL of the webpage you want to scrape
# url = "https://teamcolorcodes.com/ncaa-color-codes/aac/"

# # Send an HTTP GET request to the URL
# response = requests.get(url)

# # Check if the request was successful (status code 200)
# if response.status_code == 200:
#     # Parse the HTML content of the page using BeautifulSoup
#     soup = BeautifulSoup(response.text, 'html.parser')
    
#     # Find the HTML elements that have the class "apply team-button"
#     team_button_elements = soup.find_all('a', class_='team-button')
    
#     # print(team_button_elements)
#     # Iterate through the elements and extract the inline background-color style
#     for element in team_button_elements:
#         background_color = element.get('style')
#         print(f'Background Color: {background_color}\n')
# else:
#     print(f"Failed to retrieve the webpage. Status code: {response.status_code}")

data_DB=mysql.connector.connect(user='root',
                            password='8487063657',
                            host='localhost',
                            database='steps')               # conect to database


cursor = data_DB.cursor()               

create_table_query = "CREATE TABLE color (name VARCHAR(255) NOT NULL,color VARCHAR(255) NOT NULL)"   #Create a coloam  in database table
cursor.execute(create_table_query)
print(cursor)

#URL for color code
URL_path="https://teamcolorcodes.com/ncaa-color-codes/aac/"

data=requests.get(URL_path)
soup=BeautifulSoup(data.content,"html.parser")
data_element=soup.find_all("a",class_="team-button")
for data in data_element:
    name=data.text
    color=data.get('style')
    insert_query = "INSERT INTO color(name,color)VALUES (%s, %s)"
    cursor.execute(insert_query,(name,color))
    data_DB.commit()
data_DB.close()   