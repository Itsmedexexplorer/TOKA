# TO'KA user guide

TO'KA lives on your desktop as a small 3D character (**Strobi** or **Puff**) or as a black **dynamic notch** at the top of the screen. You chat with it and it **does things for you**: browses websites and fills forms, creates Word / Excel / PDF files, opens apps, runs commands, summarises the YouTube video you're watching, and plays music you like.

It can think with almost any AI:

- **CLI agents you already pay for**: Claude Code, Codex, Gemini CLI, Antigravity, OpenCode, Hermes, Aider. No extra API key; it uses your own login.
- **Cloud APIs**: Claude, Gemini, OpenAI, OpenRouter, Grok, Groq, or any OpenAI-compatible server.
- **Local models**: Ollama, vLLM, LM Studio.

If one brain runs out of tokens, gets signed out or times out, TO'KA **retries and then hands the task to the next brain on its own**, with the whole conversation, and shows you live what each brain is thinking, planning and spending.

Built with **Tauri v2** (Rust + the system webview): the installer is a few MB and it uses a fraction of the memory of an Electron app. Runs on **Linux (Ubuntu and others)** and **Windows 10 / 11**.


---

## Contents

1. [Features](#features)
2. [Quick start](#quick-start)
3. [Install](#install)
   - [Windows](#windows)
   - [Linux](#linux)
4. [Connect a brain](#connect-a-brain)
   - [CLI agents: install and sign in](#cli-agents-install-and-sign-in)
   - [Cloud API keys](#cloud-api-keys)
   - [Local models](#local-models)
   - [How a CLI works with TO'KA (modes)](#how-a-cli-works-with-toka-modes)
5. [Automatic retry and backup brains](#automatic-retry-and-backup-brains)
6. [The Live panel: tokens, thinking, plan](#the-live-panel-tokens-thinking-plan)
7. [Use your own browser: the TO'KA Bridge extension](#use-your-own-browser-the-toka-bridge-extension)
8. [Talk to TO'KA (voice input)](#talk-to-toka-voice-input)
9. [Videos and music](#videos-and-music)
10. [Screen, keyboard and mouse](#screen-keyboard-and-mouse)
11. [Approvals and safety](#approvals-and-safety)
12. [Using TO'KA day to day](#using-toka-day-to-day)
13. [Skills and the skills gallery](#skills-and-the-skills-gallery)
14. [Plugins: connect Notion, GitHub and more](#plugins-connect-notion-github-and-more)
15. [Reminders and weather](#reminders-and-weather)
16. [Teach TO'KA: it improves itself](#teach-toka-it-improves-itself)
17. [Troubleshooting](#troubleshooting)
18. [Where TO'KA keeps its files](#where-toka-keeps-its-files)
19. [Privacy and security](#privacy-and-security)

---

## Features

| | |
|---|---|
| **Two presentations** | A floating character, or a dynamic notch that hangs from the top (or bottom) edge and opens into chat, live activity, tasks, notes, clipboard, skills and settings. Switch any time. |
| **Any brain, one login click** | TO'KA finds the CLI agents installed on your computer, shows whether each one is signed in, and opens its sign-in for you with one button. |
| **Never gets stuck** | Timeouts and busy servers are retried. A usage limit, sign-out or crash moves the task to the next brain automatically, carrying over the conversation and the steps already done. |
| **Live panel** | See which brain is working, its thinking, its plan (checklist), its next move, every step it takes, and tokens used: per task and per brain per day. |
| **Voice input** | Press the mic (or Ctrl+Space), talk, pause: TO'KA sends what you said. Speech becomes text **on your computer** (Whisper), with no account or API key. |
| **Videos** | "Summarise this video": reads the transcript, description, chapters and top comments of the YouTube video you're watching, and knows how far you've got. |
| **Music** | Learns your taste from what you play (kept on your computer), plays songs and mixes on YouTube Music, YouTube or Spotify, and can skip or pause. |
| **Study help** | Stuck on a topic (say, a DSA problem)? It explains it, then finds and opens good videos for you. |
| **Browser control** | Reads pages as a numbered list of buttons, links and fields; clicks, types, picks options, uploads files. You **watch it work**: a TO'KA cursor glides to each button and clicks with a ripple, text types out letter by letter, and a soft glow with a status pill ("Clicking “Sign in”") frames the page until the task ends. Works in its own Chrome window or in **your everyday browser** through the TO'KA Bridge extension. |
| **Documents** | Real `.docx` and `.xlsx` files (headings, lists, tables, working formulas), PDFs, and conversions with LibreOffice. |
| **Desktop control** | Launches apps, opens files, looks at the screen, types and clicks (GNOME portal on Linux, native input on Windows). |
| **CLI agents get TO'KA's tools** | A local MCP server lets Claude Code, Codex and Antigravity use TO'KA's browser, document, media and desktop tools inside their own agent loop. |
| **Skills gallery** | Ten ready-made skills (meeting notes, resume tailoring, trip planning, flashcards…), installed with one click. New ones arrive without an app update. |
| **Plugins** | Connect MCP servers such as Notion, GitHub, a folder or a knowledge graph. TO'KA and every CLI brain can then use their tools. |
| **Reminders and weather** | *"Remind me at 6:30 to call mum"*, *"What's the weather in Pune?"* |
| **Improves itself** | Ask it to change its look, remember a standing preference, learn a skill or add a plugin. |
| **A character that reacts** | It listens with you, bobs to your music, looks around while browsing, gets curious when it needs your OK, and celebrates big tasks. |
| **Skills** | Reusable instructions (`SKILL.md`) you run with `/skill-name`, or TO'KA picks them itself. |
| **Autopilot** | TO'KA just does the work. It stops for your OK only before paying, sending, deleting or changing the system, and not even then when that's what you asked for. Turn it off to choose exactly which actions need your OK. |
| **Instant actions** | "Open YouTube", "play Tum Hi Ho", "pause", "next song", "open the terminal", "google …": done at once, without waiting for an AI. |
| **Helper agents** | For big jobs TO'KA can split the work and hand parts to other AI CLIs you have installed (Claude Code, Codex, Gemini…), running them at the same time. |

---

## Quick start

1. **Install TO'KA** for [Linux](#linux) or [Windows](#windows) and start it.
2. **Pick a brain:** triple-tap the character (or click ⚙ in the notch) → **Settings** → **Brains on this computer**. Press **Use** on one that says **Signed in**, or press **Sign in** first.
3. **Ask something:** double-tap the character (or click the notch) and type, or press the 🎤 mic and say it, e.g. *"Summarise the video I'm watching"* or *"Make an Excel sheet to track my expenses"*.

Optional, but recommended:

4. Install the [browser extension](#use-your-own-browser-the-toka-bridge-extension) so TO'KA can work in your own browser with your logins.
5. Sign in to a **second** CLI or add an API key, so TO'KA has a [backup brain](#automatic-retry-and-backup-brains) when the first one runs out.

---

## Install

### Windows

**Easiest:** download and double-click the installer.

1. Download **[TOKA-windows-setup.exe](https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-windows-setup.exe)**.
2. Double-click it. It installs for your user only: no admin rights, no questions.
   If Windows shows *"Windows protected your PC"*, click **More info → Run anyway** (the app isn't code-signed yet).
3. TO'KA starts. Next time, find **TOKA** in the Start menu.

**Or with one command:** open **PowerShell** (Start → type *PowerShell*) and paste:

```powershell
irm https://raw.githubusercontent.com/Itsmedexexplorer/TOKA/main/scripts/install.ps1 | iex
```

Run the same thing again later to update. Needs Windows 10 or 11 (64-bit); WebView2 is fetched automatically if missing.

<a id="linux"></a>
### Linux

**Easiest:** open a terminal (Ctrl+Alt+T on Ubuntu) and paste:

```bash
curl -fsSL https://raw.githubusercontent.com/Itsmedexexplorer/TOKA/main/scripts/install.sh | sh
```

It picks the right package for your system, installs it (you'll be asked for your password once), and adds **TOKA** to your app menu. Run it again later to update.

| Your system | What the command installs |
|---|---|
| Ubuntu, Debian, Mint, Pop!_OS, elementary, Zorin | `.deb` with `apt`, which also installs everything TO'KA needs |
| Fedora, RHEL, openSUSE | `.rpm` |
| Anything else | AppImage in `~/.local/bin`, plus an app-menu entry |

**Or by hand:** download [TOKA-linux-amd64.deb](https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-linux-amd64.deb) and double-click it (App Center → **Install**), or run `sudo apt install ./TOKA-linux-amd64.deb` in the download folder. Other options: [.rpm](https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-linux-x86_64.rpm) · [AppImage](https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-linux-amd64.AppImage).

Then start **TOKA** from the app menu, or run `toka`. Needs 64-bit Linux, Ubuntu 22.04 or newer (or similar). GNOME, KDE and most other desktops work.

> **Wayland:** GNOME on Wayland doesn't let apps position themselves or stay on top, so TO'KA runs through XWayland automatically (built into GNOME). To force native Wayland anyway: `TOKA_WAYLAND=1 toka`.

### Updating

From version 1.3.0, TO'KA updates itself. A little after it starts (and every few hours), it checks for a new version. If there is one, a card appears in chat: click **Update now**. TO'KA downloads the update, checks its signature, installs it and restarts. Your settings, memory and skills stay. You can also check any time in **Settings → Updates → Check now**.

- **Linux .deb / .rpm:** your system asks for your password to install the update.
- **AppImage:** the file is replaced in place.
- **Windows:** the installer runs by itself with a small progress window.

Coming from **1.2.0 or older?** Those versions can't update themselves. Install once more using the steps above (same link, or the one-line installer); after that, updates are automatic.

### Recommended extras (both systems)

| Extra | Why | Get it |
|---|---|---|
| Chrome, Edge, Brave or Chromium (on Linux, **not** the Snap) | Browser control, videos and music | The browser's website (Edge is already on Windows) |
| Node.js 20+ | Installing most CLI agents | [nodejs.org](https://nodejs.org) · Ubuntu: `sudo apt install nodejs npm` |
| LibreOffice | Converting documents (`docx` ↔ `pdf`…) | [libreoffice.org](https://www.libreoffice.org/download/) · Ubuntu: `sudo apt install libreoffice` |
| Ollama | Free, private local models | [ollama.com/download](https://ollama.com/download) |


---

## Connect a brain

Open **Settings** (triple-tap the character, or ⚙ in the notch / chat header). The section **Brains on this computer** lists everything TO'KA found:

| Status | Meaning | What to do |
|---|---|---|
| **Signed in** | Installed and logged in. | Press **Use** to make it the main brain. |
| **Sign-in needed** | Installed but not logged in. | Press **Sign in** (see below). |
| **Installed** | Installed; this CLI has no login check. | Press **Use**; if it fails, run it once in a terminal. |
| **Running** | A local model server (Ollama / vLLM) is up. | Press **Use**. |
| **Resting** | It failed recently (e.g. usage limit) and is sitting out. Hover to see until when. | Nothing; it comes back on its own. |
| **Not found** | Not installed (or not on `PATH`). | Press **Install** for the official instructions, then **Scan again**. |

### CLI agents: install and sign in

**How "Sign in" works:** TO'KA opens a terminal window running the CLI's own login command (for example `codex login`). Finish the login there; usually a browser page opens for you to approve. TO'KA checks every few seconds and flips the status to **Signed in** by itself. TO'KA never sees your password or tokens.

Most CLIs install with Node.js 20+ (`npm`). Commands are the same on Linux and Windows unless shown otherwise.

| CLI | Install | Sign in (what the button runs) | Notes |
|---|---|---|---|
| **Claude Code** | Linux: `curl -fsSL https://claude.ai/install.sh \| bash`<br>Windows (PowerShell): `irm https://claude.ai/install.ps1 \| iex`<br>Either: `npm install -g @anthropic-ai/claude-code` | `claude auth login` | Uses your Claude subscription or Console account. Live panel shows exact tokens and cost. |
| **Codex CLI** | `npm install -g @openai/codex` | `codex login` | Sign in with ChatGPT, or `codex login --with-api-key`. |
| **Gemini CLI** | `npm install -g @google/gemini-cli` | `gemini` (choose **Login with Google**) | Or set `GEMINI_API_KEY` before starting TO'KA. |
| **Antigravity** (`agy`) | Linux: `curl -fsSL https://antigravity.google/cli/install.sh \| bash`<br>Windows (PowerShell): `irm https://antigravity.google/cli/install.ps1 \| iex` | `agy` (sign in on first run) | To give it TO'KA's tools, press **Connect TO'KA's tools** once (Settings → How the CLI works). |
| **OpenCode** | `npm install -g opencode-ai` | `opencode auth login` | Pick a provider during login. |
| **Aider** | `python -m pip install aider-install` then `aider-install` | (none) | Uses API keys such as `OPENAI_API_KEY` from your environment. |
| **Hermes** | See its project's install guide | `hermes` | |

TO'KA looks for CLIs on your `PATH` plus the usual per-user folders: `~/.local/bin`, `~/.npm-global/bin`, `~/.bun/bin`, `~/.volta/bin`, `~/.cargo/bin` on Linux, and `%APPDATA%\npm` on Windows. After installing one, press **Scan again**.

> **Tip:** sign in to **two** CLIs (for example Claude Code and Codex). Then a usage limit on one never stops your task.

### Cloud API keys

Choose the provider in **AI Provider**, paste the key, and press **Save**, then **Test connection**.

| Provider | Get a key | Notes |
|---|---|---|
| Claude · Anthropic | [console.anthropic.com](https://console.anthropic.com) | Native tools and vision. |
| Gemini · Google | [aistudio.google.com/apikey](https://aistudio.google.com/apikey) | Free tier available. |
| OpenAI | [platform.openai.com/api-keys](https://platform.openai.com/api-keys) | |
| OpenRouter | [openrouter.ai/keys](https://openrouter.ai/keys) | Live panel shows cost. |
| Grok · xAI / Groq | [console.x.ai](https://console.x.ai) / [console.groq.com](https://console.groq.com) | |
| OpenAI-compatible endpoint | Your server's URL (+ key if needed) | LM Studio, LiteLLM, gateways… |

Keys are stored only on your computer, in a settings file only your user can read. Every provider with a saved key also counts as a backup brain.

### Local models

- **Ollama:** install from [ollama.com](https://ollama.com/download), then `ollama pull qwen3:8b`. TO'KA finds the models automatically.
- **vLLM:** run a server on `127.0.0.1:8000`.
- **LM Studio:** start its server and use **OpenAI-compatible endpoint** with `http://127.0.0.1:1234`.

### How a CLI works with TO'KA (modes)

Settings → **How the CLI works** (shown when a CLI is the provider):

| Mode | What happens | Best for |
|---|---|---|
| **Full agent** (default) | The CLI runs the whole task with its own agent loop **plus TO'KA's tools** (browser, documents, media, desktop) through TO'KA's local MCP server. Claude Code and Codex work automatically; Antigravity needs **Connect TO'KA's tools** once. | Almost everything |
| **Planner** | The CLI only decides the next step; TO'KA runs each tool itself. Works with every CLI, but slower. | CLIs without MCP support |
| **CLI alone** | The CLI works with its own tools only. | Coding tasks |

**Let the CLI approve its own actions** skips the CLI's own permission prompts (`--dangerously-skip-permissions` / `--full-auto` / `--yolo`). Leave it off unless you trust the task. TO'KA's own approval cards still apply to TO'KA's tools.

---

## Automatic retry and backup brains

When something goes wrong, TO'KA decides what to do without asking you, and says what it did in the chat:

| What happened | What TO'KA does |
|---|---|
| **Timed out** | Retries once after 2 s, then switches brain. |
| **Server busy / overloaded / 5xx** | Retries twice (after 3 s and 9 s), then switches. |
| **Network hiccup** | Retries twice, then switches. |
| **Short rate limit** ("try again in 20 s") | Waits it out and retries once. |
| **Usage limit / quota / out of credits** | Switches immediately. That brain rests until its limit resets (or 20 minutes). |
| **Signed out / bad API key** | Switches immediately, and tells you how to sign in again. The brain rests until you sign back in. |
| **Conversation too long for the model** | Trims older parts (keeping your request and the latest steps) and retries once, then switches. |
| **Not installed** | Switches immediately. |

**What the next brain gets:** the full conversation, your saved memory about you, and a handoff note listing the steps already completed ("opened page X", "created report.docx"…), so it continues instead of starting over. You'll see a note like:

> ⚡ Claude Code hit its usage or rate limit, so Codex is taking over. It has the whole conversation and the steps done so far.

**Choosing the order:** Settings → **When a brain fails**.

- **Retry, then switch to a backup brain automatically** turns the whole feature on or off.
- By default the order is automatic: your main brain, then other signed-in CLIs (Claude Code → Codex → Antigravity → Gemini CLI → OpenCode → Hermes), then cloud APIs with saved keys, then local models. The current order is shown underneath.
- Tick **Choose the backup order myself** to pick which brains to use and order them with ↑ ↓.

At most four brains are tried for one task. Resting brains are tried last.

---

## The Live panel: tokens, thinking, plan

Open it with the **pulse** button: in the notch toolbar, or in the companion chat header.

- **Header:** the brain working now (and which brains it took over from), the phase (*Thinking, Acting, Writing, Waiting for your OK, Done*) and the elapsed time.
- **Memory ring:** a small hollow circle that fills as the brain's memory (its context window) fills: **green**, then **amber** past 60%, **red** past 85%. Hover it for the exact numbers (tokens in, out, cached, thinking, cost). When it's red, the brain is close to forgetting the start of the conversation; TO'KA trims old messages automatically if it overflows.
- **Thinking:** the brain's reasoning, when it shares it.
- **Next move:** what it's about to do.
- **Plan:** its checklist, ticking off as it goes.
- **Timeline:** every step: tools used, failures, retries and brain switches.
- **Today's usage:** tasks, tokens and cost per brain since midnight (kept for 14 days).

While a task runs, the same ring sits on the collapsed notch and in the companion chat header.

What each brain shares:

| Brain | Tokens | Thinking | Plan | Steps |
|---|---|---|---|---|
| Claude Code | exact, with cost | yes (when it thinks) | yes (its to-do list) | yes |
| Codex | exact | reasoning summaries | yes (its to-do list) | yes |
| Antigravity | exact | when shared | from its reply | yes |
| Gemini CLI | exact (at the end) | — | from its reply | yes |
| OpenCode | exact, with cost | yes | from its reply | yes |
| Hermes, Aider | estimated (≈) | — | — | — |
| Cloud APIs / Ollama | exact | Claude & Gemini thinking, DeepSeek/Qwen reasoning | from its reply | yes |

> On a subscription (Claude, ChatGPT, Google sign-in) you aren't billed per token, but the counts still show how much of your limit a task uses.

---

## Use your own browser: the TO'KA Bridge extension

By default TO'KA opens **its own Chrome window** with a separate profile (sign in there once and it remembers you). To let it work in **your everyday Chrome, Edge or Brave**, with your logins, open tabs, YouTube and Spotify, install the **TO'KA Bridge** extension. It isn't on the Chrome Web Store, so you load it with *Developer mode*. That takes about two minutes.

### Step 1: find the extension folder

The easiest way, on any OS: **TO'KA → Settings → Your browser → Extension folder**. A file window opens on the folder.

Or find it yourself:

| Install type | Folder |
|---|---|
| Linux `.deb` | `/usr/lib/TOKA/extension` |
| Linux AppImage | Only exists while TO'KA runs. Copy it out with the **Extension folder** button, or download [TOKA-extension.zip](https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-extension.zip) and unzip it. |
| Windows | `C:\Users\<you>\AppData\Local\TOKA\extension` (paste `%LOCALAPPDATA%\TOKA\extension` into File Explorer's address bar) |
| Any system | Download [TOKA-extension.zip](https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-extension.zip) and unzip it |

**Linux: copy it to your home folder first.** Chrome's file picker can't easily browse `/usr/lib`, and a copy survives TO'KA updates:

```bash
cp -r /usr/lib/TOKA/extension ~/TOKA-extension
```

On Windows you can load it straight from `%LOCALAPPDATA%\TOKA\extension`.

### Step 2: load it in your browser

1. Open the extensions page:

   | Browser | Address |
   |---|---|
   | Chrome / Chromium | `chrome://extensions` |
   | Microsoft Edge | `edge://extensions` |
   | Brave | `brave://extensions` |

2. Turn on **Developer mode** (top-right switch in Chrome and Brave; left sidebar in Edge).
3. Click **Load unpacked** and choose the folder from step 1.
   - Linux: in the file picker press **Ctrl+L** and type `~/TOKA-extension`.
   - Windows: paste `%LOCALAPPDATA%\TOKA\extension` into the picker's address bar.
4. Click the puzzle-piece icon in the toolbar and **pin** TO'KA Bridge.

### Step 3: pair it with TO'KA

1. In TO'KA: **Settings → Your browser → Copy code**.
2. Click the **TO'KA Bridge** icon in the browser, paste the code, and press **Save & connect**.
3. Both sides should say **Connected** (the extension icon shows an `on` badge).

### What to expect

- While TO'KA works in a tab, the browser shows *"TO'KA Bridge started debugging this browser"*. That's expected. Pressing **Cancel** on that bar stops TO'KA immediately.
- TO'KA opens **its own tabs** for new sites and only reads the tab you're on when you ask about "this page" or "this video".
- To pause it, untick **Allow TO'KA to use this browser** in the extension popup.
- **Updating:** after installing a new TO'KA, copy the folder again (Linux), then press the reload icon on the extension's card in `chrome://extensions`.
- **Removing:** press **Remove** on the extension's card.

> Firefox isn't supported yet (the extension uses Chrome's debugger API). Snap and Flatpak browsers work with the extension, but TO'KA's *own* browser window needs a non-Snap Chrome / Chromium / Brave / Edge.

---

## Talk to TO'KA (voice input)

1. Open the chat (double-tap the character, or click the notch).
2. Click the **mic** button next to Send, or press **Ctrl+Space**.
3. **First time only:** TO'KA offers to download a speech model. Click **Download · 190 MB** (best for most people) or **Faster · 59 MB** (for older computers). It's a one-time download.
4. Talk. The mic glows, its ring follows your voice, and your words appear as you speak.
5. **Pause** for about a second when you're done. TO'KA sends what you said straight away: it was turning your speech into text while you talked.

| While listening | |
|---|---|
| Click the mic again | Finish now |
| **Esc** | Throw the recording away |
| Say nothing for 8 s | Stops by itself |

Music and videos pause while you talk, then carry on.

**Settings → Voice**

| Setting | What it does |
|---|---|
| Show the mic button | Turn voice off completely. |
| Send as soon as I stop talking | Off = the text goes into the box so you can edit it first. |
| Models | **Fast · English** (59 MB), **Accurate · English** (190 MB), **Accurate · any language** (190 MB: Hindi, Marathi, Tamil, Spanish…), **Best · any language** (574 MB, slower). Download, switch or delete them here. |
| Language I speak | For the *any language* models. *Detect automatically* works for most people; picking yours is a little more accurate. |

**Private by design:** the microphone is only on while the mic button glows, and the recording is turned into text on your computer and then discarded. No audio is uploaded, not even to the brain: only the text is sent, like typing.

> **Windows:** if TO'KA can't hear you, open **Settings → Privacy & security → Microphone** and turn on **Let desktop apps access your microphone**.
> **Linux:** TO'KA uses your default input device. Pick the right mic in **Settings → Sound → Input**.

---

## Videos and music

These features use **what's playing on your computer** (YouTube or YouTube Music in a browser, Spotify, VLC…). Linux reads it over MPRIS and Windows uses the system media controls. It stays on your computer: nothing reaches an AI unless you ask something that needs it.

### Summarise or discuss a video

Ask:
- *"Summarise the video I'm watching"*
- *"What did they say about recursion around minute 12?"*
- *"Make study notes and a quiz from this lecture"*
- *"Summarise https://youtu.be/…"*

TO'KA reads the video's **title, channel, length, description, chapters, transcript (captions, including auto-generated ones in many languages), the top comments, and how far you've watched**, then answers with key points and timestamps.

- With the **browser extension** connected it reads your open YouTube tab, so comments and your position are included.
- Without it, it reads the public video page: details and transcript, but no comments.
- If a video has no captions, TO'KA says so and summarises from the description, chapters and comments.

When **Settings → Awareness → Offer help when I'm watching a tutorial or lecture** is on, TO'KA offers a summary and quiz when you start a lesson.

### Play music you like

Ask:
- *"Play something I like"* / *"Put on music for coding"*
- *"Play Tum Hi Ho by Arijit Singh"*
- *"Next song"*, *"Pause"*

TO'KA plays in the browser it controls. Pick the service in **Settings → Awareness → Play music on**:

| Service | Notes |
|---|---|
| **YouTube Music** (default) | Plays the song and keeps going with similar songs. |
| **YouTube** | Plays the video. |
| **Spotify** | Uses the Spotify web player, so you must be signed in to Spotify in that browser. TO'KA's own Chromium window may lack Spotify's DRM; use the extension with your Chrome / Edge. |

**How it learns your taste:** with **Learn my taste from what I play** on (Settings → Awareness), TO'KA records what plays and for how long, **on this computer only** (last 3,000 plays). When you ask for music it looks at your top artists and channels, what you play at this time of day, and what you played recently. With the extension connected it can also read your **YouTube Music history**, **YouTube history** or **Spotify liked songs** pages (read-only; it never likes, follows or deletes anything), and it saves a short taste note to its memory. **Forget listening history** clears the record.

### Get unstuck while learning

Ask *"I'm stuck on this LeetCode problem"* or *"I don't get dynamic programming, help"*. TO'KA looks at the problem (the page you're on, or the screen), explains the idea step by step with hints first, recommends 2–3 good videos and an article with links, and opens the one you choose. The built-in `study-help` skill drives this.

---

## Screen, keyboard and mouse

- **Linux (Wayland):** the first time TO'KA looks at the screen or types, GNOME shows a **Remote desktop / Screen sharing** prompt. Allow it and tick **remember**, so you aren't asked every time. TO'KA uses the official xdg-desktop-portal; nothing bypasses the compositor.
- **Linux (X11):** works the same way through the portal.
- **Windows:** works out of the box.

---

## Approvals and safety

**Autopilot** (Settings → Approvals, on by default) lets TO'KA work without stopping. It asks only before:

- clicking buy / pay / send / post / delete / submit buttons, **unless your request asked for exactly that** ("send the email to Sam", "buy the blue one");
- commands that delete files, run as administrator, uninstall software, restart the computer or close programs, **unless your request asked for that** ("clean up my cache", "install VLC");
- writing into system folders (`/etc`, `C:\Windows`…);
- plugin actions the plugin marks as destructive, and changes to TO'KA itself.

A few commands always ask, even after *Allow for this chat*: wiping a disk, deleting your whole home folder, or running a script straight from the internet (`curl … | bash`).

Turn Autopilot off to pick yourself which actions need your OK:

- runs terminal commands
- writes files
- looks at the screen or uses keyboard & mouse
- clicks buy / send / delete buttons in the browser

When approval is needed, a card appears in chat with **Deny / Allow for this chat / Allow**. The notch opens so you can't miss it. TO'KA never types passwords, card numbers or ID numbers; it asks you to enter those yourself. Before anything irreversible (payments, sending messages, deleting) it summarises what will happen and waits for your yes.

---

## Using TO'KA day to day

**Companion mode**

| Action | Result |
|---|---|
| Tap | Says hi and reacts |
| Double-tap | Open / close chat |
| Triple-tap | Settings |
| Drag | Move it anywhere |
| Drag the corner handle ⇲ | Resize |

**Notch mode:** click the notch to open it. Drag it along the top or bottom edge; it snaps to the nearest edge or the centre. The toolbar switches between **Chat, Live, Current task, Notes, Clipboard, Skills, Settings**. Switch modes in Settings → *Desktop presence*, or with the notch button in the chat header.

**Things to try**

- *"Research the best budget laptops this year and summarise the top 3 with links"*
- *"Create an Excel sheet to track my monthly expenses with totals"*
- *"Write a one-page PDF summary about solar panels and save it to my Documents"*
- *"Summarise the video I'm watching and quiz me on it"*
- *"Play some focus music I'd like"*
- *"I'm stuck on sliding window problems. Explain and find me a good video"*
- *"Open this page and fill in the form for me: https://…"*
- *"What's on my current tab?"* (with the browser extension)

Steps show live in the chat, and the **Stop** button cancels a running task, including a running CLI. Sending a new message while TO'KA is working stops the current task and starts the new one.

**Why some requests are instant and others take a while:** everyday one-step requests (open a site, app or folder; play, pause or skip; search Google or YouTube) run immediately. Everything else goes to the brain you picked. Cloud API brains (Groq, Gemini, Anthropic, OpenAI) answer fastest; CLI agents need about 5 to 10 seconds just to start, then a few seconds per step.

---

## Skills and the skills gallery

**Gallery:** Settings → **Skills gallery** (or the **Gallery** button in the notch's Skills panel). Filter by category, **Preview** what a skill tells TO'KA to do, and **Install** it. Then type `/name` in chat, or just ask; for example *"plan a 3-day trip to Goa"* picks `trip-planner` once it's installed. You can also ask TO'KA *"what skills can you learn?"* or *"install the flashcards skill"*.

| Category | Skills |
|---|---|
| Work | `meeting-notes` |
| Writing | `email-writer` |
| Career | `resume-tailor`, `job-search` |
| Life | `trip-planner` |
| Productivity | `daily-planner` |
| Money | `expense-tracker` |
| Study | `flashcards` |
| Research | `research-report` |
| Developer | `code-explainer` |

Skills are folders with a `SKILL.md` file (name, description and instructions) in TO'KA's data folder. Open the folder with Settings → **Open skills folder**.

- Type `/` in chat to autocomplete a skill, e.g. `/browser-tasks book a table at…`
- Or just ask: TO'KA picks matching skills itself.
- Ask TO'KA to *"save this as a skill"* and it writes one for you.

Built-in skills: `web-research`, `browser-tasks`, `desktop-apps`, `write-skill`, `video-summary`, `music-taste`, `study-help`. New built-ins are added to existing installs automatically. If you delete one, it stays deleted.

---

## Plugins: connect Notion, GitHub and more

Plugins are [MCP servers](https://modelcontextprotocol.io), the same plug-in format Claude Desktop, Cursor and others use. Once one is connected, TO'KA and every CLI brain can use its tools (named like `notion__search`).

1. Settings → **Plugins** → **Add a plugin**.
2. Pick one:

   | Plugin | What it does | Needs |
   |---|---|---|
   | **Folder access** | Read, search and edit files in one folder you choose, and nowhere else | Node.js |
   | **Knowledge graph** | A long-term memory of people, projects and facts | Node.js |
   | **Notion** | Search, read and create pages and databases | Node.js and a Notion integration token ([create one](https://www.notion.so/profile/integrations), then share pages with it) |
   | **GitHub** | Issues, pull requests, code search | Docker and a [fine-grained token](https://github.com/settings/personal-access-tokens) |
   | **Step-by-step thinking** | Helps with hard, multi-step problems | Node.js |
   | **Custom** | Any MCP server that runs as a command, e.g. `npx -y some-mcp-server` | Whatever that server needs |

3. Fill in the fields and press **Connect**. The first start can take a minute while it downloads. You'll see **On · N tools**, or an error with **Retry**.

Plugins start by themselves whenever TO'KA starts. Untick one to turn it off, or press **Remove**.

**Safety:** TO'KA asks before a plugin *changes* something (Settings → Approvals → *uses a plugin to change something*). Tools that the plugin marks as read-only never ask. Tokens stay in TO'KA's data folder, and TO'KA never asks for them in chat. Only add servers you trust: a plugin runs on your computer with your permissions.

---

## Reminders and weather

- *"Remind me in 20 minutes to stretch"*, *"Remind me at 6:30pm to call mum"*, *"Remind me tomorrow at 9 to send the report"*. You get a desktop notification and the character pops up. Reminders survive restarts, and one that came due while TO'KA was closed shows up when it next starts. Ask *"what reminders do I have?"* or *"cancel the stretch reminder"*.
- *"What's the weather in Pune?"* gives the current weather and a 3-day forecast, from [Open-Meteo](https://open-meteo.com) (free, no account).

---

## Teach TO'KA: it improves itself

Ask in chat, and TO'KA changes itself in ways that are always easy to undo:

| Ask | What happens | Undo |
|---|---|---|
| *"Make the notch dark blue"*, *"bigger text"*, *"make yourself green"* | Changes its theme (accent, notch, panel, text size, character colour) | Settings → Make TO'KA yours → **Reset look** |
| *"From now on keep replies short"*, *"call me Dhanesh"* | Adds a **standing instruction** that every brain follows. It asks you first. | Edit or clear it in Settings → Make TO'KA yours |
| *"Learn the meeting-notes skill"*, *"save how we just did that as a skill"* | Installs a gallery skill or writes a new one | Delete the skill's folder |
| *"Connect a knowledge graph"*, *"give yourself access to ~/Projects"* | Adds a plugin. It asks you first. | Settings → Plugins → **Remove** |

---

## Troubleshooting

| Problem | Fix |
|---|---|
| Character or notch doesn't appear (Linux) | Run `toka` from a terminal to see errors. On Wayland make sure XWayland is available (default on GNOME). Blank transparent window: the app already sets `WEBKIT_DISABLE_DMABUF_RENDERER=1`; update your GPU driver if it persists. |
| A CLI shows **Not found** | Install it (see [the table](#cli-agents-install-and-sign-in)), run it once in a terminal, then **Scan again**. If it's installed somewhere unusual, add that folder to `PATH` and restart TO'KA. |
| **Sign in** opens no terminal (Linux) | TO'KA tries GNOME Terminal, Ptyxis, Console, Konsole, Xfce Terminal, `x-terminal-emulator`, Alacritty, kitty, WezTerm and xterm. Install one, or run the login command shown on hover yourself (e.g. `codex login`). |
| A CLI keeps saying **Sign-in needed** after logging in | Close the terminal and press **Scan again**. For Claude Code, `claude auth status` must say `"loggedIn": true`. |
| Every task says "*X hit its usage limit*" | That subscription is out for now. Sign in to another CLI or add an API key, so TO'KA has a backup. Hover **Resting** to see when it comes back. |
| "Tried … and none could finish" | Every brain in the chain failed. The message ends with the last error; usually all backups are signed out or offline. |
| Tokens show `≈` | That brain doesn't report usage (Hermes, Aider, or an old CLI version), so the count is estimated. |
| Extension says *Waiting for the TO'KA app…* | TO'KA must be running. Check that the code pasted into the extension matches Settings → Your browser. |
| "No Chrome found" / browser won't open | Install Chrome, Chromium, Brave or Edge from the vendor (not the Snap), or use the extension with your browser. |
| Video summary has no transcript | The video has no captions, or YouTube didn't share them. TO'KA summarises from the description and comments instead. |
| Music doesn't start | Browsers block autoplay sometimes: press play once in that tab. For Spotify, sign in to the web player in that browser. |
| Mic: "No microphone found" / it never hears me | Plug in or choose a mic in your system's sound settings (Linux: Settings → Sound → Input; Windows: also allow *desktop apps* under Privacy → Microphone). Speak a little louder or closer; a very noisy room can hide the pause, so click the mic to finish. |
| Voice text is wrong | Switch to **Accurate** or **Best** in Settings → Voice, and pick your language for the *any language* models. |
| Voice model download fails | Needs a connection to `huggingface.co`. If the file doesn't match its checksum it's deleted; just try again. |
| Antigravity can't use TO'KA's tools | Settings → How the CLI works → **Connect TO'KA's tools**. |
| Keyboard / screen control asks every time (Linux) | Tick **remember** in the GNOME permission dialog. |
| Document conversion fails | Install LibreOffice (`sudo apt install libreoffice` / [download](https://www.libreoffice.org/download/) on Windows). |
| Ollama models missing | Start Ollama (`ollama serve`) and pull a model (`ollama pull qwen3:8b`). |

**Logs:** on Linux run `toka` from a terminal; webview errors are printed there too. On Windows there's no log window; [open an issue](https://github.com/Itsmedexexplorer/TOKA/issues) describing what you did and what happened.

---

## Where TO'KA keeps its files

| | Linux | Windows |
|---|---|---|
| Data folder | `~/.local/share/dev.toka.companion/` | `%APPDATA%\dev.toka.companion\` |
| Settings and API keys | `settings.json` (user-only permissions) | same folder |
| Memory about you | `memory.json` | same folder |
| Listening history, daily usage | `store/media-history.json`, `store/usage.json` | same folder |
| Skills | `skills/` | same folder |
| Plugins, reminders | `store/plugins.json`, `store/reminders.json` | same folder |
| Voice models | `voice/` | same folder |
| TO'KA's own browser profile | `browser-profile/` | same folder |
| App files | `/usr/lib/TOKA/` (`.deb`) | `%LOCALAPPDATA%\TOKA\` |

Deleting the data folder resets TO'KA completely.

---

## Privacy and security

- Everything runs locally. Prompts go only to the brain **you** choose (and to your backup brains, if a task fails over).
- API keys, settings, memory, listening history and usage totals stay in your data folder (permissions `600` on Linux).
- TO'KA never reads CLI login tokens. It runs the CLI binary, and **Sign in** runs the CLI's own login in a terminal you can see.
- The local servers (`127.0.0.1:47823` MCP for CLIs, `127.0.0.1:47824` for the extension) accept only local connections with a secret token. The MCP server rejects requests from web pages (any `Origin` header), and the bridge accepts only browser-extension origins holding the pairing code.
- Voice input is turned into text on your computer. Audio is never saved or uploaded; only the resulting text is sent, as if you had typed it. The microphone is on only while the mic button glows.
- Video summaries read public video data or your own open tab. The music taste profile is built from your local history and is only sent to a brain when you ask for music.
- TO'KA can run commands and control apps, so keep approvals on for anything you're unsure about, and use brains you trust.

## License

Free to download and use. The source code is private and all rights are reserved; see [LICENSE](LICENSE).
