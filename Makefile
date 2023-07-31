# TODO: Dependencies

# Individual targets

# Split this up eventually for now all in one massive place

# Ardour-7.5.0 (Main binary)
# Means we'll need to start out with all those libs compiled for emcc, that's a ton of work
nodarn@nodar-home:~/projects/github/ardour [wasm] $ ldd build/gtk2_ardour/ardour-7.5.0 
		libardourcp.so => not found
		libwaveview.so.0 => not found
		libardour.so.3 => not found
		libmidipp.so.4 => not found
		libevoral.so.0 => not found
[DONE]	libtemporal.so.0 => not found 
    	libaudiographer.so.0 => not found
    	libptformat.so.0 => not found
    	libcanvas.so.0 => not found
    	libwidgets.so.0 => not found
    	libgtkmm2ext.so.0 => not found
    	libpbd.so.4 => not found
    	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f459cf56000)
    	libglibmm-2.4.so.1 => /lib/x86_64-linux-gnu/libglibmm-2.4.so.1 (0x00007f459cec6000)
    	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f459ce66000)
    	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f459cd3c000)
    	libsigc-2.0.so.0 => /lib/x86_64-linux-gnu/libsigc-2.0.so.0 (0x00007f459cd33000)
    	libgtk-x11-2.0.so.0 => /lib/x86_64-linux-gnu/libgtk-x11-2.0.so.0 (0x00007f459c8d7000)
    	libgdk-x11-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk-x11-2.0.so.0 (0x00007f459c81c000)
    	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f459c80a000)
    	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f459c6e7000)
    	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f459c6ce000)
    	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f459c67f000)
    	libcurl-gnutls.so.4 => /lib/x86_64-linux-gnu/libcurl-gnutls.so.4 (0x00007f459c5ed000)
    	libgtkmm-2.4.so.1 => /lib/x86_64-linux-gnu/libgtkmm-2.4.so.1 (0x00007f459c1a1000)
    	libatkmm-1.6.so.1 => /lib/x86_64-linux-gnu/libatkmm-1.6.so.1 (0x00007f459c14f000)
    	libgdkmm-2.4.so.1 => /lib/x86_64-linux-gnu/libgdkmm-2.4.so.1 (0x00007f459c0fd000)
    	libpangomm-1.4.so.1 => /lib/x86_64-linux-gnu/libpangomm-1.4.so.1 (0x00007f459c0cb000)
    	libcairomm-1.0.so.1 => /lib/x86_64-linux-gnu/libcairomm-1.0.so.1 (0x00007f459c0a1000)
    	libfftw3f.so.3 => /lib/x86_64-linux-gnu/libfftw3f.so.3 (0x00007f459be8f000)
    	liblo.so.7 => /lib/x86_64-linux-gnu/liblo.so.7 (0x00007f459be7c000)
    	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f459be59000)
    	libxml2.so.2 => /lib/x86_64-linux-gnu/libxml2.so.2 (0x00007f459bc9f000)
    	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f459bb62000)
    	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007f459b980000)
    	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f459b82f000)
    	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007f459b814000)
    	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f459b622000)
    	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f459b563000)
    	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f459b535000)
    	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f459b52c000)
    	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f459b524000)
    	/lib64/ld-linux-x86-64.so.2 (0x00007f459eedf000)
    	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f459b518000)
    	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f459b4a5000)
    	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f459b49d000)
    	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f459b473000)
    	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f459b44b000)
    	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f459b268000)
    	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f459b05e000)
    	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f459b059000)
    	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f459b047000)
    	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f459b03a000)
    	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f459b02d000)
    	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f459b026000)
    	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f459b021000)
    	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f459b00c000)
    	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f459af65000)
    	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f459af2d000)
    	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f459af26000)
    	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f459aefc000)
    	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f459aeed000)
    	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f459aed1000)
    	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f459adcd000)
    	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f459adb0000)
    	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f459ada3000)
    	libnghttp2.so.14 => /lib/x86_64-linux-gnu/libnghttp2.so.14 (0x00007f459ad7a000)
    	libidn2.so.0 => /lib/x86_64-linux-gnu/libidn2.so.0 (0x00007f459ad59000)
    	librtmp.so.1 => /lib/x86_64-linux-gnu/librtmp.so.1 (0x00007f459ad39000)
    	libssh.so.4 => /lib/x86_64-linux-gnu/libssh.so.4 (0x00007f459accb000)
    	libpsl.so.5 => /lib/x86_64-linux-gnu/libpsl.so.5 (0x00007f459acb8000)
    	libnettle.so.7 => /lib/x86_64-linux-gnu/libnettle.so.7 (0x00007f459ac7c000)
    	libgnutls.so.30 => /lib/x86_64-linux-gnu/libgnutls.so.30 (0x00007f459aaa6000)
    	libgssapi_krb5.so.2 => /lib/x86_64-linux-gnu/libgssapi_krb5.so.2 (0x00007f459aa59000)
    	libldap_r-2.4.so.2 => /lib/x86_64-linux-gnu/libldap_r-2.4.so.2 (0x00007f459aa03000)
    	liblber-2.4.so.2 => /lib/x86_64-linux-gnu/liblber-2.4.so.2 (0x00007f459a9f2000)
    	libbrotlidec.so.1 => /lib/x86_64-linux-gnu/libbrotlidec.so.1 (0x00007f459a9e4000)
    	libgiomm-2.4.so.1 => /lib/x86_64-linux-gnu/libgiomm-2.4.so.1 (0x00007f459a7ff000)
    	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f459a7f9000)
    	libicuuc.so.66 => /lib/x86_64-linux-gnu/libicuuc.so.66 (0x00007f459a613000)
    	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f459a5ea000)
    	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f459a588000)
    	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f459a55d000)
    	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f459a541000)
    	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f459a53b000)
    	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f459a533000)
    	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f459a504000)
    	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f459a4fa000)
    	libunistring.so.2 => /lib/x86_64-linux-gnu/libunistring.so.2 (0x00007f459a378000)
    	libhogweed.so.5 => /lib/x86_64-linux-gnu/libhogweed.so.5 (0x00007f459a341000)
    	libgmp.so.10 => /lib/x86_64-linux-gnu/libgmp.so.10 (0x00007f459a2bd000)
    	libcrypto.so.1.1 => /lib/x86_64-linux-gnu/libcrypto.so.1.1 (0x00007f4599fe5000)
    	libp11-kit.so.0 => /lib/x86_64-linux-gnu/libp11-kit.so.0 (0x00007f4599eaf000)
    	libtasn1.so.6 => /lib/x86_64-linux-gnu/libtasn1.so.6 (0x00007f4599e99000)
    	libkrb5.so.3 => /lib/x86_64-linux-gnu/libkrb5.so.3 (0x00007f4599dbc000)
    	libk5crypto.so.3 => /lib/x86_64-linux-gnu/libk5crypto.so.3 (0x00007f4599d8b000)
    	libcom_err.so.2 => /lib/x86_64-linux-gnu/libcom_err.so.2 (0x00007f4599d84000)
    	libkrb5support.so.0 => /lib/x86_64-linux-gnu/libkrb5support.so.0 (0x00007f4599d73000)
    	libsasl2.so.2 => /lib/x86_64-linux-gnu/libsasl2.so.2 (0x00007f4599d56000)
    	libgssapi.so.3 => /lib/x86_64-linux-gnu/libgssapi.so.3 (0x00007f4599d11000)
    	libbrotlicommon.so.1 => /lib/x86_64-linux-gnu/libbrotlicommon.so.1 (0x00007f4599cee000)
    	libicudata.so.66 => /lib/x86_64-linux-gnu/libicudata.so.66 (0x00007f459822d000)
    	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f45981d4000)
    	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f4598143000)
    	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f4598129000)
    	libkeyutils.so.1 => /lib/x86_64-linux-gnu/libkeyutils.so.1 (0x00007f4598122000)
    	libheimntlm.so.0 => /lib/x86_64-linux-gnu/libheimntlm.so.0 (0x00007f4598116000)
    	libkrb5.so.26 => /lib/x86_64-linux-gnu/libkrb5.so.26 (0x00007f4598081000)
    	libasn1.so.8 => /lib/x86_64-linux-gnu/libasn1.so.8 (0x00007f4597fdb000)
    	libhcrypto.so.4 => /lib/x86_64-linux-gnu/libhcrypto.so.4 (0x00007f4597fa3000)
    	libroken.so.18 => /lib/x86_64-linux-gnu/libroken.so.18 (0x00007f4597f8a000)
    	libwind.so.0 => /lib/x86_64-linux-gnu/libwind.so.0 (0x00007f4597f60000)
    	libheimbase.so.1 => /lib/x86_64-linux-gnu/libheimbase.so.1 (0x00007f4597f4c000)
    	libhx509.so.5 => /lib/x86_64-linux-gnu/libhx509.so.5 (0x00007f4597efe000)
    	libsqlite3.so.0 => /lib/x86_64-linux-gnu/libsqlite3.so.0 (0x00007f4597dd5000)
    	libcrypt.so.1 => /lib/x86_64-linux-gnu/libcrypt.so.1 (0x00007f4597d9a000)





# The gui ldd, links against, pbd, gtkmm2ext, widgets, canvas, ptformat, audiographer, temporal, evoral, midipp, ardour, waveview.so, ardourcp, 


include ./Makefile.base.mk

gui:
	$(MAKE) all -C gtk2_ardour
