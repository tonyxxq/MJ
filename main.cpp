#include <uWS/uWS.h>
#include <iostream>
#include "json.hpp"


using namespace std;

using json = nlohmann::json;


// 判断SocketIO事件是否有JSON格式的数据，有：返回string数据，没有：返回""
std::string hasData(std::string s) {
  auto found_null = s.find("null");
  auto b1 = s.find_first_of("[");
  auto b2 = s.find_first_of("]");
  if (found_null != std::string::npos) {
    return "";
  } else if (b1 != std::string::npos && b2 != std::string::npos) {
    return s.substr(b1, b2 - b1 + 1);
  }
  return "";
}

int main(int argc, char **argv) {
    
    uWS::Hub h;
    
    h.onMessage([](uWS::WebSocket<uWS::SERVER> ws, char *data, size_t length, uWS::OpCode opCode) {
        auto s = hasData(std::string(data));
        auto j = json::parse(s);
        
        std::cout <<"data:" << j << std::endl;
        
        std::string event1 = j[0]["x"].get<std::string>();
        std::string event2 = j[0]["y"].get<std::string>();
        
        std::cout << "event1:" << event1 << std::endl;
        std::cout << "event2:" << event2 << std::endl;
        ws.send("back", 4, uWS::OpCode::TEXT);
    });
    
    h.onHttpRequest([](uWS::HttpResponse *res, uWS::HttpRequest req, char *data, size_t, size_t) {
        const std::string s = "<h1>Hello world!</h1>";
        if (req.getUrl().valueLength == 1) {
            res->end(s.data(), s.length());
        } else {
            // i guess this should be done more gracefully?
            res->end(nullptr, 0);
        }
    });

    h.onConnection([&h](uWS::WebSocket<uWS::SERVER> ws, uWS::HttpRequest req) {
        std::cout << "Connected!!!" << std::endl;
    });

    h.onDisconnection([&h](uWS::WebSocket<uWS::SERVER> ws, int code, char *message, size_t length) {
        ws.close();
        std::cout << "Disconnected" << std::endl;
    });

    int port = 4567;
    if (h.listen(port)) {
        std::cout << "Listening to port " << port << std::endl;
    } else {
        std::cerr << "Failed to listen to port" << std::endl;
        return -1;
    }
    
    h.run();
    
    return 0;
}
