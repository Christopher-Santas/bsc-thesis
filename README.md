# BSc Thesis on Environmental Chemistry: Chemical Characterization of pollutants emerging from vehicle tirewear

National and Kapodistrian University of Athens (NKUA), Department of Chemistry, 2026

**Authors:** _Christopher Santas, Ioannis Stylios_

## Abstract

This undergraduate thesis addresses the chemical characterization of airborne particulate matter, focusing on emerging pollutants from vehicle tire wear (TRECs), such as quinones (PPD-Qs) and benzotriazoles (BTRs). In the theoretical section, the sources, environmental transport, and toxicological effects on humans and aquatic ecosystems are examined. In the experimental part, an analytical methodology is developed using High-Performance Liquid Chromatography coupled with Mass Spectrometry (HPLC-QToF/MS) for the quantitative determination of these compounds in environmental samples. Parameters such as ion potential are optimized, and calibration curves are constructed. The study highlights the need for systematic monitoring of TRECs, as their presence in the urban environment poses risks to public health and ecosystems due to their persistence and bioaccumulation potential.

## PDF

You can view the thesis PDF [here](https://github.com/Christopher-Santas/bsc-thesis/releases/latest/download/thesis.pdf). 

## Build instructions

First, clone the git repo and enter the project's root directory:
```bash
git clone https://github.com/Christopher-Santas/bsc-thesis.git
cd bsc-thesis
```

Then, download the assets tar from the [latest Release](https://github.com/Christopher-Santas/bsc-thesis/releases/latest) and extract the assets folder to the project's root directory:
```bash
curl https://github.com/Christopher-Santas/bsc-thesis/releases/latest/download/assets.tar.gz
tar -xzf assets.tar.gz
rm assets.tar.gz
```

If you want to use the exact tools that were used to compile the project, enter the nix shell environment:
```bash
nix develop
```
If you want to avoid nix, you have to install dependencies yourself:

- `typst` for the PDFs
- `uv` for python
- `touying` for the slides HTML

Finally, use `just` to build the project:
```bash
# This command builds all possible outputs
just all

# This command only builds the thesis PDF
just compile

# This command only builds the slides PDF
just slides
```
For more ways to build, check the other justfile recipes.

## FAQ

### Why is your thesis in Greek?

While both of us (the authors) have Proficiency Certificates in English, Greek is encouraged for BSc theses in NKUA. Terminology is taught and used in Greek, despite the many English citations.

### Why did you use Typst?

[Typst](https://typst.app) is a successor to LaTeX, significantly improving on error messages, readability and package management. Written in Rust, it's blazing fast and has allowed us to create our thesis with little to no friction.
It's adaptable and easy-to-use layout along with the refactorization abilities help produce documents of professional standards. Besides, there is already ongoing effort in [supporting Typst in arXiv](https://youtu.be/zNZlAbCOjd8).

### What other tools did you use?

- `uv`: an extremely fast, Rust-based Python package and project manager
- `just`: Just a command runner, like `make`
- `jujutsu-vcs`: a powerful version control system for software projects, working on top of `git`
- `nix` with flakes: to manage dependencies and pin down package versions for reproducibility

## Licensing

The written manuscript, prose, and compiled PDF text of this thesis are licensed under the **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)** license (LICENSE). All underlying data processing scripts and source code in the /python directory are licensed under the **MIT License** (LICENSE-CODE).
