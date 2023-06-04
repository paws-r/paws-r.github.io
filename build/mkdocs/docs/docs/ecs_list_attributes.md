<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the attributes for Amazon ECS resources within a specified target type and cluster

### Description

Lists the attributes for Amazon ECS resources within a specified target
type and cluster. When you specify a target type and cluster,
`list_attributes` returns a list of attribute objects, one for each
attribute on each resource. You can filter the list of results to a
single attribute name to only return results that have that name. You
can also filter the results by attribute name and value. You can do
this, for example, to see which container instances in a cluster are
running a Linux AMI (`ecs.os-type=linux`).

### Usage

    ecs_list_attributes(cluster, targetType, attributeName, attributeValue,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_list_attributes_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
to list attributes. If you do not specify a cluster, the default cluster
is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_attributes_:_targetType">targetType</code></td>
<td><p>[required] The type of the target to list attributes
with.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_attributes_:_attributeName">attributeName</code></td>
<td><p>The name of the attribute to filter the results with.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_attributes_:_attributeValue">attributeValue</code></td>
<td><p>The value of the attribute to filter results with. You must also
specify an attribute name to use this parameter.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_attributes_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_attributes</code> request indicating that more results are
available to fulfill the request and further calls are needed. If
<code>maxResults</code> was provided, it's possible the number of
results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_attributes_:_maxResults">maxResults</code></td>
<td><p>The maximum number of cluster results that
<code>list_attributes</code> returned in paginated output. When this
parameter is used, <code>list_attributes</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_attributes</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>list_attributes</code> returns up
to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributes = list(
        list(
          name = "string",
          value = "string",
          targetType = "container-instance",
          targetId = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_attributes(
      cluster = "string",
      targetType = "container-instance",
      attributeName = "string",
      attributeValue = "string",
      nextToken = "string",
      maxResults = 123
    )
