# General Directories
CONFIG_DIR := ./config
DISKS_DIR := ./disks
TOOLS_DIR := ./tools
ASSETS_DIR := ./assets
VIDEOS_DIR := $(ASSETS_DIR)/videos
CHECKSUM_DIR := $(CONFIG_DIR)/checksum

# Tools Directories
BCHUNK_DIR := $(TOOLS_DIR)/bchunk
DISCASTER_DIR := $(TOOLS_DIR)/discaster
SPLITTER_DIR := $(TOOLS_DIR)/splitter

# Tools Binaries
CHECKSUM_BIN := sha1sum
BCHUNK_BIN := bchunk
DISCASTER_BIN := $(DISCASTER_DIR)/discaster
DISCANALYSE_BIN := $(DISCASTER_DIR)/discanalyze
FFMPEG_BIN := ffmpeg
SPLITTER_BIN := $(SPLITTER_DIR)/rust-dis/target/release/rust-dis

# Track Names
TRACK_1_BIN := Mega Man X4 (USA) (Track 1).bin
TRACK_2_BIN := Mega Man X4 (USA) (Track 2).bin
TRACK_3_BIN := Mega Man X4 (USA) (Track 3).bin
CUE_FILE := Mega Man X4 (USA).cue

# Extract Data
.PHONY: extract
extract: check_disks extract_iso extract_cdda cpk_to_avi

.PHONY: rebuild
rebuild: rebuild_iso

rebuild_iso: $(DISCASTER_BIN)
	$(DISCASTER_BIN) x4.dsc

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
	$(BCHUNK_BIN) -w "$(DISKS_DIR)/$(TRACK_2_BIN)" "$(DISKS_DIR)/$(CUE_FILE)" "$(DISKS_DIR)/cdda/track_"
	mv "$(DISKS_DIR)/cdda/track_03.wav" "$(DISKS_DIR)/cdda/track_02.wav"
	$(BCHUNK_BIN) -w "$(DISKS_DIR)/$(TRACK_3_BIN)" "$(DISKS_DIR)/$(CUE_FILE)" "$(DISKS_DIR)/cdda/track_"
	rm -rf "$(DISKS_DIR)/cdda/track_01.iso"

cpk_to_avi:
	mkdir -p assets/videos
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/LOGO.CPK $(VIDEOS_DIR)/LOGO.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/OP.CPK  $(VIDEOS_DIR)/OP.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/X1.CPK  $(VIDEOS_DIR)/X1.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/X2.CPK  $(VIDEOS_DIR)/X2.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/X3.CPK  $(VIDEOS_DIR)/X3.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/X4.CPK  $(VIDEOS_DIR)/X4.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/Z1.CPK  $(VIDEOS_DIR)/Z1.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/Z2.CPK  $(VIDEOS_DIR)/Z2.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/Z3.CPK  $(VIDEOS_DIR)/Z3.avi -y
	$(FFMPEG_BIN) -i $(DISKS_DIR)/files/Z4.CPK  $(VIDEOS_DIR)/Z4.avi -y

$(DISCANALYSE_BIN):
	cd $(DISCASTER_DIR) && make

$(DISCASTER_BIN):
	cd $(DISCASTER_DIR) && make