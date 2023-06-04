<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_permission_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the available versions of the specified RAM permission

### Description

Lists the available versions of the specified RAM permission.

### Usage

    ram_list_permission_versions(permissionArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_list_permission_versions_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the RAM permission whose versions you want to
list. You can use the <code>permissionVersion</code> parameter on the
<code>associate_resource_share_permission</code> operation to specify a
non-default version to attach.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_permission_versions_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_permission_versions_:_maxResults">maxResults</code></td>
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

    svc$list_permission_versions(
      permissionArn = "string",
      nextToken = "string",
      maxResults = 123
    )
