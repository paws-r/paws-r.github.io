<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimev2_get_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns session information for a specified bot, alias, and user

### Description

Returns session information for a specified bot, alias, and user.

For example, you can use this operation to retrieve session information
for a user that has left a long-running session in use.

If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
returns a `BadRequestException`. If the locale doesn't exist or is not
enabled for the alias, you receive a `BadRequestException`.

### Usage

    lexruntimev2_get_session(botId, botAliasId, localeId, sessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexruntimev2_get_session_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that contains the session
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_get_session_:_botAliasId">botAliasId</code></td>
<td><p>[required] The alias identifier in use for the bot that contains
the session data.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimev2_get_session_:_localeId">localeId</code></td>
<td><p>[required] The locale where the session is in use.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_get_session_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$get_session(
      botId = "string",
      botAliasId = "string",
      localeId = "string",
      sessionId = "string"
    )
