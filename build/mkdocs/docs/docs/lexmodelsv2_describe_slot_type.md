<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets metadata information about a slot type

### Description

Gets metadata information about a slot type.

### Usage

    lexmodelsv2_describe_slot_type(slotTypeId, botId, botVersion, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_slot_type_:_slotTypeId">slotTypeId</code></td>
<td><p>[required] The identifier of the slot type.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_describe_slot_type_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with the slot
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_slot_type_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot associated with the slot
type.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_describe_slot_type_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the slot
type to describe. The string must match one of the supported locales.
For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      slotTypeId = "string",
      slotTypeName = "string",
      description = "string",
      slotTypeValues = list(
        list(
          sampleValue = list(
            value = "string"
          ),
          synonyms = list(
            list(
              value = "string"
            )
          )
        )
      ),
      valueSelectionSetting = list(
        resolutionStrategy = "OriginalValue"|"TopResolution"|"Concatenation",
        regexFilter = list(
          pattern = "string"
        ),
        advancedRecognitionSetting = list(
          audioRecognitionStrategy = "UseSlotValuesAsCustomVocabulary"
        )
      ),
      parentSlotTypeSignature = "string",
      botId = "string",
      botVersion = "string",
      localeId = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      externalSourceSetting = list(
        grammarSlotTypeSetting = list(
          source = list(
            s3BucketName = "string",
            s3ObjectKey = "string",
            kmsKeyArn = "string"
          )
        )
      ),
      compositeSlotTypeSetting = list(
        subSlots = list(
          list(
            name = "string",
            slotTypeId = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_slot_type(
      slotTypeId = "string",
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
