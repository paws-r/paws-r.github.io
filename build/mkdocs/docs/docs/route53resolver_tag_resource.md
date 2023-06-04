<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to a specified resource

### Description

Adds one or more tags to a specified resource.

### Usage

    route53resolver_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the resource that
you want to add tags to. To get the ARN for a resource, use the
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
<td><code id="route53resolver_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags that you want to add to the specified
resource.</p></td>
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
