<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimeservice_post_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends user input (text or speech) to Amazon Lex

### Description

Sends user input (text or speech) to Amazon Lex. Clients use this API to
send text and audio requests to Amazon Lex at runtime. Amazon Lex
interprets the user input using the machine learning model that it built
for the bot.

The `post_content` operation supports audio input at 8kHz and 16kHz. You
can use 8kHz audio to achieve higher speech recognition accuracy in
telephone audio applications.

In response, Amazon Lex returns the next message to convey to the user.
Consider the following example messages:

-   For a user input "I would like a pizza," Amazon Lex might return a
    response with a message eliciting slot data (for example,
    `PizzaSize`): "What size pizza would you like?".

-   After the user provides all of the pizza order information, Amazon
    Lex might return a response with a message to get user confirmation:
    "Order the pizza?".

-   After the user replies "Yes" to the confirmation prompt, Amazon Lex
    might return a conclusion statement: "Thank you, your cheese pizza
    has been ordered.".

Not all Amazon Lex messages require a response from the user. For
example, conclusion statements do not require a response. Some messages
require only a yes or no response. In addition to the `message`, Amazon
Lex provides additional context about the message in the response that
you can use to enhance client behavior, such as displaying the
appropriate client user interface. Consider the following examples:

-   If the message is to elicit slot data, Amazon Lex returns the
    following context information:

    -   `x-amz-lex-dialog-state` header set to `ElicitSlot`

    -   `x-amz-lex-intent-name` header set to the intent name in the
        current context

    -   `x-amz-lex-slot-to-elicit` header set to the slot name for which
        the `message` is eliciting information

    -   `x-amz-lex-slots` header set to a map of slots configured for
        the intent with their current values

-   If the message is a confirmation prompt, the
    `x-amz-lex-dialog-state` header is set to `Confirmation` and the
    `x-amz-lex-slot-to-elicit` header is omitted.

-   If the message is a clarification prompt configured for the intent,
    indicating that the user intent is not understood, the
    `x-amz-dialog-state` header is set to `ElicitIntent` and the
    `x-amz-slot-to-elicit` header is omitted.

In addition, Amazon Lex also returns your application-specific
`sessionAttributes`. For more information, see [Managing Conversation
Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).

