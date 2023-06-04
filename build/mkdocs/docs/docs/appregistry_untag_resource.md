<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a resource

### Description

Removes tags from a resource.

This operation returns an empty response if the call was successful.

### Usage

    appregistry_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon resource name (ARN) that specifies the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="appregistry_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] A list of the tag keys to remove from the specified
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
