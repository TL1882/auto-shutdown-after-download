# auto-shutdown-after-download

A simple script that monitors for active downloads from Chromium-based browsers (like Chrome, Brave, Edge) and automatically shuts down the PC when all downloads are complete.

## How it works

Chromium browsers create `.crdownload` files for in-progress downloads. This script checks for the presence of these files in the folder it is run inside of, and triggers a system shutdown once they are no longer detected.

By default, the script monitors the current directory every 2 minutes. When no `.crdownload` files are found, it schedules a shutdown in 10 minutes (This allows big downloads to properly finish and have time to sync with storage).


# Usage

## Windows (CMD)

Save the script in the same folder where you are downloading the files.

***Run the script AFTER starting your download.***

The system will automatically shut down 10 minutes after all downloads finish.

Notes:

To cancel a scheduled shutdown on Windows, use shutdown /a.

Requires that your browser uses .crdownload extensions (Chromium-based).


## Linux (sh)

Save the script in the same folder where you are downloading the files.

launch terminal in the same directory

```bash
sudo chmod +x auto_shutdown_after_downloading.sh
sudo ./auto_shutdown_after_downloading.sh
```

The system will automatically shut down 10 minutes after all downloads finish.

Notes:

To cancel a scheduled shutdown on Linux, use sudo shutdown -c.

Requires that your browser uses .crdownload extensions (Chromium-based).

