<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_untag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes tags from a specified resource group

### Description

Deletes tags from a specified resource group.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:Untag`

### Usage

    resourcegroups_untag(Arn, Keys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroups_untag_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the resource group from which to remove
tags. The command removed both the specified keys and any values
associated with those keys.</p></td>
</tr>
<tr class="even">
<td><code id="resourcegroups_untag_:_Keys">Keys</code></td>
<td><p>[required] The keys of the tags to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Keys = list(
        "string"
      )
    )

### Request syntax

    svc$untag(
      Arn = "string",
      Keys = list(
        "string"
      )
    )
