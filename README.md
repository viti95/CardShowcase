# CardShowcase

Welcome to the **CardShowcase** project! This OpenSCAD project allows you to create fully customizable 3D printable bases designed to display a variety of computer expansion cards in a unique and organized manner. Whether you're looking to showcase vintage ISA cards or modern PCI Express components, this project provides a flexible solution to suit your needs.

## Table of Contents

- [CardShowcase](#cardshowcase)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Features](#features)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Supported cards](#supported-cards)
  - [Contributing](#contributing)
  - [License](#license)

## Overview

This project is created to help hardware enthusiasts, collectors, and tinkerers store or exhibit their expansion cards. With OpenSCAD, you can adjust the number and type of cards to perfectly fit and display your cards, from vintage ISA slots to contemporary PCI Express cards.

## Features

- **Support for multiple card types**: Generate bases for ISA, VLB, PCI, PCI Express, and AGP cards, or mix them altogether!
- **Full customization**: Adjust the base dimensions and card support size.
- **Easy to use**: Very simple statements in OpenSCAD to create your desired base.
- **3D printable**: All designs are optimized for 3D printing, ensuring easy printing with no supports at all.
- **Modular design**: Add as many slots as you want.

## Requirements

- **OpenSCAD**: Version 2021.01 or later is recommended.

## Installation

1. **Download OpenSCAD**: If you haven't already, download and install OpenSCAD from the official website: [OpenSCAD Download](https://www.openscad.org/downloads.html).
2. **Clone or Download this Repository**: You can either clone this repository using Git or download it as a ZIP file.

   ```bash
   git clone https://github.com/viti95/CardShowcase.git
   ```

## Usage

1. **Open OpenSCAD**: Launch OpenSCAD on your computer.
2. **Create a new base `.scad` file**: Open the `examples` folder and modify any of the examples already available
3. **Render the Model**: Press `F5` to preview the model, and `F6` to render it.
4. **Export the Model**: Export the model as an STL file by selecting `File` > `Export` > `Export as STL`.
5. **3D Print the Base**: Use your preferred slicing software to prepare the STL file for printing, then print the base using your 3D printer.

## Supported cards

- **ISA 8-bit**
- **ISA 16-bit**
- **VESA Local Bus**
- **PCI 32-bit**
- **AGP**
- **PCI Express x1**
- **PCI Express x4**
- **PCI Express x8** (experimental, not tested)
- **PCI Express x16**
- **EISA** (experimental, not tested)

## Contributing

Contributions are welcome! If you have ideas for new features or improvements, feel free to fork the repository and submit a pull request. Please make that any changes are well-documented.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

If you have any questions or need further assistance, feel free to open an issue or discussion.

Happy 3D printing!