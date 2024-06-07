#ifndef GRAPH_H
#define GRAPH_H

#include <algorithm>
#include <iostream>
#include <map>
#include <vector>
#include <utility>

const int N = 130;
const int inf = 1e9+7;

struct Edge {
    char v;
    int w;
};

struct Edges {
    char u,v;
    int w;
};

struct Node {
    char u;
    int dist;
};

struct cmp {
    bool operator() (Node a,Node b){
        return a.dist > b.dist;
    }
};

struct Dsu
{
    std::vector<int> parent;
    std::vector<int> size;
    void init(int n){
        parent.resize(n+N,-1);
        size.resize(n+N,0);
        for (int i = 1;i <= n;++i) {
            parent[i] = i;
            size[i] = 1;
        }
    }
    int find(int u){
        if (u == parent[u]) return u;
        return parent[u] = find(parent[u]);
    }
    bool join(int u,int v) {
        u = find(u);
        v = find(v);
        if (u == v) return false;
        if (size[u] < size[v]) std::swap(u,v);
        parent[v] = u;
        size[u] += size[v];
        return true;
    }
}dsu;

typedef std::map<char, std::vector<Edge>> Graph;
typedef std::vector<Edges> MatGraph;
typedef std::vector<int> Path;



typedef std::map<char,std::vector<Edge>> Graph;

Graph inputUndirectedGraph();
Graph inputDirectedGraph();
std::pair<int,int> getGraphInfo(const Graph& G);
void DFS(const Graph& G,const char& s);
void BFS(const Graph& G,const char& s);
void Dijkstra(const Graph& G,const char& s,const char& des);
void DijkstraSparse(const Graph& G,const char& s,const char& des);
void Bellman_Ford(const Graph& G,const char& s,const char& des);
void display(const Graph& G);

#endif // GRAPH_H