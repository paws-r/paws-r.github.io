<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of available RAM permissions that you can use for the supported resource types

### Description

Retrieves a list of available RAM permissions that you can use for the
supported resource types.

### Usage

    ram_list_permissions(resourceType, nextToken, maxResults,
      permissionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_list_permissions_:_resourceType">resourceType</code></td>
<td><p>Specifies that you want to list only those permissions that apply
to the specified resource type. This parameter is not case
sensitive.</p>
<p>For example, to list only permissions that apply to Amazon EC2
subnets, specify <code>ec2:subnet</code>. You can use the
<code>list_resource_types</code> operation to get the specific string
required.</p></td>
</tr>
<tr class="even">
<td><code id="ram_list_permissions_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="ram_list_permissions_:_maxResults">maxResults</code></td>
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
id="ram_list_permissions_:_permissionType">permissionType</code></td>
<td><p>Specifies that you want to list only permissions of this
type:</p>
<ul>
<li><p><code>AWS</code> – returns only Amazon Web Services managed
permissions.</p></li>
<li><p><code>LOCAL</code> – returns only customer managed
permissions</p></li>
<li><p><code>ALL</code> – returns both Amazon Web Services managed
permissions and customer managed permissions.</p></li>
</ul>
<p>If you don't specify this parameter, the default is
<code>All</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      permissions = list(
        list(
          arn = "string",
          version = "string",
          defaultVersion = TRUE|FALSE,
          name = "string",
          resourceType = "string",
          status = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          isResourceTypeDefault = TRUE|FALSE,
          permissionType = "CUSTOMER_MANAGED"|"AWS_MANAGED",
          featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_permissions(
      resourceType = "string",
      nextToken = "string",
      maxResults = 123,
      permissionType = "ALL"|"AWS_MANAGED"|"CUSTOMER_MANAGED"
    )
