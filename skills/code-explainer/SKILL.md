---
name: code-explainer
description: Explain code, an error message or a stack trace in plain language, find the likely cause, and suggest a fix.
category: Developer
---

# Code explainer

1. Get the code or error: pasted text, `clipboard_read`, a file (`file_read`), the page (`browser_read`, e.g. a GitHub file or Stack Overflow), or the screen (`screen_capture`) for an error dialog.
2. For code: say what it does in one paragraph, then walk through it section by section. Point out bugs, edge cases and simpler alternatives.
3. For an error: say what it means in plain words, the most likely cause in this context, and the fix as a minimal code change. If there are several possible causes, rank them and say how to tell them apart.
4. Don't run commands that change anything; if a command would help diagnose (e.g. checking a version), show it and ask first.
