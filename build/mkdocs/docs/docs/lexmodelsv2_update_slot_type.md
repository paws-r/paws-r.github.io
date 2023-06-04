<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing slot type

### Description

Updates the configuration of an existing slot type.

### Usage

    lexmodelsv2_update_slot_type(slotTypeId, slotTypeName, description,
      slotTypeValues, valueSelectionSetting, parentSlotTypeSignature, botId,
      botVersion, localeId, externalSourceSetting, compositeSlotTypeSetting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_update_slot_type_:_slotTypeId">slotTypeId</code></td>
<td><p>[required] The unique identifier of the slot type to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_slot_type_:_slotTypeName">slotTypeName</code></td>
<td><p>[required] The new name of the slot type.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_slot_type_:_description">description</code></td>
<td><p>The new description of the slot type.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_slot_type_:_slotTypeValues">slotTypeValues</code></td>
<td><p>A new list of values and their optional synonyms that define the
values that the slot type can take.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_slot_type_:_valueSelectionSetting">valueSelectionSetting</code></td>
<td><p>The strategy that Amazon Lex should use when deciding on a value
from the list of slot type values.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_slot_type_:_parentSlotTypeSignature">parentSlotTypeSignature</code></td>
<td><p>The new built-in slot type that should be used as the parent of
this slot type.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_update_slot_type_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that contains the slot
type.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_slot_type_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the slot type.
Must be <code>DRAFT</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_slot_type_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that
contains the slot type. The string must match one of the supported
locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_slot_type_:_externalSourceSetting">externalSourceSetting</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_slot_type_:_compositeSlotTypeSetting">compositeSlotTypeSetting</code></td>
<td><p>Specifications for a composite slot type.</p></td>
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

    svc$update_slot_type(
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
