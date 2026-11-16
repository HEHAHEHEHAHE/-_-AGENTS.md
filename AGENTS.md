# AGENTS.md - hBN Quantum Photonics Paper Wiki Schema

> **Project Mission**:  
> A persistent, compounding academic knowledge base focused on **Hexagonal Boron Nitride (hBN)**, **Blue Quantum Emitters (Blue Single-Photon Emitters)**, and the **Stark Effect (DC/AC Stark Tuning & Dipole Interactions)**.  
> This schema defines rules and workflows for AI agents to ingest raw research literature, maintain cross-linked wiki pages, deconstruct figures deeply, and enable scalable academic exploration.

---

## 1. Architecture: The Three Layers (三層架構)

Following the Karpathy LLM Wiki paradigm, this repository is strictly organized into three distinct layers:

1. **`raw/` (Immutable Source Layer)**:
   - Contains raw literature extracts, paper abstracts, text dumps, or reference notes.
   - **Rule**: Read-only for analysis. Never alter or delete existing raw records. New sources are appended as `.txt` or `.md`.
2. **`wiki/` (Living Knowledge Layer)**:
   - Maintained entirely by AI agents.
   - Contains standard deconstructions of papers (`wiki/papers/`), cross-paper concept definitions (`wiki/concepts/`), global index (`wiki/index.md`), and chronological changelog (`wiki/log.md`).
3. **`AGENTS.md` (Schema & Rule Layer)**:
   - The single source of truth for AI agents regarding structure, nomenclature, figure analysis, and formatting.

---

## 2. Domain & Nomenclature Rules (領域專有名詞規範)

To preserve scientific rigor in quantum optics and 2D materials science:
- **Core Terminology MUST remain in English**: Do not translate domain-specific scientific terms into Chinese unless providing an initial explanatory note.
  - *Materials & Defects*: `Hexagonal Boron Nitride (hBN)`, `Point Defects`, `Carbon-related Defect Complexes`, `Boron Vacancy ($V_B^-$)`, `Nitrogen Vacancy ($V_N$)`, `Color Centers`.
  - *Optical & Quantum Properties*: `Blue Quantum Emitters`, `Single-Photon Emitter (SPE)`, `Zero-Phonon Line (ZPL)`, `Phonon Sideband (PSB)`, `Debye-Waller Factor`, `Second-Order Autocorrelation Function ($g^{(2)}(\tau)$)`, `Photoluminescence (PL)`.
  - *Field & Tuning Physics*: `Stark Effect`, `Quantum-Confined Stark Effect (QCSE)`, `Permanent Electric Dipole Moment ($\vec{\mu}$)`, `Polarizability ($\alpha$)`, `Spectral Diffusion`, `Electric Field Tuning`.
- **Mathematical Equations**: Must use standard LaTeX markdown syntax (e.g. `$\Delta E = -\vec{\mu} \cdot \vec{F} - \frac{1}{2}\alpha F^2$`).

---

## 3. Paper Deconstruction Standard: IMRaD + Figure Deep Dive

Every paper entry created in `wiki/papers/{year}_{first_author}_{keyword}.md` must strictly adhere to this template:

