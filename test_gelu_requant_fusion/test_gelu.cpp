#include <iostream>
#include "gelu.h" // 引入顶层函数

int main() {
    hls::stream<hls::vector<int8_t, TP * CP> > i_stream;
    hls::stream<hls::vector<int8_t, TP * CP> > o_stream;

    // 初始化 scalar 参数: b, s, bound
    int scalars[3] = {0, 0, 255}; // b=0, s=0, bound=255 表示不做变换，直接查表

    // 初始化查找表
    int table[ENTRIES];
    for (int i = 0; i < ENTRIES; ++i) {
        // 举例：查表为 sigmoid 近似，即值介于 0~127
        table[i] = (int8_t)(127.0f * (1.0f / (1.0f + expf(-((float)i - 128.0f) / 32.0f))));
    }

    // 构造输入数据
    int num_vectors = (T / TP) * (C / CP);
    for (int i = 0; i < num_vectors; ++i) {
        hls::vector<int8_t, TP * CP> vec;
        for (int j = 0; j < TP * CP; ++j) {
            vec[j] = i * TP * CP + j - 32; // 输入范围 [-32, ...]
        }
        i_stream.write(vec);
    }

    // 执行 gelu
    gelu_top(i_stream, o_stream, scalars, table);

    // 打印输出
    for (int i = 0; i < num_vectors; ++i) {
        hls::vector<int8_t, TP * CP> vec = o_stream.read();
        std::cout << "Output Vector " << i << ": ";
        for (int j = 0; j < TP * CP; ++j) {
            std::cout << static_cast<int>(vec[j]) << " ";
        }
        std::cout << "\n";
    }

    return 0;
}
