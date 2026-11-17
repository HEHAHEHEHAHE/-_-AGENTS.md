# Stark Effect of Blue Quantum Emitters in Hexagonal Boron Nitride

- Authors: Ivan Zhigulin, Jake Horder, Viktor Ivády, Simon J. U. White, Angus Gale, Chi Li, Charlene J. Lobo, Miloš Toth, Igor Aharonovich, Mehran Kianinia
- Journal: Physical Review Applied, 19(4), 044011 (2023)
- DOI: [10.1103/PhysRevApplied.19.044011](https://doi.org/10.1103/PhysRevApplied.19.044011)
- Keywords / Tags: #hBN #BlueEmitter #StarkEffect #SinglePhotonSource #PointDefects

---

## 執行摘要 (Executive Summary / TL;DR)
本論文研究了六方氮化硼 Hexagonal Boron Nitride (hBN) 中發射波長約為 436 nm 的 Blue Quantum Emitters 在外加電場下的 Stark Effect。透過兩種獨立的電極結構（垂直結構產生面外電場、橫向結構產生面內電場），實驗揭示該藍光色心表現出以二次方極化率為主（Predominantly Quadratic Stark Effect）的光譜位移，其永久電偶極矩趨近於零（$\mu \approx 0$）。結合密度泛函理論（DFT）模擬，研究團隊進一步推測其缺陷結構候選者。這一物理特性解釋了該發射體具備優異光譜穩定性與極低 Spectral Diffusion 的深層原因。

---

## I. Introduction & Motivation (Why?)
- 現存問題與瓶頸 (Current Problem / Bottleneck)：  
  hBN 量子發射體在積體量子光子學中的廣泛採用受限於非均勻展寬（Inhomogeneous Broadening）。其主要成因是量子發射體附近的電荷躍遷所產生的波動電場，透過與缺陷電偶極的交互作用引起光譜擴散（Spectral Diffusion）。先前對可見光色心（580–650 nm）的研究顯示其具有巨大的永久電偶極矩，對電場極度敏感。相對地，波長在 436 nm 附近的 Blue Quantum Emitters 雖具備極高的光譜穩定性，但其電場響應機制過去尚未被完整定量。
- 研究目標 (Research Objective)：  
  透過面內（In-plane）與面外（Out-of-plane）兩種電場配置，精確量測 436 nm 藍光量子發射體的 Stark 位移行為，提取極化率變化 $\Delta\alpha$ 與永久偶極矩 $\mu$，並結合 DFT 計算判定其缺陷結構候選者。

---

## II. Methods & Experimental Setup (How?)
- 樣本製備與色心生成 (Sample Preparation)：  
  將機械剝離的 hBN 薄片暴露於聚焦電子束（商用掃描式電子顯微鏡），以定點生成 436 nm 藍光單光子發射中心。
- 垂直電極結構 (Vertical Device)：  
  hBN 薄片位於底部金電極與頂部多層石墨烯（MLG）電極之間，產生面外（Out-of-plane）電場。
- 橫向電極結構 (Lateral Device)：  
  hBN 薄片置於叉指金電極（Interdigitated Gold Electrodes）之上，間距 2 μm，產生面內（In-plane）電場。
- 光學量測系統 (Optical Characterization Setup)：  
  在低溫恆溫器（$T = 5 \text{ K}$）下使用共焦光學系統進行 Photoluminescence (PL) 光譜量測與共振激發光譜掃描，並利用 Hanbury Brown–Twiss (HBT) 干涉儀量測二階自相關函數 $g^{(2)}(\tau)$。

---

## III. Figure & Table Deep Dive (關鍵圖表逐一深度解析)

### Figure 1: 藍光單光子發射體基本特性

![FIG. 1](wiki/assets/2023_zhigulin/fig1.png)

> FIG. 1. Blue single-photon emitters in h-BN. (a) Atomic defects in h-BN as a source of quantum emission. (b) Room-temperature autocorrelation measurement of a single defect in h-BN emitting photons at 436 nm. (c) Photoluminescence spectra of a blue emitter obtained at cryogenic temperature and room temperature. (d) Resonant excitation of a blue emitter fit with a Gaussian function with a linewidth of 1.9 GHz.

1. 視覺組件拆解：
   - (a) hBN 晶格示意圖：展示蜂巢狀晶格中的點缺陷作為量子發射源。
   - (b) 室溫二階自相關函數 $g^{(2)}(\tau)$：在 $\tau = 0$ 處出現深谷，$g^{(2)}(0) = 0.23$，確認單光子性質。
   - (c) 低溫（5 K）與室溫（293 K）PL 光譜比較：ZPL 位於 ~436 nm，低溫下線寬顯著收窄。內嵌圖為廣域光譜。
   - (d) 共振激發光譜（Resonant Excitation）：以窄線寬雷射掃描 ZPL，擬合高斯函數得到線寬 1.9 GHz。
2. 資料與機制流向：
   - 電子束照射 hBN 薄片產生藍光缺陷 → 405 nm 雷射激發（或窄線寬共振激發）→ 收集光譜與自相關數據。
3. 物理意義與設計意圖：
   - 確認研究對象為高品質的藍光單光子源，且共振激發下可達到接近 Fourier-transform-limited 的線寬。
4. 關鍵量化結論：
   - ZPL 中心波長：~436 nm。
   - 室溫自相關：$g^{(2)}(0) = 0.23 < 0.5$（確認單光子）。
   - 共振激發線寬：1.9 GHz。

---

### Figure 2: 垂直結構產生面外電場下的 Stark Effect

![FIG. 2](wiki/assets/2023_zhigulin/fig2.png)

> FIG. 2. Stark effect in a vertical structure used to generate an out-of-plane electric field. (a) Vertical structure schematic with h-BN between bottom gold electrode and top MLG electrode. (b) Microscope image of the vertical device. (c) I-V characteristic at 5 K. (d) PL spectra under varying bias voltage. (e) PL peak position as a function of electric field. (f) Polarization measurement.

1. 視覺組件拆解：
   - (a) 垂直裝置示意圖：hBN 薄片夾在底部金電極與頂部多層石墨烯電極之間。
   - (b) 垂直裝置顯微鏡影像（比例尺 20 μm），標示各層邊界。
   - (c) 5 K 下的 I-V 特性曲線（偏壓 −15 V 至 +15 V），確認裝置可正常施加電場。
   - (d) 不同偏壓下的 PL 光譜堆疊圖：展示 ZPL 位置隨電壓的細微變化。
   - (e) PL 峰值位置對電場的響應：數據點與二次方擬合曲線。
   - (f) 偏振量測確認發射偶極取向。
2. 資料與機制流向：
   - 施加面外電場 → ZPL 能量產生微小位移 → 位移主要呈二次方關係，線性項極小。
3. 物理意義與設計意圖：
   - 面外方向的 Stark 位移幅度較小，表明面外方向的永久電偶極矩貢獻微弱。
4. 關鍵量化結論：
   - 面外電場下觀察到微小的線性 Stark 位移，但幅度相對於線寬而言極小。
   - 面外 $\mu$ 分量極小。

---

### Figure 3: 橫向結構產生面內電場下的 Stark Effect

![FIG. 3](wiki/assets/2023_zhigulin/fig3.png)

> FIG. 3. Stark effect in a lateral structure used to generate an in-plane electric field. (a) Lateral structure schematic with h-BN between two gold electrodes. (b) Microscope image of the lateral device (scale bar 50 μm). (c) I-V characteristic at 5 K; inset shows confocal PL map. (d) PL spectra under varying bias. (e) PL peak position as a function of electric field, fitted with a quadratic function.

1. 視覺組件拆解：
   - (a) 橫向裝置示意圖：hBN 薄片置於兩個叉指金電極之間，間距 2 μm。
   - (b) 橫向裝置顯微鏡影像（比例尺 50 μm）。
   - (c) 5 K 下 I-V 特性曲線（−20 V 至 +20 V）；內嵌圖為共焦 PL 圖（$7 \times 7 \text{ μm}^2$）。
   - (d) 不同偏壓下的 PL 光譜堆疊圖：展示 ZPL 位置隨面內電場的顯著移動。
   - (e) ZPL 峰值能量對面內電場的響應：呈清晰的二次拋物線關係，以 $\Delta E = -\frac{1}{2}\Delta\alpha F^2$ 擬合。
2. 資料與機制流向：
   - 施加面內電場 → ZPL 能量產生顯著的二次方位移 → 無論電場極性如何，位移方向相同（對稱拋物線）。
3. 物理意義與設計意圖：
   - 面內方向的 Stark 位移遠大於面外方向，且呈嚴格的二次方依賴性，直接證明面內永久電偶極矩也趨近於零。位移主要由極化率（Polarizability）主導。
4. 關鍵量化結論：
   - 永久偶極矩：$\mu = 0.10 \text{ D}$（近乎為零）。
   - 極化率變化：清晰的二次方擬合。
   - 面內 Stark 位移幅度：數百 μeV 級別。

---

### Figure 4: 不同 hBN 發射體之偶極矩分量比較

![FIG. 4](wiki/assets/2023_zhigulin/fig4.png)

> FIG. 4. Comparison of components of the transition dipole moment for emitters in h-BN. Values at L1 and L2 correspond to two blue emitters examined in the lateral device. Other values are taken from Noh et al. and Nikolay et al.

1. 視覺組件拆解：
   - 長條圖比較不同研究中 hBN 發射體的永久偶極矩分量。
   - L1、L2 為本論文橫向裝置中的兩個藍光發射體；其餘數據來自 Noh et al. 與 Nikolay et al.（580–650 nm 可見光發射體）。
2. 資料與機制流向：
   - 將本論文量測的藍光發射體偶極矩與文獻中可見光發射體的偶極矩進行系統性比較。
3. 物理意義與設計意圖：
   - 直觀展示藍光發射體的永久偶極矩遠小於可見光發射體，凸顯其在抵抗電場雜訊方面的優勢。
4. 關鍵量化結論：
   - 藍光發射體偶極矩（L1, L2）：數量級約 $0.1 \text{ D}$。
   - 可見光發射體偶極矩（Noh, Nikolay）：數量級約 $1$–$4 \text{ D}$，大了一個數量級以上。

---

### Figure 5: DFT 計算缺陷模型與電場響應

![FIG. 5](wiki/assets/2023_zhigulin/fig5.png)

> FIG. 5. Representation of (a) nitrogen split interstitial defect, (b) $C_N^2$ defect in the h-BN lattice, (c) the electric field dependence of the ZPL energy of the nitrogen split interstitial defect as obtained from first-principles calculations.

1. 視覺組件拆解：
   - (a) Nitrogen Split Interstitial 缺陷：氮原子分裂佔據於氮位的原子幾何構型。
   - (b) $C_N^2$ 缺陷：碳原子取代氮位的缺陷構型（作者稱之為 "C2N"）。
   - (c) DFT 第一性原理計算結果：Nitrogen Split Interstitial 缺陷在外加電場下的 ZPL 能量變化，呈現二次方依賴性。
2. 資料與機制流向：
   - 運用 DFT 模擬不同候選缺陷在外加電場下的波函數形變 → 計算 ZPL 能量的場依賴性 → 與實驗量測的二次方行為進行比對。
3. 物理意義與設計意圖：
   - 篩選出具備高空間反演對稱性的缺陷結構，解釋實驗觀察到的「近零永久偶極矩」與「二次方 Stark 位移」。
   - $C_N^2$ 缺陷因其局部對稱性與實驗結果最為吻合，被認為是藍光發射體的最可能候選者。
4. 關鍵量化結論：
   - Nitrogen Split Interstitial 的計算 ZPL 能量場依賴性呈二次方關係，與實驗定性一致。
   - $C_N^2$ 缺陷具備局部反演對稱性，永久偶極矩為零，且計算躍遷能量與 436 nm 藍光實驗值相容。

---

## IV. Results & Quantitative Findings (What?)
- 首次完成 hBN 436 nm 藍光發射體在面內與面外兩個方向的電場 Stark Effect 定量分析。
- 面外電場：微小的線性 Stark 位移，幅度相對於線寬極小。
- 面內電場：顯著的二次方（Quadratic）Stark 位移，$\mu \approx 0.10 \text{ D}$（近乎為零）。
- 與文獻中可見光發射體（$\mu \sim 1$–$4 \text{ D}$）相比，藍光發射體的永久偶極矩小了一個數量級以上。
- DFT 計算指向 $C_N^2$ 型缺陷為最可能的原子結構候選者。

---

## V. Discussion, Limitations & Future Work (So What?)
- 物理推論 (Physical Interpretation)：  
  永久電偶極矩的缺失是缺陷對稱性的結果。若缺陷具備局部反演對稱性，則面外永久偶極矩為零，面內偶極主要位於 hBN 晶格平面內。這使得藍光發射體對局域電荷雜訊（Charge Noise）不敏感，完美解釋了其極佳的光譜穩定性。
- 限制與瓶頸 (Limitations)：  
  由於缺乏顯著的線性偶極，要進行大範圍的光譜調諧需要施加極高電場，這限制了純電場大尺度波長對準的能力。
- 未來展望 (Future Work)：  
  這些結果對於創建與光學腔或其他量子發射體共振的定點量子發射體特別有價值。可結合應變工程（Strain Engineering）與微弱電場，實現兼具高穩定性與頻率可調諧性的量子積體元件。

---

## Cross-Referenced Concepts (概念互聯)
- [Hexagonal Boron Nitride Defects](wiki/concepts/hbn-defects.md)
- [Blue Single-Photon Emitters](wiki/concepts/blue-quantum-emitters.md)
- [Stark Effect in 2D Materials](wiki/concepts/stark-effect-tuning.md)
