<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimeservice_put_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new session or modifies an existing session with an Amazon Lex bot

### Description

Creates a new session or modifies an existing session with an Amazon Lex
bot. Use this operation to enable your application to set the state of
the bot.

For more information, see [Managing
Sessions](https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html).

### Usage

    lexruntimeservice_put_session(botName, botAlias, userId,
      sessionAttributes, dialogAction, recentIntentSummaryView, accept,
      activeContexts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexruntimeservice_put_session_:_botName">botName</code></td>
<td><p>[required] The name of the bot that contains the session
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_put_session_:_botAlias">botAlias</code></td>
<td><p>[required] The alias in use for the bot that contains the session
data.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimeservice_put_session_:_userId">userId</code></td>
<td><p>[required] The ID of the client application user. Amazon Lex uses
this to identify a user's conversation with your bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_put_session_:_sessionAttributes">sessionAttributes</code></td>
<td><p>Map of key/value pairs representing the session-specific context
information. It contains application information passed between Amazon
Lex and a client application.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_put_session_:_dialogAction">dialogAction</code></td>
<td><p>Sets the next action that the bot should take to fulfill the
conversation.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_put_session_:_recentIntentSummaryView">recentIntentSummaryView</code></td>
<td><p>A summary of the recent intents for the bot. You can use the
intent summary view to set a checkpoint label on an intent and modify
attributes of intents. You can also use it to remove or add intent
summary objects to the list.</p>
<p>An intent that you modify or add to the list must make sense for the
bot. For example, the intent name must be valid for the bot. You must
provide valid values for:</p>
<ul>
<li><p><code>intentName</code></p></li>
<li><p>slot names</p></li>
<li><p><code>slotToElict</code></p></li>
</ul>
<p>If you send the <code>recentIntentSummaryView</code> parameter in a
<code>put_session</code> request, the contents of the new summary view
replaces the old summary view. For example, if a
<code>get_session</code> request returns three intents in the summary
view and you call <code>put_session</code> with one intent in the
summary view, the next call to <code>get_session</code> will only return
one intent.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimeservice_put_session_:_accept">accept</code></td>
<td><p>The message that Amazon Lex returns in the response can be either
text or speech based depending on the value of this field.</p>
<ul>
<li><p>If the value is <code
style="white-space: pre;">⁠text/plain; charset=utf-8⁠</code>, Amazon Lex
returns text in the response.</p></li>
<li><p>If the value begins with <code
style="white-space: pre;">⁠audio/⁠</code>, Amazon Lex returns speech in
the response. Amazon Lex uses Amazon Polly to generate the speech in the
configuration that you specify. For example, if you specify
<code>audio/mpeg</code> as the value, Amazon Lex returns speech in the
MPEG format.</p></li>
<li><p>If the value is <code>audio/pcm</code>, the speech is returned as
<code>audio/pcm</code> in 16-bit, little endian format.</p></li>
<li><p>The following are the accepted values:</p>
<ul>
<li><p><code>audio/mpeg</code></p></li>
<li><p><code>audio/ogg</code></p></li>
<li><p><code>audio/pcm</code></p></li>
<li><p><code style="white-space: pre;">⁠audio/*⁠</code> (defaults to
mpeg)</p></li>
<li><p><code
style="white-space: pre;">⁠text/plain; charset=utf-8⁠</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_put_session_:_activeContexts">activeContexts</code></td>
<td><p>A list of contexts active for the request. A context can be
activated when a previous intent is fulfilled, or by including the
context in the request,</p>
<p>If you don't specify a list of contexts, Amazon Lex will use the
current list of contexts for the session. If you specify an empty list,
all contexts for the session are cleared.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentType = "string",
      intentName = "string",
      slots = "string",
      sessionAttributes = "string",
      message = "string",
      encodedMessage = "string",
      messageFormat = "PlainText"|"CustomPayload"|"SSML"|"Composite",
      dialogState = "ElicitIntent"|"ConfirmIntent"|"ElicitSlot"|"Fulfilled"|"ReadyForFulfillment"|"Failed",
      slotToElicit = "string",
      audioStream = raw,
      sessionId = "string",
      activeContexts = "string"
    )

### Request syntax

    svc$put_session(
      botName = "string",
      botAlias = "string",
      userId = "string",
      sessionAttributes = list(
        "string"
      ),
      dialogAction = list(
        type = "ElicitIntent"|"ConfirmIntent"|"ElicitSlot"|"Close"|"Delegate",
        intentName = "string",
        slots = list(
          "string"
        ),
        slotToElicit = "string",
        fulfillmentState = "Fulfilled"|"Failed"|"ReadyForFulfillment",
        message = "string",
        messageFormat = "PlainText"|"CustomPayload"|"SSML"|"Composite"
      ),
      recentIntentSummaryView = list(
        list(
          intentName = "string",
          checkpointLabel = "string",
          slots = list(
            "string"
          ),
          confirmationStatus = "None"|"Confirmed"|"Denied",
          dialogActionType = "ElicitIntent"|"ConfirmIntent"|"ElicitSlot"|"Close"|"Delegate",
          fulfillmentState = "Fulfilled"|"Failed"|"ReadyForFulfillment",
          slotToElicit = "string"
        )
      ),
      accept = "string",
      activeContexts = list(
        list(
          name = "string",
          timeToLive = list(
            timeToLiveInSeconds = 123,
            turnsToLive = 123
          ),
          parameters = list(
            "string"
          )
        )
      )
    )
