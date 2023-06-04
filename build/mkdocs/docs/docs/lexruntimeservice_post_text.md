<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimeservice_post_text</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends user input to Amazon Lex

### Description

Sends user input to Amazon Lex. Client applications can use this API to
send requests to Amazon Lex at runtime. Amazon Lex then interprets the
user input using the machine learning model it built for the bot.

In response, Amazon Lex returns the next `message` to convey to the user
an optional `responseCard` to display. Consider the following example
messages:

-   For a user input "I would like a pizza", Amazon Lex might return a
    response with a message eliciting slot data (for example,
    PizzaSize): "What size pizza would you like?"

-   After the user provides all of the pizza order information, Amazon
    Lex might return a response with a message to obtain user
    confirmation "Proceed with the pizza order?".

-   After the user replies to a confirmation prompt with a "yes", Amazon
    Lex might return a conclusion statement: "Thank you, your cheese
    pizza has been ordered.".

Not all Amazon Lex messages require a user response. For example, a
conclusion statement does not require a response. Some messages require
only a "yes" or "no" user response. In addition to the `message`, Amazon
Lex provides additional context about the message in the response that
you might use to enhance client behavior, for example, to display the
appropriate client user interface. These are the `slotToElicit`,
`dialogState`, `intentName`, and `slots` fields in the response.
Consider the following examples:

-   If the message is to elicit slot data, Amazon Lex returns the
    following context information:

    -   `dialogState` set to ElicitSlot

    -   `intentName` set to the intent name in the current context

    -   `slotToElicit` set to the slot name for which the `message` is
        eliciting information

    -   `slots` set to a map of slots, configured for the intent, with
        currently known values

-   If the message is a confirmation prompt, the `dialogState` is set to
    ConfirmIntent and `SlotToElicit` is set to null.

-   If the message is a clarification prompt (configured for the intent)
    that indicates that user intent is not understood, the `dialogState`
    is set to ElicitIntent and `slotToElicit` is set to null.

In addition, Amazon Lex also returns your application-specific
`sessionAttributes`. For more information, see [Managing Conversation
Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).

### Usage

    lexruntimeservice_post_text(botName, botAlias, userId,
      sessionAttributes, requestAttributes, inputText, activeContexts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexruntimeservice_post_text_:_botName">botName</code></td>
<td><p>[required] The name of the Amazon Lex bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_post_text_:_botAlias">botAlias</code></td>
<td><p>[required] The alias of the Amazon Lex bot.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimeservice_post_text_:_userId">userId</code></td>
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
id="lexruntimeservice_post_text_:_sessionAttributes">sessionAttributes</code></td>
<td><p>Application-specific information passed between Amazon Lex and a
client application.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs">Setting
Session Attributes</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_post_text_:_requestAttributes">requestAttributes</code></td>
<td><p>Request-specific information passed between Amazon Lex and a
client application.</p>
<p>The namespace <code style="white-space: pre;">⁠x-amz-lex:⁠</code> is
reserved for special attributes. Don't create any request attributes
with the prefix <code style="white-space: pre;">⁠x-amz-lex:⁠</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs">Setting
Request Attributes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_post_text_:_inputText">inputText</code></td>
<td><p>[required] The text that the user entered (Amazon Lex interprets
this text).</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_post_text_:_activeContexts">activeContexts</code></td>
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
      intentName = "string",
      nluIntentConfidence = list(
        score = 123.0
      ),
      alternativeIntents = list(
        list(
          intentName = "string",
          nluIntentConfidence = list(
            score = 123.0
          ),
          slots = list(
            "string"
          )
        )
      ),
      slots = list(
        "string"
      ),
      sessionAttributes = list(
        "string"
      ),
      message = "string",
      sentimentResponse = list(
        sentimentLabel = "string",
        sentimentScore = "string"
      ),
      messageFormat = "PlainText"|"CustomPayload"|"SSML"|"Composite",
      dialogState = "ElicitIntent"|"ConfirmIntent"|"ElicitSlot"|"Fulfilled"|"ReadyForFulfillment"|"Failed",
      slotToElicit = "string",
      responseCard = list(
        version = "string",
        contentType = "application/vnd.amazonaws.card.generic",
        genericAttachments = list(
          list(
            title = "string",
            subTitle = "string",
            attachmentLinkUrl = "string",
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
      sessionId = "string",
      botVersion = "string",
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

### Request syntax

    svc$post_text(
      botName = "string",
      botAlias = "string",
      userId = "string",
      sessionAttributes = list(
        "string"
      ),
      requestAttributes = list(
        "string"
      ),
      inputText = "string",
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
