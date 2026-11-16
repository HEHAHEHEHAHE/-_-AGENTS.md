# ⚛️ hBN Quantum Photonics Paper Wiki

[![GitHub Pages](https://img.shields.io/badge/Deployment-GitHub%20Pages-blue.svg)](https://pages.github.com/)
[![Architecture](https://img.shields.io/badge/Pattern-Karpathy%20LLM%20Wiki-success.svg)](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
[![Schema](https://img.shields.io/badge/Schema-AGENTS.md-orange.svg)](AGENTS.md)

An AI-collaborative academic paper wiki and knowledge base focusing on **Hexagonal Boron Nitride (hBN)**, **Blue Quantum Emitters (Single-Photon Sources)**, and **Stark Effect Tuning**.

---

## 🌟 Key Features

1. **Karpathy's Three-Layer Architecture**:
   - `raw/`: Read-only source documents and raw literature extracts.
   - `wiki/`: AI-maintained living knowledge base (paper deconstructions, concepts, index, log).
   - `AGENTS.md`: The rulebook and schema that governs formatting, IMRaD structure, and terminology.
2. **Strict IMRaD & 4-Step Figure Deep Dive**:
   - Every paper is deconstructed through *Introduction*, *Methods*, *Results*, and *Discussion*.
   - Key figures undergo systematic 4-step analysis: *Visual Component Decomposition*, *Data & Mechanism Flow*, *Physical Significance*, and *Quantitative Takeaways*.
3. **Pure Static & Serverless**:
   - Powered by **Docsify** + **KaTeX**, allowing zero-build instantaneous deployment directly onto **GitHub Pages**.

---

## 📂 Directory Layout

```text
├── AGENTS.md                  # Master AI Schema & Operating Guidelines
├── index.html                 # Docsify Frontend Entry (KaTeX, Search, Sidebar)
├── README.md                  # Project Overview
├── raw/                       # Immutable Raw Paper Sources
│   └── 2021_noh_giant_stark_blue_hbn.txt
└── wiki/                      # Living Wiki Knowledge Base
    ├── _sidebar.md            # Sidebar Navigation
    ├── index.md               # Homepage & Paper Catalog Matrix
    ├── log.md                 # Chronological Ingestion & Linting Log
    ├── papers/                # Paper Reviews (IMRaD + Figure Deconstructions)
    │   └── 2021_noh_giant_stark_blue_hbn.md
    └── concepts/              # Cross-Linked Domain Concepts
        ├── blue-quantum-emitters.md
        ├── hbn-defects.md
        └── stark-effect-tuning.md
```

---

## 🚀 Local Preview

You can preview this wiki locally with any simple HTTP server:

```powershell
# Using Python
python -m http.server 3000

# Or using Node.js npx
npx serve .
```

Then open `http://localhost:3000` in your browser.

---

## 🌐 Deploy to GitHub Pages

1. Push this repository to GitHub.
2. Go to **Settings** > **Pages**.
3. Under **Branch**, select `main` (or `master`) and directory `/ (root)`.
4. Click **Save**. Your website will be live in ~1 minute!
