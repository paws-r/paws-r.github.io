<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimeservice_get_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns session information for a specified bot, alias, and user ID

### Description

Returns session information for a specified bot, alias, and user ID.

### Usage

    lexruntimeservice_get_session(botName, botAlias, userId,
      checkpointLabelFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexruntimeservice_get_session_:_botName">botName</code></td>
<td><p>[required] The name of the bot that contains the session
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_get_session_:_botAlias">botAlias</code></td>
<td><p>[required] The alias in use for the bot that contains the session
data.</p></td>
</tr>
<tr class="odd">
<td><code id="lexruntimeservice_get_session_:_userId">userId</code></td>
<td><p>[required] The ID of the client application user. Amazon Lex uses
this to identify a user's conversation with your bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_get_session_:_checkpointLabelFilter">checkpointLabelFilter</code></td>
<td><p>A string used to filter the intents returned in the
<code>recentIntentSummaryView</code> structure.</p>
<p>When you specify a filter, only intents with their
<code>checkpointLabel</code> field set to that string are
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      sessionAttributes = list(
        "string"
      ),
      sessionId = "string",
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

    svc$get_session(
      botName = "string",
      botAlias = "string",
      userId = "string",
      checkpointLabelFilter = "string"
    )
