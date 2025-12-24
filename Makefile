GHOST_DIR := $(CURDIR)/../.ghost-joypm
THEME_NAME := joypm
MISE := mise exec node@22 --

.PHONY: dev stop restart validate clean

dev: $(GHOST_DIR)/content/themes
	@if [ ! -L "$(GHOST_DIR)/content/themes/$(THEME_NAME)" ]; then \
		ln -s "$(CURDIR)" "$(GHOST_DIR)/content/themes/$(THEME_NAME)"; \
	fi
	cd $(GHOST_DIR) && $(MISE) ghost start || true
	@echo ""
	@echo "Site:  http://localhost:2368"
	@echo "Admin: http://localhost:2368/ghost"
	@echo ""
	@echo "Activate the '$(THEME_NAME)' theme in Ghost Admin > Settings > Design"

$(GHOST_DIR)/content/themes:
	$(MISE) npm install ghost-cli@latest -g
	rm -rf $(GHOST_DIR)
	mkdir -p $(GHOST_DIR)
	cd $(GHOST_DIR) && $(MISE) ghost install local

stop:
	cd $(GHOST_DIR) && $(MISE) ghost stop

restart:
	cd $(GHOST_DIR) && $(MISE) ghost restart

validate:
	npx gscan .

clean:
	@if [ -d "$(GHOST_DIR)" ]; then \
		cd $(GHOST_DIR) && $(MISE) ghost stop 2>/dev/null || true; \
		rm -rf $(GHOST_DIR); \
	fi
