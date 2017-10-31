adb disconnect 192.168.43.1:9050
sleep 2
adb connect 192.168.43.1:9050
sleep 2
adb shell mount -o remount,rw / &&
adb push libiw.so.29 /lib/libiw.so.29 &&
adb push libiw.so  /lib/libiw.so &&
adb push ifrename /sbin/ifrename &&
adb push iwconfig /sbin/iwconfig &&
adb push iwevent /sbin/iwevent &&
adb push iwgetid /sbin/iwgetid &&
adb push iwlist /sbin/iwlist &&
adb push iwpriv /sbin/iwpriv &&
adb push iwspy /sbin/iwspy &&
adb push wpa_cli /bin/wpa_cli &&
adb push wpa_passphrase /bin/wpa_passphrase &&
adb push wpa_supplicant /bin/wpa_supplicant &&
adb push beboper.conf /etc/beboper.conf &&
adb shell chmod 777 /lib/libiw.so.29 &&
adb shell chmod 777 /lib/libiw.so  &&
adb shell chmod 777 /sbin/ifrename  &&
adb shell chmod 777 /sbin/iwconfig  &&
adb shell chmod 777 /sbin/iwevent &&
adb shell chmod 777 /sbin/iwgetid &&
adb shell chmod 777 /sbin/iwlist &&
adb shell chmod 777 /sbin/iwpriv &&
adb shell chmod 777 /sbin/iwspy &&
adb shell chmod 777 /bin/wpa_cli &&
adb shell chmod 777 /bin/wpa_passphrase &&
adb shell chmod 777 /bin/wpa_supplicant &&
adb push shortpress_3.sh /bin/onoffbutton/shortpress_3.sh &&
adb shell chmod 777 /bin/onoffbutton/shortpress_3.sh

adb shell ln -s /lib/ld-2.19-2014.08-1-git.so /lib/ld-linux.so.3
