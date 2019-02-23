/** 
 *
 *
 *
 */




/// type for glob
typedef struct {
    int display[3]; /// display array, [Avg, cycle, Measure]
    int algorithm[2];   // [gates, subroutines] 
    int error_correction; // 0 or 1
    } GLOB;
