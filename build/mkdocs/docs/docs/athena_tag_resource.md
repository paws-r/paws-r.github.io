<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to an Athena resource

### Description

Adds one or more tags to an Athena resource. A tag is a label that you
assign to a resource. Each tag consists of a key and an optional value,
both of which you define. For example, you can use tags to categorize
Athena workgroups, data catalogs, or capacity reservations by purpose,
owner, or environment. Use a consistent set of tag keys to make it
easier to search and filter the resources in your account. For best
practices, see [Tagging Best
Practices](https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html).
Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values
can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and
numbers representable in UTF-8, and the following characters: + - = . \_
: / @. Tag keys and values are case-sensitive. Tag keys must be unique
per resource. If you specify more than one tag, separate them by commas.

### Usage

    athena_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Specifies the ARN of the Athena resource to which tags
are to be added.</p></td>
</tr>
<tr class="even">
<td><code id="athena_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A collection of one or more tags, separated by commas,
to be added to an Athena resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
