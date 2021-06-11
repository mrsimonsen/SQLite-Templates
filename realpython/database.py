import sqlite3
from sqlite3 import Error

def create_connection(path):
	connention = None
	try:
		connection = sqlite3.connect(path)
		print("Connection to SQLite DB successful")
	except Error as e:
		print(f"The error '{e}' occurred")
	

	return connection

connection = create_connection("sm_app.sqlite")
