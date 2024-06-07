//
// Created by ASUS on 6/6/2024.
//
#include <queue>

#include "graph.h"


using namespace std;

int Dijkstra(const Graph& G,const char& s,const char& des) {
    vector<int>D;
    D.resize(N,inf);
    vector<bool>P;
    P.resize(N,false);
    D[s] = 0;
    Path trace;
    trace.resize(N,-1);

    vector<char> vt = getVertexes(G);
    for (int i = 1;i <= G.size();++i) {
        char uBest;
        int Min = inf;
        for (auto it : G) {
            char u = it.first;
            if (D[u] < Min && P[u] == false) {
                Min = D[u];
                uBest = u;
            }
        }
        // Cai tien cac duong di qua u
        char u = uBest;
        P[u] = true;
        for (Edge e : G.find(u)->second) {
            char v = e.v;
            int w = e.w;
            if (D[v] > D[u] + w) {
                D[v] = D[u] + w;
                trace[v] = u;
            }
        }
        for (char it : vt){
            if (D[it] == inf) {
                cout << "inf\t";
                continue;
            }
            cout << D[it] << "\t";
        }
        cout << '\n';
    }
    //for (auto it : trace)   cout << it << '\n';
    // cout << "Duong di ngan nhat tu " << s << " den " << des << " la: ";
    // Path path = tracePath(trace,s,des);
    // for (char it : path) cout << it << " ";
    // cout << "======> Co do dai la: ";
    return D[des];
}
void DijkstraSparse(const Graph& G,const char& s,const char& des) {
    vector<int>D;
    D.resize(N,inf);
    D[s] = 0;

    vector<bool>P;
    P.resize(N,false);

    Path trace;
    trace.resize(N,-1);

    priority_queue<Node,vector<Node>,cmp>q;
    q.push({s,D[s]});
    while(!q.empty()){
        Node x = q.top();
        //cout << x.u << ' ' << x.dist << '\n';
        q.pop();
        char u = x.u;
        if (P[u] == true)    continue;
        P[u] = true;
        // Check if graph is empty
        if (G.count(u) == 0) continue;
        // Cai tien cac duong di qua u
        for (Edge e : G.find(u)->second) {
            char v = e.v;
            int w = e.w;
            if (D[v] > D[u] + w) {
                D[v] = D[u] + w;
                q.push({v,D[v]});
                trace[v] = u;
            }
        }
    }
    //for (auto it : trace)   cout << it << '\n';
    Path path = tracePath(trace,s,des);
    for (char it : path) cout << it << ' ';
    cout << '\n';
}
void Bellman_Ford(const Graph& G,const char& s,const char& des) {
    vector<int>D;
    D.resize(N,inf);
    vector<int>trace;
    trace.resize(N,-1);
    D[s] = 0;
    int T = getGraphInfo(G).first;
    // Thuat toan Bellman-Ford
    for (int i = 1;i < T;++i) {
        for (auto it : G) {
            char u = it.first;
            for (Edge e : G.find(u)->second) {
                char v = e.v;
                int w = e.w;
                if (D[v] > D[u] + w) {
                    D[v] = D[u] + w;
                    trace[v] = u;
                }
            }
        }
    }
    // Kiem tra xem co ton tai chu trinh am hay khong?
    for (int i = 1;i <= T;++i) {
        for (auto it : G) {
            char u = it.first;
            for (Edge e : G.find(u)->second) {
                char v = e.v;
                int w = e.w;
                if (D[u] != inf && D[v] > D[u] + w) {
                    D[v] = -inf;
                    trace[v] = u;
                }
            }
        }
    }
    // Path path = tracePath(trace,s,des);
    // for (char p : path) cout << p << ' ';
    // cout << '\n';
    vector<char> V = getVertexes(G);
    for (char u : V) {
        cout << u << ' ' << D[u] << '\n';
    }
}