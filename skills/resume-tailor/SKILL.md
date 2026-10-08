---
name: resume-tailor
description: Tailor a resume and write a short cover letter for a specific job posting, keeping everything truthful.
category: Career
---

# Resume tailor

1. Get the resume (an attached .docx/.pdf/.txt via `file_read`) and the job posting (a URL with `browser_open`, or pasted text).
2. Pull out the posting's must-haves: skills, tools, years, responsibilities, keywords.
3. Rewrite the resume:
   - Reorder and reword existing bullets to lead with the most relevant experience; start bullets with strong verbs and add numbers the resume already contains.
   - Mirror the posting's keywords **only where the user really has that skill**. Never add jobs, degrees, tools or numbers they didn't give you.
   - Keep it to one page for under ~8 years of experience.
4. Write a cover letter of at most 250 words: why this company, two matching achievements, and a call to action.
5. Save both with `create_docx` (`Resume – <Company>.docx`, `Cover letter – <Company>.docx`) and list what you changed and any gaps the user might address.