```markdown
# [Paper Title in English]

- **Authors**: Author list
- **Journal / Conference**: e.g., Nano Letters / Nature Materials (Year)
- **DOI / Link**: URL or DOI
- **Keywords / Tags**: #hBN #BlueEmitter #StarkEffect #SinglePhotonSource

---

## Executive Summary (TL;DR)
A concise 2-3 sentence overview of the core problem, breakthrough, and key metric achieved.

---

## I. Introduction & Motivation (Why?)
- **Current Problem / Bottleneck**: Limitations of existing emitters (e.g., spectral instability, low room-temperature brightness, uncontrolled emission wavelength).
- **Research Objective**: What gap does this paper aim to bridge?

## II. Methods & Experimental Setup (How?)
- **Sample Preparation**: Mechanical exfoliation, CVD growth, annealing conditions, substrate choice (e.g., $SiO_2/Si$, quartz).
- **Optical Characterization Setup**: Confocal PL microscopy, Hanbury Brown-Twiss (HBT) interferometry, cryogenic vs. room temperature setups.
- **Electric Field / Stark Setup**: Gate electrode fabrication, in-plane vs. out-of-plane field application.

## III. Figure & Table Deep Dive (關鍵圖表逐一深度解析)
> **MANDATORY**: For every key figure, complete the 4-part deconstruction. Never summarize a figure in a single sentence.

### Figure X: [Figure Caption / Title]
1. **Visual Component Decomposition (視覺組件拆解)**:
   - What are the sub-panels (a, b, c...)? What do axes, color maps, markers, and error bars represent?
2. **Data & Mechanism Flow (數據與物理機制流向)**:
   - Trace the curve or spectrum: Where does the excitation start, what resonance is observed, and how does the signal shift as voltage/power changes?
3. **Physical Significance (物理意義與設計意圖)**:
   - Why did the authors include this figure? What hypothesis does it validate or refute?
4. **Key Quantitative Takeaways (關鍵量化結論)**:
   - Specific values extracted (e.g., ZPL at 436 nm, Stark shift rate of $5.2\text{ nm}/(\text{V}/\text{nm})$, $g^{(2)}(0) = 0.08$).

## IV. Results & Quantitative Findings (What?)
- Spectral range (e.g., 400–450 nm blue emission).
- Purity of quantum light ($g^{(2)}(0) < 0.5$).
- Stark tuning magnitude and linearity (Linear dipole vs. Quadratic polarizability behavior).

## V. Discussion, Limitations & Future Work (So What?)
- **Physical Interpretation**: Defect candidate identification ($C_B V_N$, donor-acceptor pair, etc.).
- **Unresolved Questions / Limitations**: Environmental instability, blinking, spectral diffusion under strong bias.
- **Inspiration for Future Research**: Device integration potential or optical cavity coupling.

---

## Cross-Referenced Concepts (概念互聯)
- [[hbn-defects|Hexagonal Boron Nitride Defects]]
- [[blue-quantum-emitters|Blue Single-Photon Emitters]]
- [[stark-effect-tuning|Stark Effect in 2D Materials]]
```

---

## 4. AI Operational Workflows (三大核心操作 SOP)

### A. Ingest Workflow (論文匯入)
When user supplies a new paper:
1. Save raw source into `raw/{filename}.txt` or `raw/{filename}.md`.
2. Extract metadata and draft the structured paper review under `wiki/papers/{year}_{first_author}_{keyword}.md`.
3. Ensure every referenced Figure is rigorously broken down using the 4-step framework.
4. Extract or update related concept pages in `wiki/concepts/`.
5. Update `wiki/index.md` (add entry under Paper Catalog table).
6. Update `wiki/_sidebar.md` (add navigation link under relevant category).
7. Append chronological entry in `wiki/log.md`:
   `## [YYYY-MM-DD] ingest | {Paper Title}`

### B. Query & Synthesis Workflow (提問與知識複利)
When user asks a domain research question (e.g., *"Compare dipole moments of blue emitters vs. red emitters in hBN"*):
1. Read `wiki/index.md` to identify relevant candidate pages.
2. Synthesize answer referencing existing wiki entries with Markdown links.
3. If the answer generates new cross-paper insight, file it into `wiki/concepts/` or `wiki/comparisons/` and record in `wiki/log.md`.

### C. Lint Workflow (知識庫健康檢查)
Periodically check:
- Are there orphan pages without inbound links?
- Are any figure deep dives missing quantitative numbers?
- Are scientific terms translated inconsistently?
- Are all links in `_sidebar.md` and `index.md` valid?

---

## 5. File Naming & Directory Conventions

- Paper files: `wiki/papers/{year}_{first_author_lowercase}_{short_topic}.md` (e.g., `2019_fournier_blue_emitter_stark.md`)
- Concept files: `wiki/concepts/{concept_kebab_case}.md` (e.g., `stark-effect-tuning.md`)
- Navigation files: `wiki/_sidebar.md` and `wiki/index.md` must strictly use relative links.
- Image assets (if downloaded): `wiki/assets/{paper_keyword}/fig1.png`
