<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from an Cloud9 development environment

### Description

Removes tags from an Cloud9 development environment.

### Usage

    cloud9_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Cloud9
development environment to remove tags from.</p></td>
</tr>
<tr class="even">
<td><code id="cloud9_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag names of the tags to remove from the given
Cloud9 development environment.</p></td>
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
