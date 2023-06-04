<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an intent

### Description

Returns information about an intent. In addition to the intent name, you
must specify the intent version.

This operation requires permissions to perform the `lex:GetIntent`
action.

### Usage

    lexmodelbuildingservice_get_intent(name, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_intent_:_name">name</code></td>
<td><p>[required] The name of the intent. The name is case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_intent_:_version">version</code></td>
<td><p>[required] The version of the intent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      slots = list(
        list(
          name = "string",
          description = "string",
          slotConstraint = "Required"|"Optional",
          slotType = "string",
          slotTypeVersion = "string",
          valueElicitationPrompt = list(
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
          priority = 123,
          sampleUtterances = list(
            "string"
          ),
          responseCard = "string",
          obfuscationSetting = "NONE"|"DEFAULT_OBFUSCATION",
          defaultValueSpec = list(
            defaultValueList = list(
              list(
                defaultValue = "string"
              )
            )
          )
        )
      ),
      sampleUtterances = list(
        "string"
      ),
      confirmationPrompt = list(
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
      rejectionStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      followUpPrompt = list(
        prompt = list(
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
        rejectionStatement = list(
          messages = list(
            list(
              contentType = "PlainText"|"SSML"|"CustomPayload",
              content = "string",
              groupNumber = 123
            )
          ),
          responseCard = "string"
        )
      ),
      conclusionStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      dialogCodeHook = list(
        uri = "string",
        messageVersion = "string"
      ),
      fulfillmentActivity = list(
        type = "ReturnIntent"|"CodeHook",
        codeHook = list(
          uri = "string",
          messageVersion = "string"
        )
      ),
      parentIntentSignature = "string",
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      version = "string",
      checksum = "string",
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterString = "string",
        role = "string"
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      )
    )

### Request syntax

    svc$get_intent(
      name = "string",
      version = "string"
    )

### Examples

    ## Not run: 
    # This example shows how to get information about an intent.
    svc$get_intent(
      version = "$LATEST",
      name = "DocOrderPizza"
    )

    ## End(Not run)
