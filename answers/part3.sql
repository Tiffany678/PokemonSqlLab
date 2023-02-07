-- What is each pokemon's primary type?
    Select p.name, t.name from pokemons As p
        left join types AS t
            on t.id = p.primary_type;


--  What is Rufflet's secondary type?
    select p.name, t.name from pokemons as p
           left join types as t
                on p.secondary_type = t.id
            having p.name ='Rufflet';


--  What are the names of the pokemon that belong to the trainer with trainerID 303?
    select t.trainerId, t.trainername, p.name AS pokemonName from trainers t
           Join pokemon_trainer pt on t.trainerId = pt.trainerId
           Join pokemons p ON pt.pokemon_id = p.id
            WHERE t.trainerID =303;


--  How many pokemon have a secondary type Poison
    select count(p.name) from pokemons p
            JOIN types t ON p.secondary_type = t.id
            WHERE t.name = 'Poison';


--  What are all the primary types and how many pokemon have that type?
    Select t.name AS primary_types, count(p.id) as number_of_pokemons from types t
            JOIN pokemons p on p.primary_type = t.id
            group by t.name;

--  How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
    --(Hint: your query should not display a trainer)
    SELECT TRAINERID, COUNT(POKELEVEL)
        FROM  pokemon_trainer
         WHERE POKELEVEL=100
         GROUP BY TRAINERID;


-- How many pokemon only belong to one trainer and no other?
    select p.name, count(pt.pokemon_id)
        from pokemon_trainer pt
         Join pokemons AS p
              ON p.id = pt.pokemon_id
        group by p.name
            having count(pt.pokemon_id)=1;
