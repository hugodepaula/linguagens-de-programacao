#include <iostream>

using namespace std;

int main()
{
    int tam;
    
    int v1[10];
    
    cout << "Digite tamanho: ";
    cin >> tam;
    
    int *v2;
    v2 = new int[tam];
    int *v3 = v1;
    for (int i = 0; i < 10; i++) {
        v1[i] = 10 - i;
        v2[i] = i;
        cout << '\n' << v1[i] << '\t' << v2[i] << '\t' << *v3;
        v3++;
    }
    delete v2;
    return 0;
}