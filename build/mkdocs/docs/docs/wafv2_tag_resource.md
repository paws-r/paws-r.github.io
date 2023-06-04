<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates tags with the specified Amazon Web Services resource

### Description

Associates tags with the specified Amazon Web Services resource. Tags
are key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the tag
key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource, up
to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't
manage or view tags through the WAF console.

### Usage

    wafv2_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] An array of key:value pairs to associate with the
resource.</p></td>
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
