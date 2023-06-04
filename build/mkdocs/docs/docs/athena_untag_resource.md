<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from an Athena resource

### Description

Removes one or more tags from an Athena resource.

### Usage

    athena_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Specifies the ARN of the resource from which tags are
to be removed.</p></td>
</tr>
<tr class="even">
<td><code id="athena_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A comma-separated list of one or more tag keys whose
tags are to be removed from the specified resource.</p></td>
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
