<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the TagInfoForResource for the specified resource

### Description

Retrieves the TagInfoForResource for the specified resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the tag
key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource, up
to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't
manage or view tags through the WAF console.

### Usage

    wafv2_list_tags_for_resource(NextMarker, Limit, ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_list_tags_for_resource_:_NextMarker">NextMarker</code></td>
<td><p>When you request a list of objects with a <code>Limit</code>
setting, if the number of objects that are still available for retrieval
exceeds the limit, WAF returns a <code>NextMarker</code> value in the
response. To retrieve the next batch of objects, provide the marker from
the prior call in your next request.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_list_tags_for_resource_:_Limit">Limit</code></td>
<td><p>The maximum number of objects that you want WAF to return for
this request. If more objects are available, in the response, WAF
provides a <code>NextMarker</code> value that you can use in a
subsequent call to get the next batch of objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      TagInfoForResource = list(
        ResourceARN = "string",
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      NextMarker = "string",
      Limit = 123,
      ResourceARN = "string"
    )
