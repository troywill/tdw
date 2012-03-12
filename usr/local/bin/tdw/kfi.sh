#!/bin/bash

# http://pyther.net/wp/2010/08/listen-to-iheartradio-without-flash/

STATION='KFI-AM'
URL="http://p2.${STATION}.ccomrcdn.com/player/player_dispatcher.html?section=radio&action=listen_live"
# wget ${URL}

# mplayer -novideo 'rtmp://cp19771.live.edgefcs.net/live/Los_CA_KFI-AM_OR@s7652?auth=daEcYaldKa8bZc_bXatcddobca5dca8cXaT-bpxHD.-4q-LLYY6_1omFDov1LCqmzsyp&amp;aifp=1234&amp;CHANNELID=177&amp;CPROG=_&amp;MARKET=LOSANGELES-CA&amp;REQUESTOR=KFI-AM&amp;SERVER_NAME=p2.kfi-am.ccomrcdn.com&amp;SITE_ID=616&amp;STATION_ID=KFI-AM&amp;MNM=1&amp;TYPEOFPLAY=0" backup_location=""'

mplayer -novideo 'rtmp://cp19771.live.edgefcs.net/live/Los_CA_KFI-AM_OR@s7652?auth=daEcYaldKa8bZc_bXatcddobca5dca8cXaT-bpxHD.-4q-LLYY6_1omFDov1LCqmzsyp&amp;aifp=1234&amp;CHANNELID=177&amp;CPROG=_&amp;MARKET=LOSANGELES-CA&amp;REQUESTOR=KFI-AM&amp;SERVER_NAME=p2.kfi-am.ccomrcdn.com&amp;SITE_ID=616&amp;STATION_ID=KFI-AM&amp;MNM=1&amp;TYPEOFPLAY=0" backup_location=""'

