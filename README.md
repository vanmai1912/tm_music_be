# KLTN_music_be

Setup Project

Step 1: clone repository
run: https://github.com/vanmai1912/KLTN_music_be.git

Step 2: switch branch
run: git checkout master-2

Step 3: run docker 
run: docker compose up --build

Step 4: run migrate, import data
run: docker compose exec -it web bash
run: rails db:migrate
run: rails db:seed 

Step 5: Open chrome
Open: localhost:3000/
