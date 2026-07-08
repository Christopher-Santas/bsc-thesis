= BSc Thesis on Environmental Chemistry: Chemical Characterization of pollutants emerging from vehicle tirewear

== Authors

Christopher Santas, Ioannis Stylios

== Abstract:

This undergraduate thesis addresses the chemical characterization of airborne particulate matter, focusing on emerging pollutants from vehicle tire wear (TRECs), such as quinones (PPD-Qs) and benzotriazoles (BTRs). In the theoretical section, the sources, environmental transport, and toxicological effects on humans and aquatic ecosystems are examined. In the experimental part, an analytical methodology is developed using High-Performance Liquid Chromatography coupled with Mass Spectrometry (HPLC-QToF/MS) for the quantitative determination of these compounds in environmental samples. Parameters such as ion potential are optimized, and calibration curves are constructed. The study highlights the need for systematic monitoring of TRECs, as their presence in the urban environment poses risks to public health and ecosystems due to their persistence and bioaccumulation potential.

== Build instructions

The basic thesis PDF is built with:
```bash
nix develop
just compile
```
For more, check the other justfile recipes.

== FAQ

=== Why is your thesis in Greek?

While both of us have Proficiency Certificates in English, Greek is encouraged for BSc thesis in NKUA (National Kapodistrian University of Athens). Terminology is taught and used in Greek, despite the many English citations.

=== Why did you use Typst?

[Typst](https://typst.app) is a successor to LaTeX, significantly improving on error messages, readability and package management. Written in Rust, it's blazing fast and has allowed us to create our thesis with little to no friction.
It's adaptable and easy-to-use layout along with the refactorization abilities help produce documents of professional standards. Besides, there is already ongoing effort in [supporting Typst in arXiv](https://youtu.be/zNZlAbCOjd8).

== Licensing

The written manuscript, prose, and compiled PDF text of this thesis are licensed under the Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0) license (LICENSE). All underlying data processing scripts and source code in the /python directory are licensed under the MIT License (LICENSE-CODE).
