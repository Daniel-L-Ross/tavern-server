import sqlite3
import json
from models import Player

def get_all_players():
    with sqlite3.connect("tavern.db") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            p.id, 
            p.first_name, 
            p.last_name, 
            p.team_id
        FROM player p
        """)

        players = []

        dataset = db_cursor.fetchall()

        for row in dataset:
            player = Player(row['id'], row['first_name'],
                            row['last_name'], row['team_id'])
            players.append(player.__dict__)

        return json.dumps(players)