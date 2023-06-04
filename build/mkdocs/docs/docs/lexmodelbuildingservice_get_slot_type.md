<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific version of a slot type

### Description

Returns information about a specific version of a slot type. In addition
to specifying the slot type name, you must specify the slot type
version.

This operation requires permissions for the `lex:GetSlotType` action.

### Usage

    lexmodelbuildingservice_get_slot_type(name, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_slot_type_:_name">name</code></td>
<td><p>[required] The name of the slot type. The name is case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_slot_type_:_version">version</code></td>
<td><p>[required] The version of the slot type.</p></td>
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

    svc$get_slot_type(
      name = "string",
      version = "string"
    )

### Examples

    ## Not run: 
    # This example shows how to get information about a slot type.
    svc$get_slot_type(
      version = "$LATEST",
      name = "DocPizzaCrustType"
    )

    ## End(Not run)
