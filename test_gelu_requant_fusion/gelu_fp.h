#ifndef __FP_GELU_H__
#define __FP_GELU_H__

#include "common.h"
#include "utils.h"
#include <hls_math.h>

template<
    class __if_t,       // input feature map data type (float)
    class __of_t,       // output feature map data type (float)
    int   T,            // input feature map sequence length
    int   TP,           // input feature map sequence parallel degree
    int   C,            // input feature map channel
    int   CP            // input feature map channel parallel degree
>
class GeLU_FP {
public:

    static_assert(C % CP == 0, "C must be multiple of CP");

    static constexpr int CT = C / CP;
    static constexpr int TT = T / TP;

    GeLU_FP() {}

    // GeLU Function: x * 0.5 * (1 + erf(x / sqrt(2)))
    __of_t gelu(__if_t x) const {
        return x * 0.5f * (1.0f + hls::erf(x / 1.414213562f)); // sqrt(2) ï¿?? 1.414213562
    }

    void do_gelu(hls::stream<hls::vector<__if_t, TP*CP> >& i_stream,
                 hls::stream<hls::vector<__of_t, TP*CP> >& o_stream) const {

        TT_LOOP: for(int tt = 0; tt < TT; ++tt){
            CT_LOOP: for(int ct = 0; ct < CT; ++ct){
                #pragma HLS pipeline II=1

                hls::vector<__if_t, TP*CP> vec_i = i_stream.read();
                hls::vector<__of_t, TP*CP> vec_o;

                // Apply GeLU to each element
                for(int i = 0; i < TP*CP; ++i){
                    #pragma HLS unroll
                    vec_o[i] = gelu(vec_i[i]);
                }

                o_stream.write(vec_o);
            }
        }
    }

};


#define T 196
#define TP 2
#define C 194
#define CP 2
#define ENTRIES 64

void gelu_fp_top(
    hls::stream<hls::vector<float, TP * CP> >& i_stream,
    hls::stream<hls::vector<float, TP * CP> >& o_stream
);

#endif
