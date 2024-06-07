//
// Created by ASUS on 6/6/2024.
//

#include <queue>

#include "graph.h"

bool visited[N] = {};
using namespace std;

// Performs a depth-first search on the graph from a given source
void DFS(const Graph& G,const char& s) {
    if (visited[s]) return;
    visited[s] = true;
    // Do something here
    cout << s << ' ';
    for (auto e : G.find(s)->second) {
        if (visited[e.v]) continue;
        DFS(G,e.v);
    }
}
// Performs a breadth-first search on the graph from a given source
void BFS(const Graph& G,const char& s) {
    queue<char>q;
    q.push(s);
    while (!q.empty()) {
        char x = q.front();
        // Do something here
        cout << x << ' ';
        q.pop();
        for (auto e : G.find(x)->second) {
            if(!visited[e.v-'A']) {
                visited[e.v-'A'] = true;
                q.push(e.v);
            }
        }
    }
}