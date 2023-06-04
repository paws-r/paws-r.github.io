<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association of the specified tags from an Amazon Pinpoint SMS Voice V2 resource

### Description

Removes the association of the specified tags from an Amazon Pinpoint
SMS Voice V2 resource. For more information on tags see [Tagging Amazon
Pinpoint
resources](https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html)
in the *Amazon Pinpoint Developer Guide*.

### Usage

    pinpointsmsvoicev2_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] An array of tag key values to unassociate with the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
