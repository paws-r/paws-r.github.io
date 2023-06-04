<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_put_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom slot type or replaces an existing custom slot type

### Description

Creates a custom slot type or replaces an existing custom slot type.

To create a custom slot type, specify a name for the slot type and a set
of enumeration values, which are the values that a slot of this type can
assume. For more information, see how-it-works.

If you specify the name of an existing slot type, the fields in the
request replace the existing values in the `⁠$LATEST⁠` version of the slot
type. Amazon Lex removes the fields that you don't provide in the
request. If you don't specify required fields, Amazon Lex throws an
exception. When you update the `⁠$LATEST⁠` version of a slot type, if a
bot uses the `⁠$LATEST⁠` version of an intent that contains the slot type,
the bot's `status` field is set to `NOT_BUILT`.

This operation requires permissions for the `lex:PutSlotType` action.

### Usage

    lexmodelbuildingservice_put_slot_type(name, description,
      enumerationValues, checksum, valueSelectionStrategy, createVersion,
      parentSlotTypeSignature, slotTypeConfigurations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_name">name</code></td>
<td><p>[required] The name of the slot type. The name is <em>not</em>
case sensitive.</p>
<p>The name can't match a built-in slot type name, or a built-in slot
type name with "AMAZON." removed. For example, because there is a
built-in slot type called <code>AMAZON.DATE</code>, you can't create a
custom slot type called <code>DATE</code>.</p>
<p>For a list of built-in slot types, see <a
href="https://developer.amazon.com/en-US/docs/alexa/custom-skills/slot-type-reference.html">Slot
Type Reference</a> in the <em>Alexa Skills Kit</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_description">description</code></td>
<td><p>A description of the slot type.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_enumerationValues">enumerationValues</code></td>
<td><p>A list of <code>EnumerationValue</code> objects that defines the
values that the slot type can take. Each value can have a list of
<code>synonyms</code>, which are additional values that help train the
machine learning model about the values that it resolves for a slot.</p>
<p>A regular expression slot type doesn't require enumeration values.
All other slot types require a list of enumeration values.</p>
<p>When Amazon Lex resolves a slot value, it generates a resolution list
that contains up to five possible values for the slot. If you are using
a Lambda function, this resolution list is passed to the function. If
you are not using a Lambda function you can choose to return the value
that the user entered or the first value in the resolution list as the
slot value. The <code>valueSelectionStrategy</code> field indicates the
option to use.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_checksum">checksum</code></td>
<td><p>Identifies a specific revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version.</p>
<p>When you create a new slot type, leave the <code>checksum</code>
field blank. If you specify a checksum you get a
<code>BadRequestException</code> exception.</p>
<p>When you want to update a slot type, set the <code>checksum</code>
field to the checksum of the most recent revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version. If you don't specify
the <code> checksum</code> field, or if the checksum does not match the
<code style="white-space: pre;">⁠$LATEST⁠</code> version, you get a
<code>PreconditionFailedException</code> exception.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_valueSelectionStrategy">valueSelectionStrategy</code></td>
<td><p>Determines the slot resolution strategy that Amazon Lex uses to
return slot type values. The field can be set to one of the following
values:</p>
<ul>
<li><p><code>ORIGINAL_VALUE</code> - Returns the value entered by the
user, if the user value is similar to the slot value.</p></li>
<li><p><code>TOP_RESOLUTION</code> - If there is a resolution list for
the slot, return the first value in the resolution list as the slot type
value. If there is no resolution list, null is returned.</p></li>
</ul>
<p>If you don't specify the <code>valueSelectionStrategy</code>, the
default is <code>ORIGINAL_VALUE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_createVersion">createVersion</code></td>
<td><p>When set to <code>true</code> a new numbered version of the slot
type is created. This is the same as calling the
<code>create_slot_type_version</code> operation. If you do not specify
<code>createVersion</code>, the default is <code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_parentSlotTypeSignature">parentSlotTypeSignature</code></td>
<td><p>The built-in slot type used as the parent of the slot type. When
you define a parent slot type, the new slot type has all of the same
configuration as the parent.</p>
<p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_slot_type_:_slotTypeConfigurations">slotTypeConfigurations</code></td>
<td><p>Configuration information that extends the parent built-in slot
type. The configuration is added to the settings for the parent slot
type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      enumerationValues = list(
        list(
          value = "string",
          synonyms = list(
            "string"
          )
        )
      ),
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      version = "string",
      checksum = "string",
      valueSelectionStrategy = "ORIGINAL_VALUE"|"TOP_RESOLUTION",
      createVersion = TRUE|FALSE,
      parentSlotTypeSignature = "string",
      slotTypeConfigurations = list(
        list(
          regexConfiguration = list(
            pattern = "string"
          )
        )
      )
    )

### Request syntax

    svc$put_slot_type(
      name = "string",
      description = "string",
      enumerationValues = list(
        list(
          value = "string",
          synonyms = list(
            "string"
          )
        )
      ),
      checksum = "string",
      valueSelectionStrategy = "ORIGINAL_VALUE"|"TOP_RESOLUTION",
      createVersion = TRUE|FALSE,
      parentSlotTypeSignature = "string",
      slotTypeConfigurations = list(
        list(
          regexConfiguration = list(
            pattern = "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # This example shows how to create a slot type that describes pizza
    # sauces.
    svc$put_slot_type(
      name = "PizzaSauceType",
      description = "Available pizza sauces",
      enumerationValues = list(
        list(
          value = "red"
        ),
        list(
          value = "white"
        )
      )
    )

    ## End(Not run)
