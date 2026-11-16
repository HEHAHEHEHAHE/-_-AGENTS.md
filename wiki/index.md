# ⚛️ hBN Quantum Photonics Paper Wiki

> **A persistent, compounding research wiki for Hexagonal Boron Nitride (hBN), Blue Quantum Emitters, and Stark Effect tuning.**  
> Powered by the **Karpathy LLM Wiki Architecture** & structured via strict **IMRaD + 4-Step Figure Deep Dive** rules.

---

## 📖 About this Knowledge Base

In traditional RAG workflows, knowledge is re-extracted from scratch on every prompt without compounding. This knowledge base serves as a **living, persistent compiler** of quantum optical literature in 2D materials.

### Architecture Overview
1. **`raw/` (Immutable Sources)**: Unmodified abstracts, citations, and experimental logs.
2. **`wiki/` (Agent-Maintained Knowledge)**: Structured paper reviews, cross-linked concepts, and synthesis summaries.
3. **`AGENTS.md` (Governing Schema)**: The master rulebook instructing AI agents on IMRaD formatting, terminology preservation, and Figure deconstruction.

---

## 📚 Paper Catalog (論文索引總覽)

| Year | Title | First Author | ZPL Emission | Stark Tuning Range | $g^{(2)}(0)$ | Link |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **2021** | Giant Stark Effect in Blue Quantum Emitters in Hexagonal Boron Nitride | G. Noh et al. | $435.8\text{ nm}$ | $15.2\text{ meV}$ ($5.5\text{ nm}$) | $0.12$ | [Read Review](wiki/papers/2021_noh_giant_stark_blue_hbn.md) |

---

## ⚛️ Core Concepts Index (核心物理概念)

- **[Hexagonal Boron Nitride Defects](wiki/concepts/hbn-defects.md)**: Deep dive into 2D wide-bandgap point defects ($V_B^-$, $C_B V_N$, donor-acceptor pairs) and symmetry-breaking mechanisms.
- **[Blue Quantum Emitters](wiki/concepts/blue-quantum-emitters.md)**: Optoelectronic characteristics of high-frequency blue Single-Photon Emitters (400–450 nm).
- **[Stark Effect in 2D Materials](wiki/concepts/stark-effect-tuning.md)**: Mathematical framework of linear dipole vs. quadratic polarizability shifts ($\Delta E = -\vec{\mu}\cdot\vec{F} - \frac{1}{2}\alpha F^2$).

---

## 🕒 Recent Activity (最近動態)
Check the [Chronological Log](wiki/log.md) for recent literature ingests, concept cross-links, and lint passes.

---

## 🛠️ How to Ingest a New Paper (如何新增論文)
To append a new paper to this wiki, prompt the agent:
> *"Here is a new paper on hBN quantum emitters. Please ingest it according to `AGENTS.md` into `raw/`, generate the paper deconstruction with Figure deep dives in `wiki/papers/`, update `wiki/index.md`, link concepts, and log the action."*
