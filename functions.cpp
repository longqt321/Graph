//
// Created by ASUS on 6/6/2024.
//
#include <iostream>
#include <set>

#include "graph.h"

using namespace std;

// Traces the shortest path from source to destination
Path tracePath(const Path& trace,char s,char u) {
    if (s != u && trace[u] == -1) {
        cout << "Khong ton tai duong di ngan nhat!";
        return Path(0);
    }
    Path path;
    while (u != -1) {
        path.push_back(u);
        u = trace[u];
    }
    reverse(path.begin(),path.end());
    return path;
}


// Displays the graph
void display(const Graph& G) {
    for (const auto& it : G) {
        char u = it.first;
        for (Edge e : G.find(u)->second)    cout << u << ' ' << e.v << ' ' << e.w << '\n';
    }
}

// Displays the matrix graph
void display(const MatGraph& V) {
    for (auto e : V) {
        cout << e.u << ' ' << e.v << ' ' << e.w << '\n';
    }
}

// Returns the number of vertices and edges in the graph
pair<int,int> getGraphInfo(const Graph& G) {
    set<char>edges;
    set< pair<char,char> >vertexes;
    for (auto it : G) {
        char u = it.first;
        edges.insert(u);
        vector<Edge>E = it.second;
        for (auto e : E) {
            char v = e.v;
            int w = e.w;
            edges.insert(v);
            vertexes.insert({u,v});
        }
    }
    pair<int,int>p = {edges.size(),vertexes.size()};
    return p;
}

// Returns a vector of vertices in the graph
vector<char> getVertexes(const Graph& G) {
    set<char>st;
    for (auto it : G) {
        char u = it.first;
        st.insert(u);
        for (Edge e : G.find(u)->second) {
            st.insert(e.v);
        }
    }
    vector<char>vt (st.begin(),st.end());
    return vt;
}

// Converts a graph to a matrix graph
MatGraph GraphtoMatGraph(const Graph& G) {
    MatGraph v;
    for (auto it :G ) {
        char u = it.first;
        for (auto e : G.find(u)->second) {
            v.push_back({u,e.v,e.w});
        }
    }
    return v;
}
// Reads an undirected graph from an input file
Graph inputUndirectedGraph() {
    freopen("input.txt","r",stdin);
    char u,v;
    int w;
    map<char,vector<Edge>>G;
    while (cin >> u >> v >> w) {
        G[u].push_back({v,w});
        G[v].push_back({u,w});
    }
    return G;
}

// Reads a directed graph from an input file
Graph inputDirectedGraph() {
    freopen("input.txt","r",stdin);
    char u,v;
    int w;
    map<char,vector<Edge>>G;
    while (cin >> u >> v >> w) {
        G[u].push_back({v,w});
        if (G.find(v) == G.end()) {
            G[v].push_back({v,inf});
        }
    }
    return G;
}