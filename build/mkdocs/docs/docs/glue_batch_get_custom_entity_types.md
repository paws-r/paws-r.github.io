<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_custom_entity_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details for the custom patterns specified by a list of names

### Description

Retrieves the details for the custom patterns specified by a list of
names.

### Usage

    glue_batch_get_custom_entity_types(Names)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_get_custom_entity_types_:_Names">Names</code></td>
<td><p>[required] A list of names of the custom patterns that you want
to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomEntityTypes = list(
        list(
          Name = "string",
          RegexString = "string",
          ContextWords = list(
            "string"
          )
        )
      ),
      CustomEntityTypesNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_custom_entity_types(
      Names = list(
        "string"
      )
    )
