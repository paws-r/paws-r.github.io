<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_batch_get_custom_data_identifiers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about one or more custom data identifiers

### Description

Retrieves information about one or more custom data identifiers.

### Usage

    macie2_batch_get_custom_data_identifiers(ids)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_batch_get_custom_data_identifiers_:_ids">ids</code></td>
<td><p>An array of custom data identifier IDs, one for each custom data
identifier to retrieve information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      customDataIdentifiers = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          deleted = TRUE|FALSE,
          description = "string",
          id = "string",
          name = "string"
        )
      ),
      notFoundIdentifierIds = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_custom_data_identifiers(
      ids = list(
        "string"
      )
    )
