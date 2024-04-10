import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.websocket.server.WebSocketHandler;
import org.eclipse.jetty.websocket.servlet.WebSocketServletFactory;

public class ChatServer {

  public static void main(String[] args) throws Exception {

    // Crear un servidor en el puerto 8080.
    Server server = new Server(8080);

    // Configurar un manejador WebSocket en el servidor.
    WebSocketHandler wsHandler = new WebSocketHandler() {
      @Override
      public void configure(WebSocketServletFactory factory) {

        // Registrar la clase que manejará las conexiones WebSocket.
        factory.register(ChatWebSocket.class);

      }
    };

    // Establecer el manejador WebSocket en el servidor.
    server.setHandler(wsHandler);

    // Iniciar el servidor.
    server.start();

    // Esperar a que el servidor termine.
    server.join();
    
  }
}
