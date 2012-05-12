#import('dart:html');

class dartSessionstorage {

  dartSessionstorage() {
  }

  void run() {
    String countStr = window.sessionStorage["count"];
    int count = countStr != null ? Math.parseInt(countStr) : 0;
    count++;
    window.sessionStorage["count"] = count.toString();
    write("Hello World! ($count)");
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }
}

void main() {
  new dartSessionstorage().run();
}
