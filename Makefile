index.html: talk.md
	python refreeze/freeze.py

test:
	nosetests -vx --with-doctest --doctest-extension=md talk.md

RANDOM_PORT=8281

slideshow:
	PORT= python refreeze/flask_app.py
