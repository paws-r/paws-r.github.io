<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimev2_put_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new session or modifies an existing session with an Amazon Lex V2 bot

### Description

Creates a new session or modifies an existing session with an Amazon Lex
V2 bot. Use this operation to enable your application to set the state
of the bot.

### Usage

    lexruntimev2_put_session(botId, botAliasId, localeId, sessionId,
      messages, sessionState, requestAttributes, responseContentType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexruntimev2_put_session_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that receives the session
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_put_session_:_botAliasId">botAliasId</code></td>
<td><p>[required] The alias identifier of the bot that receives the
session data.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimev2_put_session_:_localeId">localeId</code></td>
<td><p>[required] The locale where the session is in use.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_put_session_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session that receives the
session data.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimev2_put_session_:_messages">messages</code></td>
<td><p>A list of messages to send to the user. Messages are sent in the
order that they are defined in the list.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_put_session_:_sessionState">sessionState</code></td>
<td><p>[required] Sets the state of the session with the user. You can
use this to set the current intent, attributes, context, and dialog
action. Use the dialog action to determine the next step that Amazon Lex
V2 should use in the conversation with the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_put_session_:_requestAttributes">requestAttributes</code></td>
<td><p>Request-specific information passed between Amazon Lex V2 and the
client application.</p>
<p>The namespace <code style="white-space: pre;">⁠x-amz-lex:⁠</code> is
reserved for special attributes. Don't create any request attributes
with the prefix <code
style="white-space: pre;">⁠x-amz-lex:⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_put_session_:_responseContentType">responseContentType</code></td>
<td><p>The message that Amazon Lex V2 returns in the response can be
either text or speech depending on the value of this parameter.</p>
<ul>
<li><p>If the value is <code
style="white-space: pre;">⁠text/plain; charset=utf-8⁠</code>, Amazon Lex
V2 returns text in the response.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentType = "string",
      messages = "string",
      sessionState = "string",
      requestAttributes = "string",
      sessionId = "string",
      audioStream = raw
    )

### Request syntax

    svc$put_session(
      botId = "string",
      botAliasId = "string",
      localeId = "string",
      sessionId = "string",
      messages = list(
        list(
          content = "string",
          contentType = "CustomPayload"|"ImageResponseCard"|"PlainText"|"SSML",
          imageResponseCard = list(
            title = "string",
            subtitle = "string",
            imageUrl = "string",
            buttons = list(
              list(
                text = "string",
                value = "string"
              )
            )
          )
        )
      ),
      sessionState = list(
        dialogAction = list(
          type = "Close"|"ConfirmIntent"|"Delegate"|"ElicitIntent"|"ElicitSlot"|"None",
          slotToElicit = "string",
          slotElicitationStyle = "Default"|"SpellByLetter"|"SpellByWord",
          subSlotToElicit = list(
            name = "string",
            subSlotToElicit = list()
          )
        ),
        intent = list(
          name = "string",
          slots = list(
            list(
              value = list(
                originalValue = "string",
                interpretedValue = "string",
                resolvedValues = list(
                  "string"
                )
              ),
              shape = "Scalar"|"List"|"Composite",
              values = list(
                list()
              ),
              subSlots = list()
            )
          ),
          state = "Failed"|"Fulfilled"|"InProgress"|"ReadyForFulfillment"|"Waiting"|"FulfillmentInProgress",
          confirmationState = "Confirmed"|"Denied"|"None"
        ),
        activeContexts = list(
          list(
            name = "string",
            timeToLive = list(
              timeToLiveInSeconds = 123,
              turnsToLive = 123
            ),
            contextAttributes = list(
              "string"
            )
          )
        ),
        sessionAttributes = list(
          "string"
        ),
        originatingRequestId = "string",
        runtimeHints = list(
          slotHints = list(
            list(
              list(
                runtimeHintValues = list(
                  list(
                    phrase = "string"
                  )
                ),
                subSlotHints = list()
              )
            )
          )
        )
      ),
      requestAttributes = list(
        "string"
      ),
      responseContentType = "string"
    )
