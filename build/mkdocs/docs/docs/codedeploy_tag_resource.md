<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the list of tags in the input Tags parameter with the resource identified by the ResourceArn input parameter

### Description

Associates the list of tags in the input `Tags` parameter with the
resource identified by the `ResourceArn` input parameter.

### Usage

    codedeploy_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of a resource, such as a CodeDeploy
application or deployment group.</p></td>
</tr>
<tr class="even">
<td><code id="codedeploy_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags that <code>tag_resource</code>
associates with a resource. The resource is identified by the
<code>ResourceArn</code> input parameter.</p></td>
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
