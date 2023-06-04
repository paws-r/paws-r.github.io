<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Untags the specified tags from the specified WorkMail organization resource

### Description

Untags the specified tags from the specified WorkMail organization
resource.

### Usage

    workmail_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys.</p></td>
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
