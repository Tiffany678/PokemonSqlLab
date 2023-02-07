--  What are all the types of pokemon that a pokemon can have?
Select * from types;

-- What is the name of the pokemon with id 45?
Select * from pokemons where id= 45;

-- How many pokemon are there?
Select count(id) from pokemons;

-- How many types are there?
Select count(id) from types;

-- How many pokemon have a secondary type?
Select count(ID) from pokemons where secondary_type is not null;