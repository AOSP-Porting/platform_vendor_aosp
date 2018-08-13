# Insert new variables inside the Extra structure
extra_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Extra": {'; \
	echo '    "Has_legacy_camera_hal1": $(if $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)),true,false),'; \
	echo '    "Needs_legacy_camera_hal1_dyn_native_handle": $(if $(filter true,$(TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE)),true,false),'; \
	echo '    "Target_shim_libs": "$(subst $(space),:,$(TARGET_LD_SHIM_LIBS))"'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
