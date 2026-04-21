#include <iostream>

// Using extern "C" so the C parts of the kernel can link here
extern "C" {
    void print_os_info() {
        std::cout << "ldslockOS Kernel Extension" << std::endl;
        std::cout << "Status: Stable | Language: EN" << std::endl;
    }
}
