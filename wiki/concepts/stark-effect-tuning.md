# Stark Effect in 2D Quantum Emitters

- **Category**: Physical Phenomena / Electro-Optic Tuning
- **Primary Domain**: Quantum Photonics & Nanomaterials
- **Key Equation**: $\Delta E = -\vec{\mu} \cdot \vec{F} - \frac{1}{2}\alpha F^2$

---

## 1. Overview & Physical Principles

The **Stark Effect** describes the shift and splitting of atomic, molecular, or solid-state optical transitions under an external electric field $\vec{F}$. In two-dimensional materials such as **Hexagonal Boron Nitride (hBN)**, the energy perturbation $\Delta E$ is given by:

$$\Delta E = -\vec{\mu} \cdot \vec{F} - \frac{1}{2} \alpha F^2$$

Where:
- $\vec{\mu} = \vec{\mu}_e - \vec{\mu}_g$: Difference between the **Permanent Electric Dipole Moments** of the excited state ($\vec{\mu}_e$) and ground state ($\vec{\mu}_g$).
- $\alpha = \alpha_e - \alpha_g$: Difference in **Polarizability** tensor components.
- $\vec{F}$: Applied external electric field vector.

---

## 2. Linear vs. Quadratic Regimes

| Regime | Condition | Dominant Factor | Physical Origin |
| :--- | :--- | :--- | :--- |
| **Linear Stark Effect** | Inversion symmetry broken ($\mu \neq 0$) | $-\vec{\mu} \cdot \vec{F}$ | Strong permanent dipole; energy shift depends linearly on field polarity. |
| **Quadratic Stark Effect** | Centrosymmetric systems ($\mu \approx 0$) | $-\frac{1}{2}\alpha F^2$ | Induced dipole moment; shift is quadratic and independent of field sign. |

In thin hBN flakes, blue quantum emitters frequently exhibit a **predominantly linear Stark shift**, confirming localized out-of-plane symmetry breaking caused by atomic buckling or defect-boundary strain.

---

## 3. Engineering Significance in Quantum Information
1. **Dynamic Frequency Tuning**: Overcoming spatial inhomogeneity and tuning different single-photon sources onto resonance for two-photon Hong-Ou-Mandel (HOM) quantum interference.
2. **Spectral Diffusion Suppression**: Applying an external DC bias can lock the local electrostatic environment and reduce stray charge fluctuations.
3. **On-Chip Modulation**: Enables electro-optic switching at gigahertz frequencies.

---

## 4. Related Papers in this Wiki
- [[2021_noh_giant_stark_blue_hbn|Giant Stark Effect in Blue Quantum Emitters in Hexagonal Boron Nitride]]
