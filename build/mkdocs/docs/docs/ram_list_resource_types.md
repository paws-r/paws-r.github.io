<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_resource_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource types that can be shared by RAM

### Description

Lists the resource types that can be shared by RAM.

### Usage

    ram_list_resource_types(nextToken, maxResults, resourceRegionScope)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ram_list_resource_types_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_resource_types_:_maxResults">maxResults</code></td>
<td><p>Specifies the total number of results that you want included on
each page of the response. If you do not include this parameter, it
defaults to a value that is specific to the operation. If additional
items exist beyond the number you specify, the <code>NextToken</code>
response element is returned with a value (not null). Include the
specified value as the <code>NextToken</code> request parameter in the
next call to the operation to get the next part of the results. Note
that the service might return fewer results than the maximum even when
there are more results available. You should check
<code>NextToken</code> after every operation to ensure that you receive
all of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_resource_types_:_resourceRegionScope">resourceRegionScope</code></td>
<td><p>Specifies that you want the results to include only resources
that have the specified scope.</p>
<ul>
<li><p><code>ALL</code> – the results include both global and regional
resources or resource types.</p></li>
<li><p><code>GLOBAL</code> – the results include only global resources
or resource types.</p></li>
<li><p><code>REGIONAL</code> – the results include only regional
resources or resource types.</p></li>
</ul>
<p>The default value is <code>ALL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceTypes = list(
        list(
          resourceType = "string",
          serviceName = "string",
          resourceRegionScope = "REGIONAL"|"GLOBAL"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_resource_types(
      nextToken = "string",
      maxResults = 123,
      resourceRegionScope = "ALL"|"REGIONAL"|"GLOBAL"
    )
