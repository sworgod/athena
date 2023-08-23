package main

import (
	"github.com/gorilla/websocket"
	"sync"
)

type WebSocketMessage struct {
	Cmd  string                 `json:"cmd"`
	Data map[string]interface{} `json:"data"`
}

type WebSocketMessageSend struct {
	Cmd      string                 `json:"cmd"`
	Error    int                    `json:"error"`
	Messages string                 `json:"messages"`
	Data     map[string]interface{} `json:"data"`
}

type WebSocketClient struct {
	Conn *websocket.Conn
	Mux  sync.Mutex
}

type Config struct {
	Update int    `json:"update"`
	Port   bool   `json:"port"`
	Token  string `json:"token"`
}

type SoftwareStatus struct {
	Setup   bool   `json:"setup"`
	Status  bool   `json:"status"`
	Version string `json:"version"`
}

type Software struct {
	Nginx  SoftwareStatus `json:"nginx"`
	Apache SoftwareStatus `json:"apache"`
	Mysql  SoftwareStatus `json:"mysql"`
	PHP    SoftwareStatus `json:"php"`
	Redis  SoftwareStatus `json:"redis"`
}
