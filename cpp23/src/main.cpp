#include <expected>
#include <print>
#include <chrono>

std::expected<unsigned char, std::string> return_something(unsigned char x)
{
    if (x < 5) return std::unexpected("the given number is less than 5");
    return 5;
};

using sys_clock = std::chrono::system_clock;

int main() {
    std::println("Hello World!!!");
    std::println("[INFO] [{}] Program Started", sys_clock::now());

    if (auto res = return_something(1); !res)
        return std::println("[ERROR] [{}] program failed!!! {}", sys_clock::now(), res.error()), -1;

    return 0;
};
