<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from a specified resource

### Description

Removes one or more tags from a specified resource.

### Usage

    route53resolver_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the resource that
you want to remove tags from. To get the ARN for a resource, use the
applicable <code>Get</code> or <code>List</code> command:</p>
<ul>
<li><p><code>get_resolver_endpoint</code></p></li>
<li><p><code>get_resolver_rule</code></p></li>
<li><p><code>get_resolver_rule_association</code></p></li>
<li><p><code>list_resolver_endpoints</code></p></li>
<li><p><code>list_resolver_rule_associations</code></p></li>
<li><p><code>list_resolver_rules</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tags that you want to remove to the specified
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
