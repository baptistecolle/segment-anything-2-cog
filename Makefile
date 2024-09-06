# Makefile

# Variables
COG_YAML = ./cog.yaml
COG_BASE_PATH = ./cog

# Target to process images
cog-image:
	@cp $(COG_BASE_PATH)/image/cog.yaml $(COG_YAML)
	@cog push   
	@rm $(COG_YAML)
	

# Target to process videos
cog-video:
	@cp $(COG_BASE_PATH)/video/cog.yaml $(COG_YAML)
	@cog push   
	@rm $(COG_YAML)

# Default target
all: cog-image cog-video