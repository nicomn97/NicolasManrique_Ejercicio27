#PBS -l nodes=1:ppn=1,mem=16gb,walltime=00:00:30
#PBS -M n.manrique10@uniandes.edu.co
#PBS -m abe
#PBS -N ejercicio26


module load mpich/3.2.1

cd /hpcfs/home/fisi4028/n.manrique10/Ej27
mpicc listing122.c -o list122

mpirun -np 4 -hostfile hosts ./list122

mpicc listing123.c -o list123

mpirun -np 4 -hostfile hosts ./list123
