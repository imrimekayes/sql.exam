from db import run_query_select, run_update_query

def all_movies():
    movies = run_query_select("SELECT * FROM movies")
    return movies

def find_movie(movie_name):
    movies = run_query_select("SELECT * FROM movies WHERE movie_name like ?",f"%{movie_name}%",)
    return movies

def insert_movie(id, movie_name, genre ,country ,language, year , revenue):
    movies = """INSERT INTO movies (id, movie_name, genre ,country ,language, year , revenue)
             VALUES (?, ?, ?, ?, ?, ?, ?)"""
    run_update_query(movies,(id, movie_name, genre, country, language, year, revenue))
    return movies
