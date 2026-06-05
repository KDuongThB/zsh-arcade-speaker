I mean, if your motherboard has a buzzer, this is gonna be annoying as hell.

# 🕹️ zsh-arcade-speaker

> Why let our motherboards be silent? Why let the ancient, loyal piezo speakers inside our machines fade into forgotten history, sounding only a sterile, lonely beep when a system crashes? 

`zsh-arcade-speaker` is a lightweight, universal Zsh plugin that breathes retro, 8-bit life back into your daily terminal workflow. It actively transforms your shell into a dynamic arcade machine—rewarding your successful compilations and deployments with satisfying retro coins, chimes, and blips, while softening the blow of broken builds and typos with iconic, gaming-inspired error alerts.

---

## 🖤 The Philosophy: A Love Letter to the Piezo

Look inside your modern, high-end development rig. Beneath the liquid cooling, past the glowing RGB strips, and buried under the massive multi-core processors sits a tiny, humble circle of plastic and copper: the **piezo motherboard speaker**.

Decades ago, this little speaker was the voice of computing. It sang the opening theme of *The Secret of Monkey Island*, provided the satisfying crunch of catching a Pokemon on a Gameboy, and gave a physical presence to our virtual environments. Today, it sits silent, neglected, and sad—reduced to a cold, clinical diagnostic warning.

We built this package to change that. Your terminal shouldn't feel like a sterile text entry tool. It should react. It should celebrate with you when `docker compose up` succeeds, and it should sigh with you when you misspell `git` as `gti`. Let's give our hardware its voice back.

---

## 🚀 Features

*   **Dual-Engine Status Tracking:** Completely distinct audio pipelines for successful completions ($? = 0$) and execution failures ($? \neq 0$).
*   **Micro-Notification Packs:** Hand-calibrated frequencies designed to execute in under 300ms, ensuring your prompt remains blazing fast without lagging.
*   **Interactive CLI Engine:** Dynamic configuration tools (`zarcade set success` and `zarcade set error`) built right into your native environment.
*   **Universal Compatibility:** Out-of-the-box support for Oh My Zsh, Antigen, Zplug, Homebrew, and manual Git installations.
*   **Native Tab Autocompletions:** Built-in Zsh shell completion tracking for all command flags.

---

## 🎵 Available Sound Profiles

### Success Chimes (`zarcade set success`)
*   `single_coin` — A crisp, immediate single Super Mario Bros. coin collect.
*   `mario_coin` — The classic, rhythmic triple-coin bounce.
*   `messenger` — The ubiquitous, bouncy Facebook Messenger notification tone.
*   `mac_pass` — A warm, haptic dual-tone success chime inspired by macOS.
*   `scifi` — A rapid, clean triple-frequency space bridge blip.
*   `mgs` — The quick, legendary Metal Gear Solid alert pop.
*   `slack` — A light, organic dual-frequency Slack bubble pop.
*   `zelda` — The triumphant small item pickup theme from The Legend of Zelda.
*   `trek` — An authentic Star Trek bridge operations chirp.

### Error Alerts (`zarcade set error`)
*   `windows_error` — A blunt, nostalgic 150Hz Windows XP error thud.
*   `classic_buzz` — The vintage, double-pulse game show incorrect buzzer.
*   `mario_damage` — The iconic 8-bit rapid down-slide of Mario taking a hit.
*   `pokemon_bump` — The hollow, sub-second Gameboy bump when walking into a wall.
*   `denied_blip` — A high-to-low digital access-denied chirp.
*   `trombone` — The classic, full-length theatrical "wah-wah-wah-wahhhh".
*   `pacman` — The complete retro down-sampling Pacman death sequence.

---

## 📦 Installation

Before installing, ensure your local environment has the `beep` system utility installed and that your user account has permissions to interface with the hardware speaker (`/dev/input/by-path/platform-pcspkr-event-spkr` or via `pcspkr` kernel modules).

```bash
sudo apt update && sudo apt install beep -y
sudo usermod -aG input $USER
```

then:

```bash
sudo nano /etc/modprobe.d/blacklist.conf
```

and comment out the lines where there are `snd_pcsp` and `pcspkr`. Reboot your machine.


### 1. Oh My Zsh
Clone this repository straight into your custom plugin index:
```bash
git clone https://github.com/kduongthb/zsh-arcade-speaker.git $ZSH_CUSTOM/plugins/zsh-arcade-speaker
```

Activate it inside your central active array inside ~/.zshrc:

```bash
### ...
plugins=(git zsh-syntax-highlighting zsh-arcade-speaker)

### ...
```

### 2. Antigen
Add this line directly anywhere inside your .zshrc plugin manifest block:

``` bash
antigen bundle kduongthb/zsh-arcade-speaker
```

### 3. Zplug
Declare the tracking reference anywhere below your core zplug initialization sequence:

```bash
zplug "yourusername/zsh-arcade-speaker", as:plugin
```

### 4. Homebrew / Linuxbrew
Tap the distribution repository and spin up the install chain:

```bash
brew tap yourusername/zsh-arcade-speaker
brew install zsh-arcade-speaker
```

Then follow the automated caveats instructions to link the formula to your active shell profile.

## 🎮 Interface & Usage

`zsh-arcade-speaker` ships with a fully fleshed-out console utility called zarcade to adjust your soundscape on the fly.

```bash
# Open the interactive menu to select your success sound
zarcade set success

# Open the interactive menu to select your failure sound
zarcade set error

# Check which profiles are actively running in your environment
zarcade status
```
## 🤝 Contributing

Have you mapped out the exact frequencies for another classic video game theme or retro sound effect? We would love to hear it! Feel free to open an issue or submit a Pull Request with your custom single-line beep structures.

Let's keep the motherboards singing. 🕹️

*Made at 4:20 AM, depressed, withdrawing from Effexor, and sleepless for 26 hours btw :broken-heart-emoji:. Also, thanks Gemini*
