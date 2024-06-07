#include <iostream>
#include <queue>

#include "functions.cpp"
#include "graph.h"

using namespace std;


void Kruskal(const Graph& G) {
    MatGraph V = GraphtoMatGraph(G);

    display(V);

    dsu.init(getGraphInfo(G).first);
    sort(V.begin(),V.end(),[](Edges &x,Edges y) {
        return x.w < y.w;
    });
    int totalWeight = 0;
    for (auto e : V) {
        if (!dsu.join(e.u-'A' + 1,e.v-'A' + 1)) continue;
        cout << e.u << ' ' << e.v << ' ' << e.w << '\n';
        totalWeight += e.w;
    }
    cout << totalWeight << '\n';
}

int main() {
    Graph G = inputUndirectedGraph();

    return 0;
}