---
name: flashcards
description: Make study flashcards and a short quiz from notes, a PDF, a web page or the video being watched.
category: Study
---

# Flashcards

1. Get the source: pasted notes, a file (`file_read`), a page (`browser_read` / `browser_open`), or the video playing (`youtube_video`).
2. Write 10–20 cards, one idea each:
   - Q: a specific question (not "What is chapter 3 about?").
   - A: one or two sentences, in the source's own terms.
   Mix definitions, "why" questions and small worked examples.
3. Add a 5-question multiple-choice quiz with the answers at the end.
4. Save with `create_xlsx` (columns Question, Answer, for importing into Anki or Quizlet) and/or `create_docx`. Offer to quiz them right now, one question at a time.
