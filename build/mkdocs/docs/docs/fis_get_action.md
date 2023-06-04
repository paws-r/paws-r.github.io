<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis_get_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified FIS action

### Description

Gets information about the specified FIS action.

### Usage

    fis_get_action(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fis_get_action_:_id">id</code></td>
<td><p>[required] The ID of the action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      action = list(
        id = "string",
        description = "string",
        parameters = list(
          list(
            description = "string",
            required = TRUE|FALSE
          )
        ),
        targets = list(
          list(
            resourceType = "string"
          )
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_action(
      id = "string"
    )
