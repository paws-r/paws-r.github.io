<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimev2_recognize_utterance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends user input to Amazon Lex V2

### Description

Sends user input to Amazon Lex V2. You can send text or speech. Clients
use this API to send text and audio requests to Amazon Lex V2 at
runtime. Amazon Lex V2 interprets the user input using the machine
learning model built for the bot.

The following request fields must be compressed with gzip and then
base64 encoded before you send them to Amazon Lex V2.

-   requestAttributes

-   sessionState

The following response fields are compressed using gzip and then base64
encoded by Amazon Lex V2. Before you can use these fields, you must
decode and decompress them.

-   inputTranscript

-   interpretations

-   messages

-   requestAttributes

-   sessionState

The example contains a Java application that compresses and encodes a
Java object to send to Amazon Lex V2, and a second that decodes and
decompresses a response from Amazon Lex V2.

If the optional post-fulfillment response is specified, the messages are
returned as follows. For more information, see
[PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_PostFulfillmentStatusSpecification.html).

-   **Success message** - Returned if the Lambda function completes
    successfully and the intent state is fulfilled or ready fulfillment
    if the message is present.

-   **Failed message** - The failed message is returned if the Lambda
    function throws an exception or if the Lambda function returns a
    failed intent state without a message.

-   **Timeout message** - If you don't configure a timeout message and a
    timeout, and the Lambda function doesn't return within 30 seconds,
    the timeout message is returned. If you configure a timeout, the
    timeout message is returned when the period times out.

For more information, see [Completion
message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html).

### Usage

    lexruntimev2_recognize_utterance(botId, botAliasId, localeId, sessionId,
      sessionState, requestAttributes, requestContentType,
      responseContentType, inputStream)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_utterance_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that should receive the
request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_utterance_:_botAliasId">botAliasId</code></td>
<td><p>[required] The alias identifier in use for the bot that should
receive the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_utterance_:_localeId">localeId</code></td>
<td><p>[required] The locale where the session is in use.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_utterance_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session in use.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_utterance_:_sessionState">sessionState</code></td>
<td><p>Sets the state of the session with the user. You can use this to
set the current intent, attributes, context, and dialog action. Use the
dialog action to determine the next step that Amazon Lex V2 should use
in the conversation with the user.</p>
<p>The <code>sessionState</code> field must be compressed using gzip and
then base64 encoded before sending to Amazon Lex V2.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_utterance_:_requestAttributes">requestAttributes</code></td>
<td><p>Request-specific information passed between the client
application and Amazon Lex V2</p>
<p>The namespace <code style="white-space: pre;">⁠x-amz-lex:⁠</code> is
reserved for special attributes. Don't create any request attributes for
prefix <code style="white-space: pre;">⁠x-amz-lex:⁠</code>.</p>
<p>The <code>requestAttributes</code> field must be compressed using
gzip and then base64 encoded before sending to Amazon Lex V2.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_utterance_:_requestContentType">requestContentType</code></td>
<td><p>[required] Indicates the format for audio input or that the
content is text. The header must start with one of the following
prefixes:</p>
<ul>
<li><p>PCM format, audio data must be in little-endian byte order.</p>
<ul>
<li><p>audio/l16; rate=16000; channels=1</p></li>
<li><p>audio/x-l16; sample-rate=16000; channel-count=1</p></li>
<li><p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
channel-count=1; is-big-endian=false</p></li>
</ul></li>
<li><p>Opus format</p>
<ul>
<li><p>audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4</p></li>
</ul></li>
<li><p>Text format</p>
<ul>
<li><p>text/plain; charset=utf-8</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_utterance_:_responseContentType">responseContentType</code></td>
<td><p>The message that Amazon Lex V2 returns in the response can be
either text or speech based on the <code>responseContentType</code>
value.</p>
<ul>
<li><p>If the value is <code
style="white-space: pre;">⁠text/plain;charset=utf-8⁠</code>, Amazon Lex V2
returns text in the response.</p></li>
<li><p>If the value begins with <code
style="white-space: pre;">⁠audio/⁠</code>, Amazon Lex V2 returns speech in
the response. Amazon Lex V2 uses Amazon Polly to generate the speech
using the configuration that you specified in the
<code>responseContentType</code> parameter. For example, if you specify
<code>audio/mpeg</code> as the value, Amazon Lex V2 returns speech in
the MPEG format.</p></li>
<li><p>If the value is <code>audio/pcm</code>, the speech returned is
<code>audio/pcm</code> at 16 KHz in 16-bit, little-endian
format.</p></li>
<li><p>The following are the accepted values:</p>
<ul>
<li><p>audio/mpeg</p></li>
<li><p>audio/ogg</p></li>
<li><p>audio/pcm (16 KHz)</p></li>
<li><p>audio/* (defaults to mpeg)</p></li>
<li><p>text/plain; charset=utf-8</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_utterance_:_inputStream">inputStream</code></td>
<td><p>User input in PCM or Opus audio format or text format as
described in the <code>requestContentType</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      inputMode = "string",
      contentType = "string",
      messages = "string",
      interpretations = "string",
      sessionState = "string",
      requestAttributes = "string",
      sessionId = "string",
      inputTranscript = "string",
      audioStream = raw,
      recognizedBotMember = "string"
    )

### Request syntax

    svc$recognize_utterance(
      botId = "string",
      botAliasId = "string",
      localeId = "string",
      sessionId = "string",
      sessionState = "string",
      requestAttributes = "string",
      requestContentType = "string",
      responseContentType = "string",
      inputStream = raw
    )
