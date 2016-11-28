# LibreELEC for Berryboot
This simple bash script convert LibreELEC OS image to Berryboot squashfs image.
<h2>Usage</h2>
In order to download the official OS image, you need to define the <code>URL</code> field. Then simply run the script as root.
<pre>sudo ./libreelec.sh</pre>
This script will:
<ul>
 	<li>Download official OS image from URL field</li>
 	<li>Decompress downloaded image</li>
 	<li>Unsquashfs LibreELEC SYSTEM file</li>
 	<li>Generate squashfs Berryboot image file</li>
</ul>
NOTE: This script will need squashfs-tools and gunzip, make sure your OS have those packages installed.

For already converted OS images, go to: <a target="_blank" href="http://berryboot.alexgoldcheidt.com/images/">http://berryboot.alexgoldcheidt.com/images/</a>

&nbsp;
