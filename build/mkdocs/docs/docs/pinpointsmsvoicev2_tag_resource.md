<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites only the specified tags for the specified Amazon Pinpoint SMS Voice, version 2 resource

### Description

Adds or overwrites only the specified tags for the specified Amazon
Pinpoint SMS Voice, version 2 resource. When you specify an existing tag
key, the value is overwritten with the new value. Each resource can have
a maximum of 50 tags. Each tag consists of a key and an optional value.
Tag keys must be unique per resource. For more information about tags,
see [Tagging Amazon Pinpoint
resources](https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html)
in the *Amazon Pinpoint Developer Guide*.

### Usage

    pinpointsmsvoicev2_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="pinpointsmsvoicev2_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] An array of key and value pair tags that are
associated with the resource.</p></td>
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
