#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <usb.h>
#include "opendevice.h"

#include "../requests.h"
#include "../usbconfig.h"


int main(int argc, char **argv)
{
  usb_dev_handle      *handle = NULL;
  const unsigned char rawVid[2] = {USB_CFG_VENDOR_ID}, rawPid[2] = {USB_CFG_DEVICE_ID};
  char                vendor[] = {USB_CFG_VENDOR_NAME, 0}, product[] = {USB_CFG_DEVICE_NAME, 0};
  char                buffer[4];
  int                 cnt, vid, pid;

  usb_init();
  if(argc < 2)
  {
    exit(1);
  }

  /* compute VID/PID from usbconfig.h so that there is a central source of information */
  vid = rawVid[1] * 256 + rawVid[0];
  pid = rawPid[1] * 256 + rawPid[0];

  /* The following function is in opendevice.c: */
  if(usbOpenDevice(&handle, vid, vendor, pid, product, NULL, NULL, NULL) != 0)
  {
    fprintf(stderr, "Could not find USB device \"%s\" with vid=0x%x pid=0x%x\n", product, vid, pid);
    exit(1);
  }

  /* Since we use only control endpoint 0, we don't need to choose a
   * configuration and interface. Reading device descriptor and setting a
   * configuration and interface is done through endpoint 0 after all.
   * However, newer versions of Linux require that we claim an interface
   * even for endpoint 0. Enable the following code if your operating system
   * needs it: */
#if 0
  int retries = 1, usbConfiguration = 1, usbInterface = 0;
  if(usb_set_configuration(handle, usbConfiguration) && showWarnings){
    fprintf(stderr, "Warning: could not set configuration: %s\n", usb_strerror());
  }
  /* now try to claim the interface and detach the kernel HID driver on
   * Linux and other operating systems which support the call. */
  while((len = usb_claim_interface(handle, usbInterface)) != 0 && retries-- > 0){
#ifdef LIBUSB_HAS_DETACH_KERNEL_DRIVER_NP
    if(usb_detach_kernel_driver_np(handle, 0) < 0 && showWarnings){
      fprintf(stderr, "Warning: could not detach kernel driver: %s\n", usb_strerror());
    }
#endif
  }
#endif

  if((strcasecmp(argv[1], "reset") == 0))
  {
    cnt = usb_control_msg(handle, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_ENDPOINT_OUT, CMD_DISPLAY_RESET, 0, 0, buffer, 0, 5000);
    if(cnt < 0)
    {
      fprintf(stderr, "USB error: %s\n", usb_strerror());
    }
  }

  else if(strcasecmp(argv[1], "clear") == 0)
  {
    char
      cnt = usb_control_msg(handle, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_ENDPOINT_OUT, CMD_DISPLAY_CLEAR, 0, 0, buffer, 0, 5000);
    if(cnt < 0)
    {
      fprintf(stderr, "USB error: %s\n", usb_strerror());
    }
  }

  else if(strcasecmp(argv[1], "status") == 0)
  {
    cnt = usb_control_msg(handle, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_ENDPOINT_IN, 3, 0, 0, buffer, sizeof(buffer), 5000);
    if(cnt < 1)
    {
      if(cnt < 0)
      {
        fprintf(stderr, "USB error: %s\n", usb_strerror());
      }
      else
      {
        fprintf(stderr, "only %d bytes received.\n", cnt);
      }
    }
    else
    {
      printf("Status: %s\n", buffer[0] ? "on" : "off");
    }
  }
  else
  {
    exit(1);
  }

  usb_close(handle);
  return 0;
}
