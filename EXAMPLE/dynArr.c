#define INITSIZE 10
#define ELEMENTS 60

#include <stdio.h>
#include <stdlib.h>


int capacity = INITSIZE;


int * add(int*,int,int);
int * initArr(int);
int * resizeArr(int*);
int * copyArr();
void printArr(int *, int);

int * initArr(int size){
    int * a = malloc(size*(sizeof(int)));
    for(int i=0; i<size; i++){
        a[i] = 0;
    }
    return a;
}

int * add(int * a, int in, int pos){
    if (pos > (capacity/2)){
        printf("resize!\n");
        a = resizeArr(a);
    }
    a[pos] = in;
    return a;
}

int * resizeArr(int * a){
    int sizeA = capacity; 
    capacity = capacity * 2;
    int sizeB = capacity;
    int * b = initArr(sizeB);
    b = copyArr(a,b,sizeA);
    printArr(b, sizeB);
    return b;
}

int * copyArr(int * a, int * b, int sizeA){
    for(int i=0; i < sizeA; i++){
        int temp = a[i];
        b[i] = a[i];
        printf("%i<-%i\n", b[i], temp);
    }
    free(a);

    return b;
}

void printArr(int * a, int size){
    for(int i = 0; i < size; i++){
        printf("%i, ", a[i]);
    }
    printf("\n");
}


int main()
{
    int * arr = initArr(capacity);
    int i = 0;

    for(int i = 0; i<ELEMENTS; i++){
        arr = add(arr,i,i);
    }

    

    return 0;
}
