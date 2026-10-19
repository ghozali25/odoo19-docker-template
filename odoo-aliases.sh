# ===== Alias Docker Odoo 19 =====
# Tempel isi file ini ke ~/.zshrc atau ~/.bashrc, sesuaikan path
# docker-compose.yml di baris export, lalu jalankan: source ~/.zshrc
# (atau buka terminal baru).

export ODOO19_COMPOSE="/mnt/storage/odoo19/docker-compose.yml"

alias odoo19-start='docker compose -f $ODOO19_COMPOSE start odoo'
alias odoo19-stop='docker compose -f $ODOO19_COMPOSE stop odoo'
alias odoo19-restart='docker compose -f $ODOO19_COMPOSE restart odoo'
alias odoo19-status='docker compose -f $ODOO19_COMPOSE ps'
alias odoo19-logs='docker compose -f $ODOO19_COMPOSE logs --tail=100 odoo'
alias odoo19-logsf='docker compose -f $ODOO19_COMPOSE logs -f odoo'
alias odoo19-up='docker compose -f $ODOO19_COMPOSE up -d'
alias odoo19-down='docker compose -f $ODOO19_COMPOSE down'
alias odoo19-rebuild='docker compose -f $ODOO19_COMPOSE up -d --build'

# User psql di bawah mengikuti POSTGRES_USER di .env (default odoo19).
alias odoo19-db='docker exec -it odoo19-db psql -U odoo19 -d postgres'
alias odoo19-shell='docker exec -it odoo19 bash'
