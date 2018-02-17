# Insert new variables inside the Extra structure
extra_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Extra": {'; \
	echo '    "Target_shim_libs": "$(subst $(space),:,$(TARGET_LD_SHIM_LIBS))"'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
