#include <iostream>
#include <queue>
#include "graph.h"

using namespace std;


int main() {
    Graph G = inputUndirectedGraph();
    vector<char> vt = getVertexes(G);
    for (auto it : vt) {
        cout << it << "\t";
    }
    cout << '\n';
    cout << Dijkstra(G,'A','G') << '\n';
    return 0;
}