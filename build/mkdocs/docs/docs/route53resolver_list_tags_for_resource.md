<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags that you associated with the specified resource

### Description

Lists the tags that you associated with the specified resource.

### Usage

    route53resolver_list_tags_for_resource(ResourceArn, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the resource that
you want to list tags for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of tags that you want to return in the
response to a <code>list_tags_for_resource</code> request. If you don't
specify a value for <code>MaxResults</code>, Resolver returns up to 100
tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_tags_for_resource</code> request, omit
this value.</p>
<p>If you have more than <code>MaxResults</code> tags, you can submit
another <code>list_tags_for_resource</code> request to get the next
group of tags for the resource. In the next request, specify the value
of <code>NextToken</code> from the previous response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
