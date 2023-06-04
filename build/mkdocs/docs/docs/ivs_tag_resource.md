<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates tags for the Amazon Web Services resource with the specified ARN

### Description

Adds or updates tags for the Amazon Web Services resource with the
specified ARN.

### Usage

    ivs_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] ARN of the resource for which tags are to be added or
updated. The ARN must be URL-encoded.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_tag_resource_:_tags">tags</code></td>
<td><p>[required] Array of tags to be added or updated. Array of maps,
each of the form <code>string:string (key:value)</code>. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> for more information, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )
