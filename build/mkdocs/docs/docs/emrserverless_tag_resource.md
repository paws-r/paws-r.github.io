<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_tag_resource</td>
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
a specific resource based on the tags you've assigned to it.

### Usage

    emrserverless_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource to list the tags for. Currently, the supported resources are
Amazon EMR Serverless applications and job runs.</p></td>
</tr>
<tr class="even">
<td><code id="emrserverless_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is an array of
key-value pairs.</p></td>
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
