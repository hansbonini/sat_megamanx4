IsoPrimaryVolumeDescriptor pDesc
pDesc.systemIdentifier = "SEGA SEGASATURN"
pDesc.volumeIdentifier = "MEGAMAN_X4"
pDesc.volumeSetIdentifier = "MEGAMAN_X4"
pDesc.publisherIdentifier = "CAPCOM CO.,LTD."
pDesc.dataPreparerIdentifier = "CAPCOM CO.,LTD."
pDesc.applicationIdentifier = ""
pDesc.copyrightFileIdentifier = "MX4_CPY.TXT"
pDesc.abstractFileIdentifier = "MX4_ABS.TXT"
pDesc.bibliographicFileIdentifier = "MX4_BIB.TXT"
pDesc.volumeCreationTime = "1997090117232200\20"
pDesc.volumeModificationTime = "1997090117232200\20"
pDesc.volumeExpirationTime = "0000000000000000\0"
pDesc.volumeEffectiveTime = "0000000000000000\0"

IsoFilesystem isoFs
isoFs.setFormat("CDROM")
isoFs.setRawSectorSystemArea("disks/gen/sysarea.bin")
isoFs.importDirectoryListing("disks/files")

//isoFs.getListedFile("MUSIC0.DA").xa_flags_isCdda = 1
//isoFs.getListedFile("MUSIC1.DA").xa_flags_isCdda = 1

isoFs.addPrimaryVolumeDescriptor(pDesc)
isoFs.addDescriptorSetTerminator()
isoFs.addTypeLPathTable()
isoFs.addTypeMPathTable()

