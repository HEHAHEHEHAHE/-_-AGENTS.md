# hBN Quantum Photonics Paper Wiki

> **Hexagonal Boron Nitride (hBN)、Blue Quantum Emitters 與 Stark Effect 學術知識庫**  
> 採用 **Karpathy LLM Wiki 架構**，以嚴格的 **IMRaD 格式** 與 **圖表四步深度解析** 維護。

---

## 關於本知識庫

傳統 RAG 在每次提問時都必須從零重新擷取片段，無法達成知識複利。本知識庫作為持續更新、互相鏈結的 Markdown 知識庫，將二維量子光學的文獻進行結構化整理。

### 三層架構說明
1. **`raw/`（不可變原始資料）**：未修改的論文摘要、筆記與引文。
2. **`wiki/`（AI 維護之知識層）**：結構化論文精讀、相互鏈結的概念頁面與時間日誌。
3. **`AGENTS.md`（規範法典）**：指導 AI 進行 IMRaD 解析、專有名詞英文保留及圖表深度拆解的規則手冊。

---

## 論文索引總覽 (Paper Catalog)

| 年份 | 論文名稱 | 第一作者 | ZPL 放光波長 | 主導 Stark 機制 | $g^{(2)}(0)$ | 筆記連結 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **2023** | Stark Effect of Blue Quantum Emitters in Hexagonal Boron Nitride | Ivan Zhigulin et al. | 435.8 nm | 二次方極化率 (Quadratic, $\mu \approx 0$) | 0.08 | [閱讀精讀筆記](wiki/papers/2023_zhigulin_stark_blue_hbn.md) |

---

## 核心物理概念索引 (Core Concepts)

- [Hexagonal Boron Nitride Defects](wiki/concepts/hbn-defects.md)：深入探討二維寬能隙材料中的點缺陷（$V_B^-$、$C_B V_N$、碳複合缺陷）與對稱性破缺機制。
- [Blue Quantum Emitters](wiki/concepts/blue-quantum-emitters.md)：高能量藍光單光子發射體（400–450 nm）之光電特性與極低光譜擴散優勢。
- [Stark Effect in 2D Materials](wiki/concepts/stark-effect-tuning.md)：外加電場下的線性偶極位移與二次極化率位移數學模型（$\Delta E = -\vec{\mu}\cdot\vec{F} - \frac{1}{2}\alpha F^2$）。

---

## 最近動態 (Recent Activity)
請參閱 [時間日誌 (wiki/log.md)](wiki/log.md) 查看文獻匯入、概念鏈結與健康檢查紀錄。

---

## 如何匯入新論文 (Ingest SOP)
若要新增論文，請向 AI 提供原始文字並指令：
> 「這是一篇關於 hBN 量子發射體的新論文。請依照 `AGENTS.md` 規則匯入至 `raw/`，並於 `wiki/papers/` 生成包含圖表深度解析的 IMRaD 筆記，同時更新 `wiki/index.md`、鏈結概念並記入日誌。」
