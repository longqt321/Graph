#include <iostream>
#include <map>
#include <vector>
#include <queue>
#include <algorithm>

using namespace std;
const int N = 130;
const int inf = 1e9+7;

struct Edge {
    char v;
    int w;
};
struct Node {
    char u;
    int dist;
};
// Comparator to create min-heap priority queue
struct cmp {
    bool operator() (Node a,Node b){
        return a.dist > b.dist;
    }
};
typedef map<char,vector<Edge>> Graph;
typedef vector<int> Path;
// Nhap graph vao tu file
Graph inputUndirectedGraph() {
    freopen("input.txt","r",stdin);
    char u,v;
    int w;
    map<char,vector<Edge>>G;
    while (cin >> u >> v >> w) {
        G[u].push_back({v,w});
        G[v].push_back({u,v});
    }
    return G;
}
Graph inputDirectedGraph() {
    freopen("input.txt","r",stdin);
    char u,v;
    int w;
    map<char,vector<Edge>>G;
    while (cin >> u >> v >> w) {
        G[u].push_back({v,w});
    }
    return G;
}
bool visited[N] = {};
// For undirected map
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
// For undirected map
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
Path tracePath(const Path& trace,char s,char u) {
    if (s != u && trace[u] == -1) {
        cout << "Khong ton tai duong di ngan nhat!\n";
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
void Dijkstra(const Graph& G,const char& s,const char& des) {
    vector<int>D;
    D.resize(N,inf);
    vector<bool>P;
    P.resize(N,false);
    D[s] = 0;
    Path trace;
    trace.resize(N,-1);
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
    }
    //for (auto it : trace)   cout << it << '\n';
    Path path = tracePath(trace,s,des);
    for (char it : path) cout << it << ' ';
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
        // Check if vector is empty
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
}

int main() {
    Graph G = inputDirectedGraph();
    // for (const auto& it : G) {
    //     char u = it.first;
    //     vector<Edge> p = it.second;
    //     for (Edge e : p)    cout << u << ' ' << e.v << ' ' << e.w << '\n';
    // }
    //BFS(G,'A');
    DijkstraSparse(G,'V','X');
    return 0;
}
