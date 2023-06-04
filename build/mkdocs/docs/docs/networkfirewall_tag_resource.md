<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified resource

### Description

Adds the specified tags to the specified resource. Tags are key:value
pairs that you can use to categorize and manage your resources, for
purposes like billing. For example, you might set the tag key to
"customer" and the value to the customer name or ID. You can specify one
or more tags to add to each Amazon Web Services resource, up to 50 tags
for a resource.

You can tag the Amazon Web Services resources that you manage through
Network Firewall: firewalls, firewall policies, and rule groups.

### Usage

    networkfirewall_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="networkfirewall_tag_resource_:_Tags">Tags</code></td>
<td><p>[required]</p></td>
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
