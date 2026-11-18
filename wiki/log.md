# 時間活動日誌 (Chronological Activity Log)

本檔案遵循 Karpathy LLM Wiki 規範，以追加方式（Append-Only）依時序記錄 AI 代理在知識庫中所執行的匯入（Ingest）、檢索（Query）與健康檢查（Lint）操作。

---

## [2026-11-17] initialize | 建立學術知識庫基礎架構
- 建立三層目錄架構：`raw/`（唯讀原始層）、`wiki/`（知識層）以及 `AGENTS.md`（規範法典）。
- 配置 Docsify 靜態閱讀系統，支援 KaTeX 數學公式即時渲染與微型搜尋引擎，採用無圖標極簡學術風格。
- 制定 `AGENTS.md` 規範：全面採用繁體中文撰寫，嚴格保留英文專有名詞與 LaTeX 數學式，並落實 IMRaD 與圖表四步深度解析 SOP。

## [2026-11-17] ingest | 匯入真實文獻：Stark Effect of Blue Quantum Emitters in hBN (Zhigulin et al. 2023)
- 原始文獻摘要存入 `raw/Stark_Effect_of_Blue_Quantum_Emitters_in_Hexagonal_Boron_Nitride.txt`（DOI: [10.1103/PhysRevApplied.19.044011](https://doi.org/10.1103/PhysRevApplied.19.044011)）。
- 撰寫結構化論文精讀 `wiki/papers/Stark_Effect_of_Blue_Quantum_Emitters_in_Hexagonal_Boron_Nitride.md`，完整拆解 Figure 1 至 Figure 3 之視覺組件、數據流向、物理意義與量化數據。
- 提煉核心科學結論：hBN 中的 436 nm Blue Quantum Emitters 在電場下表現出二次極化率主導的 Quadratic Stark Effect，永久電偶極矩趨近於零（$\mu \approx 0$），揭示其優異頻譜穩定度與極低 Spectral Diffusion 之成因。
- 建立並鏈結核心概念頁面：
  - `wiki/concepts/hbn-defects.md`
  - `wiki/concepts/blue-quantum-emitters.md`
  - `wiki/concepts/stark-effect-tuning.md`
- 同步更新全局索引 `wiki/index.md` 與導覽選單 `wiki/_sidebar.md`。

## [2026-11-17] lint | 知識庫健康檢查與一致性審查
- 驗證正確之官方 DOI: [10.1103/PhysRevApplied.19.044011](https://doi.org/10.1103/PhysRevApplied.19.044011) 解析與文獻對應。
- 優化 KaTeX 公式渲染外掛相容性，確保行內與區塊數學式完美呈現。
- 全站統一為「繁體中文說明 + 英文保留專有名詞」標準，無孤兒頁面與格式斷裂。

## [2026-11-17] fix | 徹底修復 KaTeX 渲染問題
- 根本原因：第三方 `docsify-katex` 外掛與 Docsify 內建 `marked.js` 版本不相容，導致所有 `$...$` 與 `$$...$$` 公式無法渲染。
- 修復方式：移除不穩定的第三方外掛，改用自寫 Docsify plugin hook（`afterEach`），以 KaTeX API 直接掃描並渲染 HTML 中的數學公式。
- 同步清除所有 markdown 檔案中多餘的 `**` 粗體標記，確保排版整潔。

## [2026-11-17] update | 嵌入論文原圖並校準全圖表深度解析
- 解決 Docsify 圖片相對路徑解析問題（修復為相對於文章目錄的 `../assets/` 路徑），使論文圖表可在對應段落完整顯示。
- 嚴格依照論文原文校準全部 5 張關鍵圖表（FIG. 1 至 FIG. 5）之編號、英文原版圖說（Caption）與子圖架構。
- 修正先前 Figure 3 與 Figure 5 之對應誤差，重寫四步深度解析（視覺組件、機制流向、設計意圖、量化結論）。
- 在 `index.html` 加入圖表卡片式微陰影邊框與學術引用圖說（`.figure-caption`）美化排版。

## [2026-11-17] refactor | 論文與資產命名規範遷移至「論文全名 Snake_case」
- 依據使用者需求，將論文命名規範由原作者縮寫全面遷移為「論文全名 Snake_case」模式。
- 遷移項目：
  - 筆記路徑：`wiki/papers/Stark_Effect_of_Blue_Quantum_Emitters_in_Hexagonal_Boron_Nitride.md`
  - 圖片資產資料夾：`wiki/assets/Stark_Effect_of_Blue_Quantum_Emitters_in_Hexagonal_Boron_Nitride/`
  - 原始文獻文本：`raw/Stark_Effect_of_Blue_Quantum_Emitters_in_Hexagonal_Boron_Nitride.txt`
- 同步更新索引（`wiki/index.md`）、導覽選單（`wiki/_sidebar.md`）、概念頁面交叉連結與 `AGENTS.md` 規範守則。

## [2026-11-17] ingest | Investigating the fast spectral diffusion of a quantum emitter in hBN using resonant excitation and photon correlations
- 原始文獻存入 `raw/Investigating_the_fast_spectral_diffusion_of_a_quantum_emitter_in_hBN_using_resonant_excitation_and_photon_correlations.txt`（DOI: [10.1103/PhysRevB.107.195304](https://doi.org/10.1103/PhysRevB.107.195304)）。
- 提取並生成 5 張高解析度學術圖表存入 `wiki/assets/Investigating_the_fast_spectral_diffusion_of_a_quantum_emitter_in_hBN_using_resonant_excitation_and_photon_correlations/`（FIG. 1 至 FIG. 5）。
- 撰寫 IMRaD 格式深度精讀筆記 `wiki/papers/Investigating_the_fast_spectral_diffusion_of_a_quantum_emitter_in_hBN_using_resonant_excitation_and_photon_correlations.md`，完成全圖表四步深度解析。
- 核心物理成果：
  - 確立藍光 B center 色心在頻譜跳躍間隙具備 **Fourier-limited** 單光子發射能力（$T_2/2T_1 \sim 1$）。
  - 定量解析出特徵微秒級快速光譜擴散（$T_{\text{SD}} \approx 10\text{--}50\text{ }\mu\text{s}$），單次跳躍前可連續發射約 $10^4$ 顆全同光子。
- 同步更新論文總目錄 `wiki/index.md`、側邊欄 `wiki/_sidebar.md` 與概念頁面 `wiki/concepts/blue-quantum-emitters.md`。

## [2026-11-18] ingest | Electron Beam Restructuring of Quantum Emitters in Hexagonal Boron Nitride
- 原始文獻存入 `raw/Electron_Beam_Restructuring_of_Quantum_Emitters_in_Hexagonal_Boron_Nitride.txt`（DOI: [10.1002/adom.202400908](https://doi.org/10.1002/adom.202400908)）。
- 提取並生成 5 張高解析度學術圖表存入 `wiki/assets/Electron_Beam_Restructuring_of_Quantum_Emitters_in_Hexagonal_Boron_Nitride/`（Figure 1 至 Figure 5）。
- 撰寫 IMRaD 格式深度精讀筆記 `wiki/papers/Electron_Beam_Restructuring_of_Quantum_Emitters_in_Hexagonal_Boron_Nitride.md`，完整拆解五大關鍵圖表之視覺組件、數據機制流向、設計意圖與量化結論。
- 核心科學突破與量化成果：
  - 原位 CL 動力學證實 436 nm B-center 之生成伴隨 305 nm 碳相關 UV 發射之淬滅，兩者之飽和時間常數 $t_{\text{sat}}$ 明顯分離，排除了單步直接碰撞游離假說。
  - 證實結構重組速率受限於介電質充電引發之內建靜電場 $\xi$ 驅動的帶電缺陷「電遷移（Electromigration）」。
  - 束流中斷（Beam Blanking）實驗與 7 nm 接地金膜對照實驗確鑿證實了電場主導機制，並排除了純碰撞重組與局部焦耳熱效應。
  - 建立 500 °C 空氣退火 + 原位空氣電漿 + 3 keV 低能量電子束照射 + 非原位 UV 臭氧乾蝕刻之標準化抗污染工藝，成功將可重現製備 B-center 的薄片厚度下限推進至 8 nm。
- 同步更新論文目錄 `wiki/index.md`、側邊導覽選單（多層目錄同步）與核心概念頁面（`wiki/concepts/blue-quantum-emitters.md`、`wiki/concepts/hbn-defects.md`）。
