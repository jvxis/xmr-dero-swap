#!/bin/bash


if [[ "$already_processed" =~ "$time" ]] ; then 
	echo "DERO TXID: $txid found in DERO for XMR db, skipping"
			continue
fi

if [[ "$amount" == "2" ]] ; then 
		
		if [[ "$dst_port" == "1337" ]] ; then
			echo "Scanning: $txid"
			echo "DST_PORT 1337 activated"
				source ./dero_announce_addr.sh
				timeout 20m bash -c 'source ./monero_scan_wallet.sh'  &
				return
		fi
		if [[ "$dst_port" == "7331" ]] ; then
			echo "DST_PORT 7331 activated"
				source ./dero_announce_proceedure.sh
		fi
fi


