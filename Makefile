TOOLS_DIR = ./tools
TOOLS_TARGETS = discaster

.PHONY: saturn
saturn: install_tools

.PHONY: install_tools
install_tools:
	for dir in $(TOOLS_TARGETS); do \
	 	$(MAKE) -C $(TOOLS_DIR)/$$dir; \
	done