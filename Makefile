# Directories
CONFIG_DIR := ./config
TOOLS_DIR := ./tools
CHECKSUM_DIR := $(CONFIG_DIR)/checksum

# Tools
CHECKSUM_BIN := sha1sum
DISCASTER_DIR := $(TOOLS_DIR)/discaster
DISCASTER_BIN := $(TOOLS_DIR)/discaster/discaster
SPLITTER_DIR := $(TOOLS_DIR)/splitter
SPLITTER_BIN := $(TOOLS_DIR)/rust-dis/target/release/rust-dis

.PHONY: saturn
saturn: check_saturn

check_saturn:
	$(info Validating disks checksum...)
	$(shell $(CHECKSUM_BIN) --check $(CHECKSUM_DIR)/disks.sha > /dev/null)
	@if [ $(.SHELLSTATUS) -ne 0 ]; then \
		echo "Invalid Checksum!"; \
		exit 1; \
	else \
		echo "Checksum is Valid!"; \
	fi