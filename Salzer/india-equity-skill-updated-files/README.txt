RE-ADD THE "india-equity-deep-dive" SKILL (it was deleted from the Claude app)
=============================================================================

What happened
-------------
The skill was deleted from the Claude app, which removed it from your cloud
skill library. The on-disk skills folder
  ~/Library/Application Support/Claude/local-agent-mode-sessions/.../skills/
is only a CACHE that re-syncs from the cloud - so restoring the folder on disk
does NOT bring the skill back; the next sync just deletes it again. The skill can
only be recovered by re-adding it through the Claude app (which writes to the
cloud, then the cloud materializes it back to disk).

These files are the UPDATED version (16 sections, amber "Trading Terminal" design,
with the Business Model & Value Chain section). Use them to re-create the skill.

How to re-add it (in the Claude app)
------------------------------------
Option A - Import the zip (if your Skills settings shows an Import/Upload option):
  1. Claude app -> Settings -> Skills -> Create/Add skill -> Import.
  2. Choose  india-equity-deep-dive.zip  (in this folder).

Option B - Create it manually:
  1. Claude app -> Settings -> Skills -> Create a new skill, name it
     exactly:  india-equity-deep-dive
  2. Add these three files (create the references/ subfolder if asked):
       SKILL.md                          ->  SKILL.md
       references/report-sections.md     ->  report-sections.md
       references/html-design-system.md  ->  html-design-system.md
     For each, paste the RAW markdown contents of the matching file here.

Option C - Let Claude rebuild it (you have a "skill-creator" skill):
  In the Claude app, say: "Recreate a skill named india-equity-deep-dive from the
  files in <this folder / the attached zip>." and let it register the skill.

Files in this folder
---------------------
  india-equity-deep-dive.zip        <- ready-to-import skill (SKILL.md + references/)
  SKILL.md                          <- raw source, for manual paste
  references/report-sections.md     <- raw source (the 16-section spec)
  references/html-design-system.md  <- raw source (the terminal design)

Tip: when pasting manually, copy the raw Markdown (open in a plain-text editor),
not a rendered preview, so the frontmatter and headings stay intact.
