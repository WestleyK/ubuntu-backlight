# Simple backlight adjust and low power mode (display sleep)

Designed and tested for Ubuntu 16.04 Desktop. 

<br>
<br>


## Install, Update and Uninstall:


### Install the binary:

Paste this in your terminal:
```
curl https://raw.githubusercontent.com/WestleyK/ubuntu-backlight/master/easy-install.sh | sh
```
This will install `ubuntu-backlight` to the current directory.

To finish the install, do:
```
sudo mv ubuntu-backlight /usr/local/bin/
```

<br>

### Why install the pre-compiled code:

**Why to install pre-compiled code:**
 - No dependency needed to install, (not that there is any).
 - You don't need golang to compile the source code.

**Why not to install pre-compiled code:**
 - May not be fully compatible, (could only be partially compatible)
<br>

<br>

### Install the source code:

```
cd ~/
mkdir backlight-adjuster
cd backlight-adjuster/
git clone https://github.com/WestleyK/ubuntu-backlight
cd ubuntu-backlight/
make
sudo make install
```

<br>
<br>

### Install by cloning repo:

```
cd ~/
mkdir backlight-adjuster
cd backlight-adjuster/
git clone https://github.com/WestleyK/ubuntu-backlight
cd ubuntu-backlight/pre-compiled/
sudo ./make.sh install
```

<br>
<br>

### Update:

Update the repo:
```
cd ~/backlight-adjuster/ubuntu-backlight/
make update
make
sudo make install
```

Or just update the binary:

```
curl https://raw.githubusercontent.com/WestleyK/ubuntu-backlight/master/easy-install.sh | sh
sudo mv -f ubuntu-backlight /usr/local/bin/
```
Basically the same commands as installing the binary.


<br>

### Uninstall:

```
cd ~/raspberrypi-backlight/ubuntu-backlight/
sudo make uninstall
```
Or uninstall manualy:
```
sudo rm /usr/local/bin/ubuntu-backlight
```

<br>
<br>

## Usage:

```
ubuntu@ubuntu:~ $ ubuntu-backlight -help
Usage: ubuntu-backlight [OPTION]
      -help | --help (print help menu)
      [1-7500] (adjust from: 1 to: 7500)
      -s | -sleep (enter sleep mode, press <ENTER> to exit this mode)
      -u | -up (adjust brightness up by: 250/7500)
      -d | -down (adjust brightness down by: 250/7500)
      -c | -current (print current brightness)
      -n | -on (turn backlight on to: 2000
      -i | -info (print info)
      -version | --version (print version)
Source code: https://github.com/WestleyK/ubuntu-backlight
ubuntu@ubuntu:~ $ 
```


### End README


<br>
<br>


