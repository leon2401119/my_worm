all: Launching_Attack Launching_Attack_Backup Flooding_Attack
Launching_Attack: Launching_Attack.c
	gcc Launching_Attack.c -o Launching_Attack
Launching_Attack_Backup: Launching_Attack_Backup.c
	gcc Launching_Attack_Backup.c -o Launching_Attack_Backup
Flooding_Attack: Flooding_Attack.c
	gcc Flooding_Attack.c -o Flooding_Attack
clean:
	rm -rf Launching_Attack Launching_Attack_Backup Flooding_Attack
