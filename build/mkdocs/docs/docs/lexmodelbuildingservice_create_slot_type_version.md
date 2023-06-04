<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_create_slot_type_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of a slot type based on the $LATEST version of the specified slot type

### Description

Creates a new version of a slot type based on the `⁠$LATEST⁠` version of
the specified slot type. If the `⁠$LATEST⁠` version of this resource has
not changed since the last version that you created, Amazon Lex doesn't
create a new version. It returns the last version that you created.

You can update only the `⁠$LATEST⁠` version of a slot type. You can't
update the numbered versions that you create with the
`create_slot_type_version` operation.

When you create a version of a slot type, Amazon Lex sets the version
to 1. Subsequent versions increment by 1. For more information, see
versioning-intro.

This operation requires permissions for the `lex:CreateSlotTypeVersion`
action.

### Usage

    lexmodelbuildingservice_create_slot_type_version(name, checksum)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_create_slot_type_version_:_name">name</code></td>
<td><p>[required] The name of the slot type that you want to create a
new version for. The name is case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_create_slot_type_version_:_checksum">checksum</code></td>
<td><p>Checksum for the <code style="white-space: pre;">⁠$LATEST⁠</code>
version of the slot type that you want to publish. If you specify a
checksum and the <code style="white-space: pre;">⁠$LATEST⁠</code> version
of the slot type has a different checksum, Amazon Lex returns a
<code>PreconditionFailedException</code> exception and doesn't publish
the new version. If you don't specify a checksum, Amazon Lex publishes
the <code style="white-space: pre;">⁠$LATEST⁠</code> version.</p></td>
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

    svc$create_slot_type_version(
      name = "string",
      checksum = "string"
    )
