<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the tags with the specified keys from the specified resource

### Description

Removes the tags with the specified keys from the specified resource.
Tags are key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the tag
key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource, up
to 50 tags for a resource.

You can manage tags for the Amazon Web Services resources that you
manage through Network Firewall: firewalls, firewall policies, and rule
groups.

### Usage

    networkfirewall_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required]</p></td>
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
