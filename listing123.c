#include <stdio.h>
#include <"mpi.h">

int main(int argc, char *argv[]){

    int rank, number;
    number=0;

    MPI_Init (&argc, &argv);
    MPI_Comm_rank (MPI_COMM_WORLD, &rank);

    if (rank==0) {
        number=123;
        MPI_Send(&number, 1, MPI_INT, 1, 0, MPI_COMM_WORLD);
    } else if (rank==0) {
	printf("Number = %d\n", number);
	MPI_Recv(&number, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
    }
    

    MPI_Finalize();
    return 0;

}
