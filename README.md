# monitoring-diinf

## 📦 Requisitos para archivos grandes: Git LFS

Este proyecto incluye archivos `.deb` grandes (como Checkmk) que se almacenan usando [Git LFS (Large File Storage)](https://git-lfs.com/).  
Para clonar y trabajar correctamente con estos archivos, asegúrate de tener Git LFS instalado en tu sistema.

### ✅ Instalación de Git LFS (una sola vez)

```bash
sudo apt update
sudo apt install git-lfs
git lfs install