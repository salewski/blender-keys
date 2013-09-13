# Define BLENDER so it finds your Blender executable.
BLENDER = blender
BLENDER = $(HOME)/etc/bin/blender

all: blender-keys.org
	cat blender-keys.org

blender-keys.org: blender-keys
	$(BLENDER) -b -P blender-keys | egrep '^\||^$$' > blender-keys.org