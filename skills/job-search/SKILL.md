---
name: job-search
description: Find current job openings that match the user's role, location and skills, and save a shortlist to Excel.
category: Career
---

# Job search

1. Ask for the role, location or remote, experience level, must-have skills, and any companies to include or avoid.
2. Search with `web_search` (e.g. `"<role>" "<city>" jobs site:linkedin.com/jobs OR site:naukri.com OR site:indeed.com`, plus company career pages). Open promising results with `browser_open` to check they are current and actually match.
3. Shortlist 10–15 roles: Company · Title · Location · Posted · Key requirements · Match notes · Link.
4. Save with `create_xlsx` as `Job shortlist – <role>.xlsx`, sorted by best match.
5. Never apply, sign in, or submit anything. Offer to tailor the resume for the top picks (the `resume-tailor` skill).
