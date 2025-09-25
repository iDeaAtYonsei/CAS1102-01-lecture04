#include <iostream>
#include "main.h"

void sayHello(std::string name) {
    std::cout << "Hello, " << name << std::endl;
}

int main() {
    sayHello("CAS1102");
    return 0;
}
