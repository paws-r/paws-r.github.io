<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a resource

### Description

Adds tags to a resource. A tag is a label you can assign to an Amazon
Web Services resource. In Glue, you can tag only certain resources. For
information about what resources you can tag, see [Amazon Web Services
Tags in
Glue](https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).

### Usage

    glue_tag_resource(ResourceArn, TagsToAdd)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the Glue resource to which to add the tags.
For more information about Glue resource ARNs, see the <a
href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id">Glue
ARN string pattern</a>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_tag_resource_:_TagsToAdd">TagsToAdd</code></td>
<td><p>[required] Tags to add to this resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      TagsToAdd = list(
        "string"
      )
    )
