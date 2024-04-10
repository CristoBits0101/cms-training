import org.eclipse.jetty.websocket.api.Session;
import org.eclipse.jetty.websocket.api.annotations.*;

@WebSocket
public class ChatWebSocket {

  // Método que se ejecuta cuando un cliente se conecta al servidor.
  @OnWebSocketConnect
  public void onConnect(Session session) {
    System.out.println(
      "Nuevo cliente conectado: " + session.getRemoteAddress().getHostString()
    );
  }

  // Método que se ejecuta cuando un cliente se desconecta del servidor.
  @OnWebSocketClose
  public void onClose(Session session, int statusCode, String reason) {
    System.out.println(
      "Cliente desconectado: " + session.getRemoteAddress().getHostString()
    );
  }

  // Método que se ejecuta cuando el servidor recibe un mensaje de un cliente.
  @OnWebSocketMessage
  public void onMessage(Session session, String message) {
    
    // Imprimir el mensaje recibido junto con la dirección IP del cliente.
    System.out.println(
      "Mensaje recibido de " +
      session.getRemoteAddress().getHostString() +
      ": " +
      message
    );

    // Enviar el mismo mensaje de vuelta al cliente.
    session.getRemote().sendStringByFuture(message);
  }

  // Método que se ejecuta cuando ocurre un error en la conexión WebSocket.
  @OnWebSocketError
  public void onError(Session session, Throwable error) {

    // Imprimir el error.
    error.printStackTrace();

  }
}