# Graph 
## Ở trên gồm các giải thuật cơ bản trong các bài toán đồ thị như (h2)  
- Thuật toán duyệt đồ thị ( graph traversal ) gồm DFS (depth first search) và BFS (breadth first search).  
- Tìm đường đi ngắn nhất ( find shortest path ): Sử dụng Dijkstra, Dijkstra sparse (1 phiên bản cải tiến từ Dijkstra, áp dụng trong trường hợp đồ thị là đồ thị thưa - sparse), và Bellman_Floyd. Còn 1 giải thuật nữa chưa được áp dụng  
- Tìm cây khung bé nhất ( find minimum spanning tree ): Sử dụng thuật toán Kruskal và cấu trúc dữ liệu Disjoint set union. Ngoài ra còn có thuật toán Prim nhưng chưa được áp dụng.  


## Hướng dẫn sử dụng các file.

Các cấu trúc của chương trình được định nghĩa trong file: graph.h  
- Duyệt đồ thị: traverse.cpp  
- Tìm đường đi ngắn nhất: shortest_path.cpp  
- mCác hàm hỗ trợ ( lấy thông tin đồ thị, in đồ thị, chuyển đổi từ đồ thị danh sách kề sang đồ thị ma trận... ): functions.cpp  
- Các lưu ý để hiểu rõ hơn về cách code của tác giả: Note.txt  
- Cơ sở lý thuyết của các thuật toán: BaseTheory:txt  
