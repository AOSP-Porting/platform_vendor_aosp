# Insert new variables inside the Extra structure
extra_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Extra": {'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
