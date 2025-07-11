#!/bin/bash
# Plugin de Checkmk para contar trabajos pendientes y ejecutándose en Slurm

PENDING=$(squeue -h -t PD | wc -l)
RUNNING=$(squeue -h -t R | wc -l)

echo "<<<local>>>"
echo "0 Slurm_Jobs_Pending count=$PENDING Trabajos pendientes: $PENDING"
echo "0 Slurm_Jobs_Running count=$RUNNING Trabajos en ejecución: $RUNNING"
