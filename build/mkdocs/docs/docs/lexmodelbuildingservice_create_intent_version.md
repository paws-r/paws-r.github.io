<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_create_intent_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of an intent based on the $LATEST version of the intent

### Description

Creates a new version of an intent based on the `⁠$LATEST⁠` version of the
intent. If the `⁠$LATEST⁠` version of this intent hasn't changed since you
last updated it, Amazon Lex doesn't create a new version. It returns the
last version you created.

You can update only the `⁠$LATEST⁠` version of the intent. You can't
update the numbered versions that you create with the
`create_intent_version` operation.

When you create a version of an intent, Amazon Lex sets the version
to 1. Subsequent versions increment by 1. For more information, see
versioning-intro.

This operation requires permissions to perform the
`lex:CreateIntentVersion` action.

### Usage

    lexmodelbuildingservice_create_intent_version(name, checksum)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_create_intent_version_:_name">name</code></td>
<td><p>[required] The name of the intent that you want to create a new
version of. The name is case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_create_intent_version_:_checksum">checksum</code></td>
<td><p>Checksum of the <code style="white-space: pre;">⁠$LATEST⁠</code>
version of the intent that should be used to create the new version. If
you specify a checksum and the <code
style="white-space: pre;">⁠$LATEST⁠</code> version of the intent has a
different checksum, Amazon Lex returns a
<code>PreconditionFailedException</code> exception and doesn't publish a
new version. If you don't specify a checksum, Amazon Lex publishes the
<code style="white-space: pre;">⁠$LATEST⁠</code> version.</p></td>
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

    svc$create_intent_version(
      name = "string",
      checksum = "string"
    )
