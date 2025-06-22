#include <iostream>
#include "gelu_fp.h"
// #include "gelu.h"

int main() {
    hls::stream<hls::vector<float, TP * CP> > i_stream;
    hls::stream<hls::vector<float, TP * CP> > o_stream;

    int num_vectors = (T / TP) * (C / CP);

    // 杈撳叆鏋勯��
    for (int i = 0; i < num_vectors; ++i) {
        hls::vector<float, TP * CP> vec;
        for (int j = 0; j < TP * CP; ++j) {
            vec[j] = float(i * TP * CP + j) / 4.0f - 4.0f; // [-4, ...]
        }
        i_stream.write(vec);
    }

    // 鎵ц GeLU
    gelu_fp_top(i_stream, o_stream);
    // gelu_top(i_stream, o_stream);

    // 鎵撳嵃杈撳嚭
    for (int i = 0; i < num_vectors; ++i) {
        hls::vector<float, TP * CP> vec = o_stream.read();
        std::cout << "Output Vector " << i << ": ";
        for (int j = 0; j < TP * CP; ++j) {
            std::cout << vec[j] << " ";
        }
        std::cout << "\n";
    }

    return 0;
}
