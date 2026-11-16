# 二維量子發射體之 Stark Effect (Stark Effect in 2D Quantum Emitters)

- **領域分類**：Physical Phenomena / Electro-Optic Tuning
- **核心學科**：Quantum Photonics & 2D Nanomaterials
- **主導物理方程式**：$\Delta E = -\vec{\mu} \cdot \vec{F} - \frac{1}{2}\alpha F^2$

---

## 1. 物理原理概述 (Overview & Physical Principles)

**Stark Effect** 描述原子、分子或固態能階在外部靜電場 $\vec{F}$ 作用下發生的光學躍遷能量位移與劈裂現象。在二維晶格材料如 **Hexagonal Boron Nitride (hBN)** 中，色心躍遷能量的微擾 $\Delta E$ 可表示為：

$$\Delta E = -\vec{\mu} \cdot \vec{F} - \frac{1}{2} \alpha F^2$$

各參數物理意義如下：
- $\vec{\mu} = \vec{\mu}_e - \vec{\mu}_g$：激發態（$\vec{\mu}_e$）與基態（$\vec{\mu}_g$）之間的 **Permanent Electric Dipole Moment** 差值。
- $\alpha = \alpha_e - \alpha_g$：激發態與基態之躍遷 **Polarizability** 張量變化量。
- $\vec{F}$：外加靜電場向量。

---

## 2. 線性與二次方響應機制 (Linear vs. Quadratic Regimes)

| 響應機制 | 成立物理條件 | 主導能量項 | 微觀物理根源 |
| :--- | :--- | :--- | :--- |
| **Linear Stark Effect** | 局部空間反演對稱性破缺 ($\mu \neq 0$) | $-\vec{\mu} \cdot \vec{F}$ | 具備固有永久電偶極矩；位移方向與電場極性呈線性相關。 |
| **Quadratic Stark Effect** | 中心反演對稱系統 ($\mu \approx 0$) | $-\frac{1}{2}\alpha F^2$ | 電場感應之偶極矩主導；位移大小與電場平方成正比，與極性無關。 |

在 hBN 藍光色心（~436 nm）的研究中，實驗證實其位移主要由 **Quadratic Stark Effect** 主導，表明該缺陷具有高度空間對稱性，其永久偶極矩近乎為零。

---

## 3. 在量子資訊中的工程意涵 (Quantum Information Engineering)
1. **動態頻率調諧 (Dynamic Frequency Tuning)**：  
   補償因局部應力造成的放光波長不均勻性，使多個獨立的 **Single-Photon Emitter (SPE)** 達到頻率共振，以實現高可見度的雙光子 Hong-Ou-Mandel (HOM) 量子干涉。
2. **光譜擴散壓制 (Spectral Diffusion Suppression)**：  
   擁有近乎為零永久偶極矩的發射體對環境周遭的微觀電荷波動（Charge Noise）不敏感，因而具備極為優異的頻譜穩定度。
3. **晶片級電光調變 (On-Chip Electro-Optic Modulation)**：  
   利用微米級積體電極施加偏壓，可實現高速量子光源調變。

---

## 4. 本知識庫相關論文 (Related Papers)
- [[2023_zhigulin_stark_blue_hbn|Stark Effect of Blue Quantum Emitters in Hexagonal Boron Nitride]]
