# NFS-Inspired Gas Station Vehicle Fix

A lightweight, standalone FiveM script that brings the iconic "Need for Speed" arcade repair mechanic to your server. Drive through a gas station, get a flash of light, a sound effect, and a freshly repaired (and optionally repainted) ride.

## 🏁 Features

* **Arcade-Style Repair:** No menus, no commands. Just drive into the station radius.
* **Visual & Audio Feedback:** Includes a screen flash effect and a custom sound (`ogg`) for maximum immersion.
* **Randomized Paint:** Optionally gives the vehicle a fresh, random RGB paint job upon repair (can be toggled in config).
* **Optimized Performance:** Uses a dynamic "Wait" system ( in-vehicle,  out-of-vehicle) to keep Resmon low.
* **Standalone:** Zero dependencies. Works on ESX, QB-Core, or completely custom frameworks.
* **Pre-configured Map:** Comes with 26 pre-set gas station locations across San Andreas.

## 🛠 Installation

1. **Download** the repository and place the `gasstationvehfix` folder into your `resources` directory.
2. **Add** the following to your `server.cfg`:
```cfg
ensure gasstationvehfix

```


3. **Restart** your server or `refresh` and `ensure gasstationvehfix` in the console.

---

For more high-quality scripts and updates, visit:
👉 **[mest3rdevelopment.com](https://mest3rdevelopment.com)**
