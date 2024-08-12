# Atari Lynx dev container templates and features

This repository contains dev container templates and features to be used with Atari Lynx development based on cc65 and tooling support.

## cc65 template
The template for cc65 use the sources from https://github.com/cc65/cc65/ to build the cc65 tool suite for 6502 development. It contains Atari Lynx specific tools included as features. The template is usable for other 6502 based targets as well.

The image is based on the dev container Alpine base image. The Alpine version can be specified in the `imageVariant` template option. 
The template support choosing a specific cc65 version based on tags in the Git code repository. Versions 2.16 to 2.19 are available, as well `latest` for a build of the latest source code on `master` branch. Use the template option `cc65Version` to specify the version.

## Available features
- make_lnx
  Tool to create LNX files from header-less Atari Lynx rom files (*.lyx)
- [sprpck](https://github.com/42Bastian/sprpck)
  Sprite packer to generate binary sprite data from Windows Bitmap files (*.bmp)
- [AtariSIO](https://github.com/HiassofT/AtariSIO)
- [Exomizer](https://bitbucket.org/magli143/exomizer)

