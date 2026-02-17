#include "calc.h"
#include <cassert>
#include <iostream>

int main() {
    Calc h;
    assert(h.sum(10, 5) == 15);
    assert(h.sum(-1, 1) == 0);
    std::cout << "Testler basariyla gecti!" << std::endl;
    return 0;
}
