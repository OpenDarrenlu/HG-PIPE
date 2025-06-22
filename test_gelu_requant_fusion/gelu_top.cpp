//#include "gelu_fp.h"
#include "gelu.h"

//void gelu_fp_top(
//    hls::stream<hls::vector<float, TP * CP> >& i_stream,
//    hls::stream<hls::vector<float, TP * CP> >& o_stream
//) {
//    GeLU_FP<float, float, T, TP, C, CP> gelu_inst;
//    gelu_inst.do_gelu(i_stream, o_stream);
//}

void gelu_top(
    hls::stream<hls::vector<int8_t, TP * CP> >& i_stream,
    hls::stream<hls::vector<int8_t, TP * CP> >& o_stream,
    const int scalars[],
    const int table[]
) {
    GeLU<int8_t, int, int8_t, T, TP, C, CP, 64> gelu_inst(scalars, table);
    gelu_inst.do_gelu(i_stream, o_stream);
}
