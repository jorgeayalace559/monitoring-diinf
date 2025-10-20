# 🖥️ Prototipo de Monitoreo para Sala de Servidores

Este proyecto implementa un sistema de monitoreo automatizado utilizando Checkmk, contenedores LXC y Ansible. Está diseñado para emular la infraestructura de la sala de servidores del Departamento de Ingeniería Informática de la Universidad de Santiago de Chile.

---

## 🚀 Características principales

- Instalación automatizada de contenedores LXC para Checkmk, Slurm y Samba.
- Configuración de red fija para cada contenedor.
- Copia automática de claves SSH sin interacción manual.
- Instalación automatizada de Checkmk desde un archivo `.deb`.
- Generación dinámica del inventario de Ansible.
- Playbooks modulares reutilizables.

---

## 📦 Requisitos

- Ubuntu 22.04+ con soporte para LXC
- Ansible
- Git
- Git LFS (ver más abajo)
- Archivo `.deb` de Checkmk compatible con tu distribución (ej. jammy para Ubuntu 22.04)

---

## ⚙️ Instalación

1. Clona el repositorio:

```bash
git clone https://github.com/usuario/monitoring-diinf.git
cd monitoring-diinf
```

2. Instala Git LFS si no lo tienes (ver sección siguiente).

3. Ejecuta el setup de LXC:

```bash
ansible-playbook -i inventories/dev/hosts playbooks/master.yml
```

---

## 🧹 Limpieza del entorno

Puedes destruir todos los contenedores y archivos generados ejecutando:

```bash
ansible-playbook -i localhost, -c local playbooks/cleanup.yml
```

---

## 📦 Git LFS: Archivos grandes

Este proyecto incluye archivos `.deb` grandes (como Checkmk) que se almacenan usando [Git LFS (Large File Storage)](https://git-lfs.com/).  
Para clonar y trabajar correctamente con estos archivos, **debes instalar Git LFS**.

### ✅ Instalación de Git LFS

```bash
sudo apt update
sudo apt install git-lfs
git lfs install
```

### 🧩 Al clonar este repositorio:

```bash
git clone https://github.com/usuario/monitoring-diinf.git
cd monitoring-diinf
git lfs pull
```

> ⚠️ Si no tienes Git LFS instalado, los archivos `.deb` se verán como punteros de texto y no funcionarán correctamente.

### 🛠️ ¿Vas a subir archivos `.deb`?

```bash
git lfs track "*.deb"
git add .gitattributes
git add roles/checkmk_server/files/archivo.deb
git commit -m "Agregar .deb usando Git LFS"
git push
```

---

## 📁 Estructura del proyecto

```
monitoring-diinf/
├── inventories/
│   └── dev/
│       └── hosts
├── playbooks/
│   ├── setup_lxc.yml
│   ├── checkmk.yml
│   └── cleanup.yml
├── roles/
│   ├── lxc_setup/
│   ├── checkmk_server/
│   └── lxc_cleanup/
├── README.md
└── ...
```

---

## ✍️ Autor

**Jorge Humberto Ayala Aceval**  
Tesis Ingeniería Civil Informática  
Universidad de Santiago de Chile – 2024

---
