<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata information for a specific bot

### Description

Returns metadata information for a specific bot. You must provide the
bot name and the bot version or alias.

This operation requires permissions for the `lex:GetBot` action.

### Usage

    lexmodelbuildingservice_get_bot(name, versionOrAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelbuildingservice_get_bot_:_name">name</code></td>
<td><p>[required] The name of the bot. The name is case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_:_versionOrAlias">versionOrAlias</code></td>
<td><p>[required] The version or alias of the bot.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      intents = list(
        list(
          intentName = "string",
          intentVersion = "string"
        )
      ),
      enableModelImprovements = TRUE|FALSE,
      nluIntentConfidenceThreshold = 123.0,
      clarificationPrompt = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        maxAttempts = 123,
        responseCard = "string"
      ),
      abortStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      status = "BUILDING"|"READY"|"READY_BASIC_TESTING"|"FAILED"|"NOT_BUILT",
      failureReason = "string",
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      idleSessionTTLInSeconds = 123,
      voiceId = "string",
      checksum = "string",
      version = "string",
      locale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      childDirected = TRUE|FALSE,
      detectSentiment = TRUE|FALSE
    )

### Request syntax

    svc$get_bot(
      name = "string",
      versionOrAlias = "string"
    )

### Examples

    ## Not run: 
    # This example shows how to get configuration information for a bot.
    svc$get_bot(
      name = "DocOrderPizza",
      versionOrAlias = "$LATEST"
    )

    ## End(Not run)
