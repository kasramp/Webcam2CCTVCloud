# Webcam2CCTVCloud

## Description
Webcam2CCTVCloud is a simple bash script which turns your webcam to CCTV camera. So you can capture as many frames as you want in a certain period of time and save it in your desirable location.
It is very easy to use and you can run it on background or make use of your laptop as the CCTV while you are away.
In addition to that you can set saving picture path to your [Dropbox](http://www.dropbox.com) syncing folder path to be able do monitoring via different devices which connected to the same Dropbox account.

## Dependency
The script uses [Mplayer](https://www.mplayerhq.hu/) to capture pictures from webcam and it should be installed on the system.

In Ubuntu you can install Mplayer with the following command.

    $ sudo apt-get install mplayer
  
## How to use
In order to use the script just provide excuting permission and run it like below,

    $ chmod a+x runCCTV.sh
    $ ./runCCTV.sh
Following is the list of acceptable arguments with their description,

* `-s` : denotes to period of time (in seconds) that screen capturing occurs `Default value = 10 {seconds}`. You should keep in mind to not set the timer too low.

* `-f` : used to set the number of captured frame in each period of time that screen capture script runs. `Default value = 3 {frames}`. First two screen captures are always blank and it automatically removes by the script. Hence, the real captured pictures are always `N {frames} - 2`. Make sure not to set too high [more than 8 usuallly] or too low [less than 3] for this parameter.

* `-p` : used to set the path that pictures would be saving `Default value = current path`. It is highly recommended to users to set this path to point to Dropbox syncing folder to be able to check pictures in any devices with Dropbox installed.

## Contact
* kasra@madadipouya.com  
* kasra_mp@live.com  

## License
Webcam2CCTVCloud is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3
as published by the Free Software Foundation.

Webcam2CCTVCloud is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.  <http://www.gnu.org/licenses/>

Author(s):

© 2015-2017 Kasra Madadipouya <kasra@madadipouya.com>
