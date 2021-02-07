If you are adding support for a new generic xpad controller it is sufficient
to update the xpad_table[] array.
The type will be auto-detected in xpad_probe().
Updating the xpad_device[] array is only needed if the controller requires
additional flags like DANCEPAD_MAP_CONFIG to work.

Ye idk I am not the original dev he wrote this sh#t. I add support by scanning
the output of lsusb and adding the vendor and model number to the file.
