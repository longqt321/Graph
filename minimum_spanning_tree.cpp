//
// Created by PC on 6/7/2024.
//

#include <iostream>

#include "graph.h"

Dsu dsu;

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
        std::cout << e.u << ' ' << e.v << ' ' << e.w << '\n';
        totalWeight += e.w;
    }
    std::cout << totalWeight << '\n';
}
