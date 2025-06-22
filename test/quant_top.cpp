#include "requant.h"



void quant_top(
    hls::stream<hls::vector<int8_t, TP * CP> >& i_stream,
    hls::stream<hls::vector<int8_t, TP * CP> >& o_stream,
    const int scalars[],
    const int table[]
) {
    Quant<int8_t, int, int8_t, T, TP, C, CP, ENTRIES> quant_module(scalars, table);
    quant_module.do_quant(i_stream, o_stream);
}
