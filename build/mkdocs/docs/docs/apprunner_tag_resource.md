<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add tags to, or update the tag values of, an App Runner resource

### Description

Add tags to, or update the tag values of, an App Runner resource. A tag
is a key-value pair.

### Usage

    apprunner_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to update tags for.</p>
<p>It must be the ARN of an App Runner resource.</p></td>
</tr>
<tr class="even">
<td><code id="apprunner_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tag key-value pairs to add or update. If a
key is new to the resource, the tag is added with the provided value. If
a key is already associated with the resource, the value of the tag is
updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
