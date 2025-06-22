#include <iostream>
#include "requant.h"

int main() {
    // 输入初始化
    hls::stream<hls::vector<int8_t, TP * CP> > i_stream;
    hls::stream<hls::vector<int8_t, TP
     * CP> > o_stream;

    // 设置 scalars: [b, s(缩放因子), bound]
    int scalars[3] = {10, 2, 255}; // b = 10, s = 2.0, bound = 255

    // 初始化查找表 table
    int table[ENTRIES];
    for (int i = 0; i < ENTRIES; ++i) {
        table[i] = static_cast<int8_t>(i - 128); // 举例：table中值从-128到127
    }

    // 构造输入数据
    const int num_vectors = (T / TP) * (C / CP);
    for (int i = 0; i < num_vectors; ++i) {
        hls::vector<int8_t, TP * CP> vec;
        for (int j = 0; j < TP * CP; ++j) {
            vec[j] = i + j; // 示例数据
        }
        i_stream.write(vec);
    }

    // 调用 top 函数
    quant_top(i_stream, o_stream, scalars, table);

    // 输出结果
    std::cout << "Quantized output:\n";
    for (int i = 0; i < num_vectors; ++i) {
        hls::vector<int8_t, TP * CP> vec = o_stream.read();
        std::cout << "Vector " << i << ": ";
        for (int j = 0; j < TP * CP; ++j) {
            std::cout << static_cast<int>(vec[j]) << " ";
        }
        std::cout << "\n";
    }

    return 0;
}
