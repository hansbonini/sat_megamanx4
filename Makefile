# General Directories
CONFIG_DIR := ./config
DISKS_DIR := ./disks
TOOLS_DIR := ./tools
CHECKSUM_DIR := $(CONFIG_DIR)/checksum

# Tools Directories
BCHUNK_DIR := $(TOOLS_DIR)/bchunk
DISCASTER_DIR := $(TOOLS_DIR)/discaster
SPLITTER_DIR := $(TOOLS_DIR)/splitter

# Tools Binaries
CHECKSUM_BIN := sha1sum
BCHUNK_BIN := $(BCHUNK_DIR)/bchunk
DISCASTER_BIN := $(DISCASTER_DIR)/discaster
DISCANALYSE_BIN := $(DISCASTER_DIR)/discanalyze
SPLITTER_BIN := $(SPLITTER_DIR)/rust-dis/target/release/rust-dis

# Track Names
TRACK_1_BIN := Mega Man X4 (USA) (Track 1).bin
CUE_FILE := Mega Man X4 (USA).cue

# Extract Data
.PHONY: extract
extract: check_disks extract_iso extract_cdda

check_disks:
	$(info Validating disks checksum...)
	$(shell $(CHECKSUM_BIN) --check $(CHECKSUM_DIR)/disks.sha > /dev/null)
	@if [ $(.SHELLSTATUS) -ne 0 ]; then \
		echo "Invalid Checksum!"; \
		exit 1; \
	else \
		echo "Checksum is Valid!"; \
	fi

extract_iso: $(DISCANALYSE_BIN)
	$(DISCANALYSE_BIN) "$(DISKS_DIR)/$(TRACK_1_BIN)" $(DISKS_DIR)

extract_cdda:
	mkdir -p $(DISKS_DIR)/cdda
	bchunk -w "$(DISKS_DIR)/$(TRACK_1_BIN)" "$(DISKS_DIR)/$(CUE_FILE)" "$(DISKS_DIR)/cdda/track_"
	rm -rf "$(DISKS_DIR)/cdda/track_01.iso"

$(DISCANALYSE_BIN):
	cd $(DISCASTER_DIR) && make