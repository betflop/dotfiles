# Переменная для файла инвентаря
INVENTORY := inventory.ini

# Переменная для плейбука
PLAYBOOK := playbooks/main.yml

# Цели для запуска полного плейбука или отдельных ролей с тегами
.PHONY: all zsh neovim tmux

all: 
	@ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --ask-become-pass

zsh: 
	@ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags zsh --ask-become-pass

neovim: 
	@ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags neovim --ask-become-pass

tmux: 
	@ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags tmux --ask-become-pass
