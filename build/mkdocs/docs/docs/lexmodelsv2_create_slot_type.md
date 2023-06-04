<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom slot type

### Description

Creates a custom slot type

To create a custom slot type, specify a name for the slot type and a set
of enumeration values, the values that a slot of this type can assume.

### Usage

    lexmodelsv2_create_slot_type(slotTypeName, description, slotTypeValues,
      valueSelectionSetting, parentSlotTypeSignature, botId, botVersion,
      localeId, externalSourceSetting, compositeSlotTypeSetting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_create_slot_type_:_slotTypeName">slotTypeName</code></td>
<td><p>[required] The name for the slot. A slot type name must be unique
within the account.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_slot_type_:_description">description</code></td>
<td><p>A description of the slot type. Use the description to help
identify the slot type in lists.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_slot_type_:_slotTypeValues">slotTypeValues</code></td>
<td><p>A list of <code>SlotTypeValue</code> objects that defines the
values that the slot type can take. Each value can have a list of
synonyms, additional values that help train the machine learning model
about the values that it resolves for a slot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_slot_type_:_valueSelectionSetting">valueSelectionSetting</code></td>
<td><p>Determines the strategy that Amazon Lex uses to select a value
from the list of possible values. The field can be set to one of the
following values:</p>
<ul>
<li><p><code>OriginalValue</code> - Returns the value entered by the
user, if the user value is similar to the slot value.</p></li>
<li><p><code>TopResolution</code> - If there is a resolution list for
the slot, return the first value in the resolution list. If there is no
resolution list, return null.</p></li>
</ul>
<p>If you don't specify the <code>valueSelectionSetting</code>
parameter, the default is <code>OriginalValue</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_slot_type_:_parentSlotTypeSignature">parentSlotTypeSignature</code></td>
<td><p>The built-in slot type used as a parent of this slot type. When
you define a parent slot type, the new slot type has the configuration
of the parent slot type.</p>
<p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_create_slot_type_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with this slot
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_slot_type_:_botVersion">botVersion</code></td>
<td><p>[required] The identifier of the bot version associated with this
slot type.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_slot_type_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that the
slot type will be used in. The string must match one of the supported
locales. All of the bots, intents, and slots used by the slot type must
have the same locale. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_slot_type_:_externalSourceSetting">externalSourceSetting</code></td>
<td><p>Sets the type of external information used to create the slot
type.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_slot_type_:_compositeSlotTypeSetting">compositeSlotTypeSetting</code></td>
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

    svc$create_slot_type(
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
