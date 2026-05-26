include lib/main.mk

lib/main.mk:
ifneq (,$(shell grep "lib/main.mk" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update $(SUBMODULE) --init
else
	git clone -o lib --depth 10 -b main \
	    https://github.com/martinthomson/i-d-template lib
endif