isoFs.insertDiscPointer("MUSIC0.DA", ":track2start", ":track2end")
isoFs.insertDiscPointer("MUSIC1.DA", ":track3start", ":track3end")

  isoFs.addDirectoryDescriptor("")
    isoFs.addListedFile("0.BIN")
    isoFs.addListedFile("X4LOW.X4")
    isoFs.addListedFile("ASCII.ARC")
    isoFs.addListedFile("CAPCOM.ARC")
    isoFs.addListedFile("WARNING1.ARC")
    isoFs.addListedFile("WARNING2.ARC")
    isoFs.addListedFile("WARNING3.ARC")
    isoFs.addListedFile("WARNING4.ARC")
    isoFs.addListedFile("PLDEMO00.ARC")
    isoFs.addListedFile("PLDEMO01.ARC")
    isoFs.addListedFile("PLDEMO02.ARC")
    isoFs.addListedFile("PLDEMO03.ARC")
    isoFs.addListedFile("PL00.ARC")
    isoFs.addListedFile("PL01.ARC")
    isoFs.addListedFile("PL02.ARC")
    isoFs.addListedFile("ST0_0_0.ARC")
    isoFs.addListedFile("ST0_1_0.ARC")
    isoFs.addListedFile("ST0_1_1.ARC")
    isoFs.addListedFile("ST1_0_0.ARC")
    isoFs.addListedFile("ST1_1_0.ARC")
    isoFs.addListedFile("ST1_1_1.ARC")
    isoFs.addListedFile("ST2_0_0.ARC")
    isoFs.addListedFile("ST2_1_0.ARC")
    isoFs.addListedFile("ST2_1_1.ARC")
    isoFs.addListedFile("ST3_0_0.ARC")
    isoFs.addListedFile("ST3_1_0.ARC")
    isoFs.addListedFile("ST3_1_1.ARC")
    isoFs.addListedFile("ST4_0_0.ARC")
    isoFs.addListedFile("ST4_1_0.ARC")
    isoFs.addListedFile("ST4_1_1.ARC")
    isoFs.addListedFile("ST5_0_0.ARC")
    isoFs.addListedFile("ST5_1_0.ARC")
    isoFs.addListedFile("ST5_1_1.ARC")
    isoFs.addListedFile("ST6_0_0.ARC")
    isoFs.addListedFile("ST6_1_0.ARC")
    isoFs.addListedFile("ST6_1_1.ARC")
    isoFs.addListedFile("ST7_0_0.ARC")
    isoFs.addListedFile("ST7_1_0.ARC")
    isoFs.addListedFile("ST7_1_1.ARC")
    isoFs.addListedFile("ST8_0_0.ARC")
    isoFs.addListedFile("ST8_1_0.ARC")
    isoFs.addListedFile("ST8_1_1.ARC")
    isoFs.addListedFile("ST9_0_0.ARC")
    isoFs.addListedFile("STA_0_0.ARC")
    isoFs.addListedFile("STA_0_1.ARC")
    isoFs.addListedFile("STB_0_0.ARC")
    isoFs.addListedFile("STB_0_1.ARC")
    isoFs.addListedFile("STB_1_0.ARC")
    isoFs.addListedFile("STB_1_1.ARC")
    isoFs.addListedFile("STC_0_0.ARC")
    isoFs.addListedFile("STC_0_2.ARC")
    isoFs.addListedFile("STC_0_3.ARC")
    isoFs.addListedFile("STC_0_4.ARC")
    isoFs.addListedFile("STC_0_5.ARC")
    isoFs.addListedFile("STC_0_6.ARC")
    isoFs.addListedFile("STC_0_7.ARC")
    isoFs.addListedFile("STC_0_8.ARC")
    isoFs.addListedFile("STC_0_9.ARC")
    isoFs.addListedFile("STC_1_0.ARC")
    isoFs.addListedFile("STC_1_1.ARC")
    isoFs.addListedFile("STD_0_0.ARC")
    isoFs.addListedFile("STD_0_1.ARC")
    isoFs.addListedFile("STD_1_1.ARC")
    isoFs.addListedFile("STD_1_2.ARC")
    isoFs.addListedFile("STD_1_3.ARC")
    isoFs.addListedFile("STD_1_4.ARC")
    isoFs.addListedFile("STD_1_5.ARC")
    isoFs.addListedFile("STD_1_6.ARC")
    isoFs.addListedFile("STD_1_7.ARC")
    isoFs.addListedFile("STD_1_8.ARC")
    isoFs.addListedFile("STE_0_0.ARC")
    isoFs.addListedFile("STE_1_0.ARC")
    isoFs.addListedFile("STF_0_0.ARC")
    isoFs.addListedFile("STF_0_1.ARC")
    isoFs.addListedFile("STF_1_0.ARC")
    isoFs.addListedFile("SDDRVS.TSK")
    isoFs.addListedFile("SDDRVS.MP")
    isoFs.addListedFile("SNDCOM.ARC")
    isoFs.addListedFile("SEPL00.ARC")
    isoFs.addListedFile("SEPL01.ARC")
    isoFs.addListedFile("ST00_0_X.BIN")
    isoFs.addListedFile("ST00_1_X.BIN")
    isoFs.addListedFile("ST00_0_Z.BIN")
    isoFs.addListedFile("ST00_1_Z.BIN")
    isoFs.addListedFile("ST01_0.BIN")
    isoFs.addListedFile("ST01_1.BIN")
    isoFs.addListedFile("ST01_0B0.BIN")
    isoFs.addListedFile("ST01_1B0.BIN")
    isoFs.addListedFile("ST02_0_0.BIN")
    isoFs.addListedFile("ST02_1_0.BIN")
    isoFs.addListedFile("ST02_0_1.BIN")
    isoFs.addListedFile("ST02_1_1.BIN")
    isoFs.addListedFile("ST03_0.BIN")
    isoFs.addListedFile("ST03_1.BIN")
    isoFs.addListedFile("ST04_0.BIN")
    isoFs.addListedFile("ST04_1.BIN")
    isoFs.addListedFile("ST05_0.BIN")
    isoFs.addListedFile("ST05_1.BIN")
    isoFs.addListedFile("ST06_0.BIN")
    isoFs.addListedFile("ST06_1.BIN")
    isoFs.addListedFile("ST07_0.BIN")
    isoFs.addListedFile("ST07_1.BIN")
    isoFs.addListedFile("ST08_0.BIN")
    isoFs.addListedFile("ST08_1.BIN")
    isoFs.addListedFile("ST09_0.BIN")
    isoFs.addListedFile("ST09_1.BIN")
    isoFs.addListedFile("ST0A_0.BIN")
    isoFs.addListedFile("ST0A_1.BIN")
    isoFs.addListedFile("ST0B_0.BIN")
    isoFs.addListedFile("ST0B_1.BIN")
    isoFs.addListedFile("ST0C_0.BIN")
    isoFs.addListedFile("ST0C_1.BIN")
    isoFs.addListedFile("ST0D_0.BIN")
    isoFs.addListedFile("ST0D_1.BIN")
    isoFs.addListedFile("ST0E_0_1.BIN")
    isoFs.addListedFile("ST0E_1_1.BIN")
    isoFs.addListedFile("ST12_0.BIN")
    isoFs.addListedFile("ST12_1.BIN")
    isoFs.addListedFile("ST13_0.BIN")
    isoFs.addListedFile("ST13_1.BIN")
    isoFs.addListedFile("ST14_0.BIN")
    isoFs.addListedFile("ST15_0.BIN")
    isoFs.addListedFile("ST16_0.BIN")
    isoFs.addListedFile("ST16_1.BIN")
    isoFs.addListedFile("ST17_0.BIN")
    isoFs.addListedFile("ST17_1.BIN")
    isoFs.addListedFile("ST18_0.BIN")
    isoFs.addListedFile("ST18_1.BIN")
    isoFs.addListedFile("ST19_0.BIN")
    isoFs.addListedFile("ST19_1.BIN")
    isoFs.addListedFile("ST1A_0.BIN")
    isoFs.addListedFile("ST1A_1.BIN")
    isoFs.addListedFile("ST1B_0.BIN")
    isoFs.addListedFile("ST1B_1.BIN")
    isoFs.addListedFile("ST1C_0.BIN")
    isoFs.addListedFile("ST1C_1.BIN")
    isoFs.addListedFile("ST1D_0.BIN")
    isoFs.addListedFile("ST1D_1.BIN")
    isoFs.addListedFile("ST1E_0.BIN")
    isoFs.addListedFile("ST1E_1.BIN")
    isoFs.addListedFile("ST1F_0.BIN")
    isoFs.addListedFile("ST1F_1.BIN")
    isoFs.addListedFile("ST20_0.BIN")
    isoFs.addListedFile("ST20_1.BIN")
    isoFs.addListedFile("ST39_0.BIN")
    isoFs.addListedFile("ST3A_0.BIN")
    isoFs.addListedFile("ST3B_0.BIN")
    isoFs.addListedFile("ST3C_0.BIN")
    isoFs.addListedFile("ST3D_0.BIN")
    isoFs.addListedFile("ST3E_0.BIN")
    isoFs.addListedFile("ST3F_0.BIN")
    isoFs.addListedFile("ST40_0.BIN")
    isoFs.addListedFile("ST41_0.BIN")
    isoFs.addListedFile("ST42_0.BIN")
    isoFs.addListedFile("ST43_0.BIN")
    isoFs.addListedFile("ST44_0.BIN")
    isoFs.addListedFile("ST45_0.BIN")
    isoFs.addListedFile("ST46_0.BIN")
    isoFs.addListedFile("ST47_0.BIN")
    isoFs.addListedFile("ST48_0.BIN")
    isoFs.addListedFile("ST49_0.BIN")
    isoFs.addListedFile("ST4A_0.BIN")
    isoFs.addListedFile("ST4B_0.BIN")
    isoFs.addListedFile("ST4C_0.BIN")
    isoFs.addListedFile("ST4D_0.BIN")
    isoFs.addListedFile("ST4E_0.BIN")
    isoFs.addListedFile("ST4F_0.BIN")
    isoFs.addListedFile("ST50_0.BIN")
    isoFs.addListedFile("ST51_0.BIN")
    isoFs.addListedFile("LOGO.CPK")
    isoFs.addListedFile("OP.CPK")
    isoFs.addListedFile("X1.CPK")
    isoFs.addListedFile("X2.CPK")
    isoFs.addListedFile("X3.CPK")
    isoFs.addListedFile("X4.CPK")
    isoFs.addListedFile("Z1.CPK")
    isoFs.addListedFile("Z2.CPK")
    isoFs.addListedFile("Z3.CPK")
    isoFs.addListedFile("Z4.CPK")
    isoFs.addListedFile("Z5.CPK")
    isoFs.addListedFile("MX4_CPY.TXT")
    isoFs.addListedFile("MX4_ABS.TXT")
    isoFs.addListedFile("MX4_BIB.TXT")
//    isoFs.addListedFile("MUSIC0.DA")
//    isoFs.addListedFile("MUSIC1.DA")

CdImage cd

  cd.addTrackStart(1, "MODE1RAW")
    cd.addModeChange("MODE1")
    cd.addTrackIndex(1)
    cd.addIsoFilesystem(isoFs)
  cd.addTrackEnd()
  
  cd.addTrackStart(2, "AUDIO")
    cd.addPregapMsf(0, 2, 0)
    cd.addLabel(":track2start")
      cd.addWavAudio("disks/cdda/track_02.wav")
    cd.addLabel(":track2end")
  cd.addTrackEnd()
  
  cd.addTrackStart(3, "AUDIO")
    cd.addPregapMsf(0, 2, 0)
    cd.addLabel(":track3start")
      cd.addWavAudio("disks/cdda/track_03.wav")
    cd.addLabel(":track3end")
  cd.addTrackEnd()

// DEBUG
//cd.disableEdcCalculation = 1
//cd.disableEccCalculation = 1

cd.exportBinCue("x4_rebuild")

