LDID           = $(shell command -v ldid)
STRIP          = $(shell command -v strip)

P1TMP          = $(TMPDIR)/Pitaya
P1_STAGE_DIR   = $(P1TMP)/stage
P1_APP_DIR     = $(P1TMP)/Build/Products/Release-iphoneos/Pitaya.app

.PHONY: package

package:
	# Build
	@set -o pipefail; \
		xcodebuild -jobs $(shell sysctl -n hw.ncpu) -project 'Pitaya.xcodeproj' -scheme Pitaya -configuration Release -arch arm64 -sdk iphoneos -derivedDataPath $(P1TMP) \
		CODE_SIGNING_ALLOWED=NO DSTROOT=$(P1TMP)/install ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES=NO
	
	@rm -rf Payload
	@rm -rf $(P1_STAGE_DIR)/
	@mkdir -p $(P1_STAGE_DIR)/Payload
	@mv $(P1_APP_DIR) $(P1_STAGE_DIR)/Payload/Pitaya.app

	# Package
	@echo $(P1TMP)
	@echo $(P1_STAGE_DIR)

	@$(STRIP) $(P1_STAGE_DIR)/Payload/Pitaya.app/Pitaya
	
	@rm -rf $(P1_STAGE_DIR)/Payload/Pitaya.app/_CodeSignature

	@ln -sf $(P1_STAGE_DIR)/Payload Payload

	@rm -rf packages
	@mkdir -p packages

	@zip -r9 packages/Pitaya.ipa Payload
	@rm -rf Payload
