
.PHONY: gettext clean-gettext

gettext: gettext/PKGBUILD
	pushd gettext; makepkg; popd

clean-gettext:
	pushd gettext; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
