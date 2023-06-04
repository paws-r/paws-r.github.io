<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns tags to resources

### Description

Assigns tags to resources. A tag is a label that you assign to an Amazon
Web Services resource. Each tag consists of a key and an optional value,
both of which you define. Tags enable you to categorize your Amazon Web
Services resources by attributes such as purpose, owner, or environment.
When you have many resources of the same type, you can quickly identify
a specific resource based on the tags you've assigned to it. For
example, you can define a set of tags for your Amazon EMR on EKS
clusters to help you track each cluster's owner and stack level. We
recommend that you devise a consistent set of tag keys for each resource
type. You can then search and filter the resources based on the tags
that you add.

### Usage

    emrcontainers_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of resources.</p></td>
</tr>
<tr class="even">
<td><code id="emrcontainers_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags assigned to resources.</p></td>
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
