-- Directions: Write a query that returns the following collumns:

-- Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type

-- strongest pokemon is defined by its maxhp, attack, defense

SELECT P.NAME 'Pokemon Name',TR.TRAINERNAME 'Trainer Name',PR.POKELEVEL 'Level',T1.NAME 'Primary Type',T2.NAME 'Secondary Type'
    FROM POKEMON_TRAINER PR
        JOIN POKEMONS P ON PR.POKEMON_ID=P.ID
        JOIN TRAINERS TR ON TR.TRAINERID=PR.TRAINERID
        JOIN TYPES T1 ON T1.ID=P.PRIMARY_TYPE
        JOIN TYPES T2 ON T2.ID=P.SECONDARY_TYPE
        ORDER BY PR.ATTACK DESC,PR.DEFENSE DESC,PR.MAXHP DESC;