### Usage

    lexruntimeservice_post_content(botName, botAlias, userId,
      sessionAttributes, requestAttributes, contentType, accept, inputStream,
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
id="lexruntimeservice_post_content_:_botName">botName</code></td>
<td><p>[required] Name of the Amazon Lex bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_post_content_:_botAlias">botAlias</code></td>
<td><p>[required] Alias of the Amazon Lex bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_post_content_:_userId">userId</code></td>
<td><p>[required] The ID of the client application user. Amazon Lex uses
this to identify a user's conversation with your bot. At runtime, each
request must contain the <code>userID</code> field.</p>
<p>To decide the user ID to use for your application, consider the
following factors.</p>
<ul>
<li><p>The <code>userID</code> field must not contain any personally
identifiable information of the user, for example, name, personal
identification numbers, or other end user personal information.</p></li>
<li><p>If you want a user to start a conversation on one device and
continue on another device, use a user-specific identifier.</p></li>
<li><p>If you want the same user to be able to have two independent
conversations on two different devices, choose a device-specific
identifier.</p></li>
<li><p>A user can't have two independent conversations with two
different versions of the same bot. For example, a user can't have a
conversation with the PROD and BETA versions of the same bot. If you
anticipate that a user will need to have conversation with two different
versions, for example, while testing, include the bot alias in the user
ID to separate the two conversations.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_post_content_:_sessionAttributes">sessionAttributes</code></td>
<td><p>You pass this value as the
<code>x-amz-lex-session-attributes</code> HTTP header.</p>
<p>Application-specific information passed between Amazon Lex and a
client application. The value must be a JSON serialized and base64
encoded map with string keys and values. The total size of the
<code>sessionAttributes</code> and <code>requestAttributes</code>
headers is limited to 12 KB.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs">Setting
Session Attributes</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_post_content_:_requestAttributes">requestAttributes</code></td>
<td><p>You pass this value as the
<code>x-amz-lex-request-attributes</code> HTTP header.</p>
<p>Request-specific information passed between Amazon Lex and a client
application. The value must be a JSON serialized and base64 encoded map
with string keys and values. The total size of the
<code>requestAttributes</code> and <code>sessionAttributes</code>
headers is limited to 12 KB.</p>
<p>The namespace <code style="white-space: pre;">⁠x-amz-lex:⁠</code> is
reserved for special attributes. Don't create any request attributes
with the prefix <code style="white-space: pre;">⁠x-amz-lex:⁠</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs">Setting
Request Attributes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_post_content_:_contentType">contentType</code></td>
<td><p>[required] You pass this value as the <code>Content-Type</code>
HTTP header.</p>
<p>Indicates the audio format or text. The header value must start with
one of the following prefixes:</p>
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
<li><p>audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=256000;
frame-size-milliseconds=4</p></li>
</ul></li>
<li><p>Text format</p>
<ul>
<li><p>text/plain; charset=utf-8</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_post_content_:_accept">accept</code></td>
<td><p>You pass this value as the <code>Accept</code> HTTP header.</p>
<p>The message Amazon Lex returns in the response can be either text or
speech based on the <code>Accept</code> HTTP header value in the
request.</p>
<ul>
<li><p>If the value is <code
style="white-space: pre;">⁠text/plain; charset=utf-8⁠</code>, Amazon Lex
returns text in the response.</p></li>
<li><p>If the value begins with <code
style="white-space: pre;">⁠audio/⁠</code>, Amazon Lex returns speech in
the response. Amazon Lex uses Amazon Polly to generate the speech (using
the configuration you specified in the <code>Accept</code> header). For
example, if you specify <code>audio/mpeg</code> as the value, Amazon Lex
returns speech in the MPEG format.</p></li>
<li><p>If the value is <code>audio/pcm</code>, the speech returned is
<code>audio/pcm</code> in 16-bit, little endian format.</p></li>
<li><p>The following are the accepted values:</p>
<ul>
<li><p>audio/mpeg</p></li>
<li><p>audio/ogg</p></li>
<li><p>audio/pcm</p></li>
<li><p>text/plain; charset=utf-8</p></li>
<li><p>audio/* (defaults to mpeg)</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_post_content_:_inputStream">inputStream</code></td>
<td><p>[required] User input in PCM or Opus audio format or text format
as described in the <code>Content-Type</code> HTTP header.</p>
<p>You can stream audio data to Amazon Lex or you can create a local
buffer that captures all of the audio data before sending. In general,
you get better performance if you stream audio data rather than
buffering the data locally.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_post_content_:_activeContexts">activeContexts</code></td>
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
      nluIntentConfidence = "string",
      alternativeIntents = "string",
      slots = "string",
      sessionAttributes = "string",
      sentimentResponse = "string",
      message = "string",
      encodedMessage = "string",
      messageFormat = "PlainText"|"CustomPayload"|"SSML"|"Composite",
      dialogState = "ElicitIntent"|"ConfirmIntent"|"ElicitSlot"|"Fulfilled"|"ReadyForFulfillment"|"Failed",
      slotToElicit = "string",
      inputTranscript = "string",
      encodedInputTranscript = "string",
      audioStream = raw,
      botVersion = "string",
      sessionId = "string",
      activeContexts = "string"
    )

### Request syntax

    svc$post_content(
      botName = "string",
      botAlias = "string",
      userId = "string",
      sessionAttributes = "string",
      requestAttributes = "string",
      contentType = "string",
      accept = "string",
      inputStream = raw,
      activeContexts = "string"
    )
