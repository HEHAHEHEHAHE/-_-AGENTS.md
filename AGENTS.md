# AGENTS.md - hBN 量子光子學論文 Wiki 架構

> **專案使命**：
> 建立一個持續累積、可擴展的學術知識庫，聚焦於 **Hexagonal Boron Nitride (hBN)**、**Blue Quantum Emitters** 與 **Stark Effect**。本檔案規範 AI 代理在 *raw*、*wiki* 兩層之間的工作流程、文件命名、術語使用，以及 **IMRaD + 圖表四步深度解析** 的寫作標準。

---

## 1. 三層架構

1. **`raw/`（不可變原始層）**：
   - 存放原始文獻、摘要、筆記等文字檔案，**僅允許讀取**，不允許被 AI 修改或刪除。
2. **`wiki/`（活躍知識層）**：
   - 由 AI 完全維護，包含論文分解 (`wiki/papers/`)、概念說明 (`wiki/concepts/`)、全局索引 (`wiki/index.md`) 與時間日誌 (`wiki/log.md`)。
3. **`AGENTS.md`（規則層）**：
   - 本檔案即是 AI 必須遵守的唯一規範，涵蓋目錄結構、命名規則、術語保留（英文）及圖表解析流程。

---

## 2. 領域專有名詞規範（英文保留）

- **材料與缺陷**：`Hexagonal Boron Nitride (hBN)`、`Point Defects`、`Carbon-related Defect Complexes`、`Boron Vacancy ($V_B^-$)`、`Nitrogen Vacancy ($V_N$)`、`Color Centers`。
- **光學與量子性質**：`Blue Quantum Emitters`、`Single-Photon Emitter (SPE)`、`Zero-Phonon Line (ZPL)`、`Phonon Sideband (PSB)`、`Debye-Waller Factor`、`Second-Order Autocorrelation Function ($g^{(2)}(\tau)$)`、`Photoluminescence (PL)`。
- **場與調控物理**：`Stark Effect`、`Quantum-Confined Stark Effect (QCSE)`、`Permanent Electric Dipole Moment ($\vec{\mu}$)`、`Polarizability ($\alpha$)`、`Spectral Diffusion`、`Electric Field Tuning`。
- **數學式**必須使用 LaTeX（如 `$\Delta E = -\vec{\mu}\cdot\vec{F} - \frac{1}{2}\alpha F^2$`），且**不允許自行翻譯**上述英文術語。

---

## 3. 論文分解標準：IMRaD + 圖表四步深度解析

每篇放在 `wiki/papers/{year}_{first_author}_{keyword}.md` 的論文筆記必須遵守以下模板（全部採用繁體中文說明，專有名詞保持英文）：

```markdown
# [Paper Title（英文）]

- **Authors**: 作者名單
- **Journal / Conference**: 期刊或會議 (年份)
- **DOI / Link**: DOI 或 URL
- **Keywords / Tags**: #hBN #BlueEmitter #StarkEffect #SinglePhotonSource

---

## Executive Summary (TL;DR)
簡要 2–3 句說明研究動機、突破與核心成果。

---

## I. Introduction & Motivation (Why?)
- **Current Problem / Bottleneck**：描述現有技術的限制。
- **Research Objective**：本篇論文欲解決的問題。

## II. Methods & Experimental Setup (How?)
- **Sample Preparation**：樣本製備流程。
- **Optical Characterization Setup**：光學測量設備與條件。
- **Electric Field / Stark Setup**：電場施加方式與裝置。

## III. Figure & Table Deep Dive (關鍵圖表逐一深度解析)
> **必填**：每張重要圖表必須完整填寫以下四項。

### Figure X: [圖表說明]
1. **視覺組件拆解**：說明子圖、坐標、色彩、標記、誤差棒等。
2. **資料與機制流向**：追蹤曲線或光譜的變化，說明電壓/功率改變時的物理過程。
3. **物理意義與設計意圖**：作者為何放此圖，驗證了什麼假設。
4. **關鍵量化結論**：列出具體數值（e.g., ZPL 位於 436 nm、Stark 位移率 $5.2\text{ nm}/(\text{V}/\text{nm})$、$g^{(2)}(0)=0.08$）。

## IV. Results & Quantitative Findings (What?)
列出主要實驗結果與量化指標。

## V. Discussion, Limitations & Future Work (So What?)
- **Physical Interpretation**：對缺陷候選者的推測。
- **Unresolved Questions / Limitations**：尚未解決的問題或限制。
- **Inspiration for Future Research**：未來研究方向或應用前景。

---

## Cross-Referenced Concepts (概念互聯)
- [[hbn-defects|Hexagonal Boron Nitride Defects]]
- [[blue-quantum-emitters|Blue Single-Photon Emitters]]
- [[stark-effect-tuning|Stark Effect in 2D Materials]]
```

---

## 4. AI 工作流程（SOP）

### A. Ingest（匯入）
1. **raw**：將使用者提供的原始論文文字或 PDF 轉為 `.txt`，存入 `raw/`（保持不變）。
2. **wiki**：根據上述 IMRaD 模板產生 `wiki/papers/` 筆記，並對每張關鍵圖表執行四步深度解析。
3. **概念頁面**：若筆記中提及新概念，則在 `wiki/concepts/` 建立或更新對應頁面，並在 `wiki/index.md` 加入交叉連結。
4. **索引 & 側邊欄**：自動在 `wiki/index.md` 與 `wiki/_sidebar.md` 登記新條目。
5. **日誌**：在 `wiki/log.md` 以 `## [YYYY-MM-DD] ingest | {Paper Title}` 形式追加紀錄。

### B. Query（查詢）
1. 讀取 `wiki/index.md` 找到相關頁面。
2. 結合多篇筆記與概念頁面給出答案，答案若具新知識則寫入 `wiki/concepts/` 或 `wiki/comparisons/`，同時更新索引與日誌。

### C. Lint（健康檢查）
- 檢查是否有孤立頁面、缺少圖表量化、術語翻譯不一致、連結失效等問題，並自動修正或產生待人工審核的報告。

---

## 5. 檔案命名與目錄慣例
- 論文筆記：`wiki/papers/{Paper_Title_Snake_Case}.md`（以完整論文標題 Snake_case 命名，例：`Stark_Effect_of_Blue_Quantum_Emitters_in_Hexagonal_Boron_Nitride.md`）。
- 原始文件：`raw/{Paper_Title_Snake_Case}.txt`。
- 概念說明：`wiki/concepts/{concept_kebab_case}.md`（例：`stark-effect-tuning.md`）。
- 圖片資源（若有）：`wiki/assets/{Paper_Title_Snake_Case}/figX.png`（專屬獨立資料夾，存放對應圖表）。
- 索引與側欄：`wiki/index.md`、`wiki/_sidebar.md` 必須使用相對路徑連結。

---

> **注意**：所有文件皆使用 **繁體中文說明**，但 **專有名詞與數學式** 必須保留英文與 LaTeX，確保跨語言檢索與 AI 解析的一致性。
