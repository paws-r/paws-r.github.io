<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resources that you added to a resource share or the resources that are shared with you

### Description

Lists the resources that you added to a resource share or the resources
that are shared with you.

### Usage

    ram_list_resources(resourceOwner, principal, resourceType, resourceArns,
      resourceShareArns, nextToken, maxResults, resourceRegionScope)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_list_resources_:_resourceOwner">resourceOwner</code></td>
<td><p>[required] Specifies that you want to list only the resource
shares that match the following:</p>
<ul>
<li><p><strong><code>SELF</code></strong> – resources that your account
shares with other accounts</p></li>
<li><p><strong><code>OTHER-ACCOUNTS</code></strong> – resources that
other accounts share with your account</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ram_list_resources_:_principal">principal</code></td>
<td><p>Specifies that you want to list only the resource shares that are
associated with the specified principal.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_resources_:_resourceType">resourceType</code></td>
<td><p>Specifies that you want to list only the resource shares that
include resources of the specified resource type.</p>
<p>For valid values, query the <code>list_resource_types</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_resources_:_resourceArns">resourceArns</code></td>
<td><p>Specifies that you want to list only the resource shares that
include resources with the specified <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_resources_:_resourceShareArns">resourceShareArns</code></td>
<td><p>Specifies that you want to list only resources in the resource
shares identified by the specified <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ram_list_resources_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="ram_list_resources_:_maxResults">maxResults</code></td>
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
<tr class="even">
<td><code
id="ram_list_resources_:_resourceRegionScope">resourceRegionScope</code></td>
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
      resources = list(
        list(
          arn = "string",
          type = "string",
          resourceShareArn = "string",
          resourceGroupArn = "string",
          status = "AVAILABLE"|"ZONAL_RESOURCE_INACCESSIBLE"|"LIMIT_EXCEEDED"|"UNAVAILABLE"|"PENDING",
          statusMessage = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          resourceRegionScope = "REGIONAL"|"GLOBAL"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_resources(
      resourceOwner = "SELF"|"OTHER-ACCOUNTS",
      principal = "string",
      resourceType = "string",
      resourceArns = list(
        "string"
      ),
      resourceShareArns = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123,
      resourceRegionScope = "ALL"|"REGIONAL"|"GLOBAL"
    )
