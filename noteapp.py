import bottle
import pymongo
import book


@bottle.route('/')
def book_index():
	mynames_list = book.find_names()
	return bottle.template('index', dict(mynames = mynames_list))


@bottle.route('/newguest', method='POST')
def insert_newguest():
	name = bottle.request.forms.get("name")
	email = bottle.request.forms.get("email")
	book.insert_name(name,email)
	bottle.redirect('/')


connection_string = "mongodb://localhost"

connection = pymongo.MongoClient(connection_string)

database = connection.names

book = book.book(database)

bottle.debug(True)
bottle.run(host='localhost', port=8082)