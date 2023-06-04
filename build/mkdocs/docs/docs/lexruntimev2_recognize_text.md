<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimev2_recognize_text</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends user input to Amazon Lex V2

### Description

Sends user input to Amazon Lex V2. Client applications use this API to
send requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets
the user input using the machine learning model that it build for the
bot.

In response, Amazon Lex V2 returns the next message to convey to the
user and an optional response card to display.

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

    lexruntimev2_recognize_text(botId, botAliasId, localeId, sessionId,
      text, sessionState, requestAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexruntimev2_recognize_text_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that processes the
request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_text_:_botAliasId">botAliasId</code></td>
<td><p>[required] The alias identifier in use for the bot that processes
the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_text_:_localeId">localeId</code></td>
<td><p>[required] The locale where the session is in use.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_text_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the user session that is having the
conversation.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimev2_recognize_text_:_text">text</code></td>
<td><p>[required] The text that the user entered. Amazon Lex V2
interprets this text.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_recognize_text_:_sessionState">sessionState</code></td>
<td><p>The current state of the dialog between the user and the
bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_recognize_text_:_requestAttributes">requestAttributes</code></td>
<td><p>Request-specific information passed between the client
application and Amazon Lex V2</p>
<p>The namespace <code style="white-space: pre;">⁠x-amz-lex:⁠</code> is
reserved for special attributes. Don't create any request attributes
with the prefix <code
style="white-space: pre;">⁠x-amz-lex:⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      interpretations = list(
        list(
          nluConfidence = list(
            score = 123.0
          ),
          sentimentResponse = list(
            sentiment = "MIXED"|"NEGATIVE"|"NEUTRAL"|"POSITIVE",
            sentimentScore = list(
              positive = 123.0,
              negative = 123.0,
              neutral = 123.0,
              mixed = 123.0
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
          )
        )
      ),
      requestAttributes = list(
        "string"
      ),
      sessionId = "string",
      recognizedBotMember = list(
        botId = "string",
        botName = "string"
      )
    )

### Request syntax

    svc$recognize_text(
      botId = "string",
      botAliasId = "string",
      localeId = "string",
      sessionId = "string",
      text = "string",
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
      )
    )
