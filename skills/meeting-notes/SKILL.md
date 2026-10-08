---
name: meeting-notes
description: Turn a messy meeting transcript, recording summary or rough notes into clean notes with decisions, action items and owners, saved as a Word file.
category: Work
---

# Meeting notes

1. Get the raw material: text the user pasted, a file they attached (`file_read`), or the clipboard (`clipboard_read`) if they say "from my clipboard".
2. Write the notes in this order:
   - **Summary**: 2–3 sentences.
   - **Decisions**: one bullet each.
   - **Action items**: a table with *Task · Owner · Due*. Use names from the notes; write "unassigned" rather than guessing.
   - **Open questions**.
3. Keep the speakers' wording for decisions; don't invent dates or owners.
4. Save with `create_docx` as `Meeting notes – <topic> – <date>.docx` in Documents, and tell the user where it is.
5. Offer to draft the follow-up email (see the `email-writer` skill if installed).
