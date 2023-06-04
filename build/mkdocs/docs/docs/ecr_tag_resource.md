<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds specified tags to a resource with the specified ARN

### Description

Adds specified tags to a resource with the specified ARN. Existing tags
on a resource are not changed if they are not specified in the request
parameters.

### Usage

    ecr_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the the resource to
which to add tags. Currently, the only supported resource is an Amazon
ECR repository.</p></td>
</tr>
<tr class="even">
<td><code id="ecr_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is an array of
key-value pairs. Tag keys can have a maximum character length of 128
characters, and tag values can have a maximum length of 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
