from ws4py.client.threadedclient import WebSocketClient

class DummyClient(WebSocketClient):
    def opened(self):
        print("connected");
        self.send('[{"x":"1", "y":"2"}]')

    def closed(self, code, reason=None):
        print("Closed down", code, reason)

    def received_message(self, m):
	    self.send('[{"x":"1", "y":"2"}]')
	    print(m)

if __name__ == '__main__':
    try:
        ws = DummyClient('ws://localhost:4567/', protocols=['http-only', 'chat'])
        ws.connect()
        ws.run_forever()
    except KeyboardInterrupt:
        ws.close()

