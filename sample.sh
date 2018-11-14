#PBS -l nodes=1:ppn=4,mem=16gb,walltime=00:05:00
#PBS -M n.manrique10@uniandes.edu.co
#PBS -m abe
#PBS -N ejercicio27


module load mpich/3.2.1

cd /hpcfs/home/fisi4028/n.manrique10/Ej27
mpicc sample.c -o sample.x

mpirun -np 4 ./sample.x 20000 -4.5 1.8
