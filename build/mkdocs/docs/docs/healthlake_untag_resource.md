<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a Data Store

### Description

Removes tags from a Data Store.

### Usage

    healthlake_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] "The Amazon Resource Name(ARN) of the Data Store for
which tags are being removed</p></td>
</tr>
<tr class="even">
<td><code id="healthlake_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys for the tags to be removed from the
Healthlake Data Store.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
