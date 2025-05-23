#define USB_FOLDER "/media/lgleba/"
#define PASSWORD_FILE "password.txt"

bool state_encrypt = true;

struct known_usb_device {
    struct usb_device_id dev_id;
    char *name;
};

// List of all USB devices you know
static const struct known_usb_device known_devices[] = {
    // { .dev_id = { USB_DEVICE(0x058f, 0x6387) }, .name = "SAG" },
    { .dev_id = { USB_DEVICE(0x0dd8, 0x3700) }, .name = "LGleba16GB" },
};
