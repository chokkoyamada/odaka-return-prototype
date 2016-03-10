# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("div.qrcode").dblclick ->
    window.location.href = '/bank/';

dispatcher = new WebSocketRails("ws://54.238.244.223:3000/websocket")
channel = dispatcher.subscribe("streaming")
channel.bind "create", (tweet) ->
  console.log("Websocket received!")
  window.location.href = '/bank?login_success=1';

