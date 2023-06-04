<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_permission_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the managed permission and its associations to any resource shares that use this managed permission

### Description

Lists information about the managed permission and its associations to
any resource shares that use this managed permission. This lets you see
which resource shares use which versions of the specified managed
permission.

### Usage

    ram_list_permission_associations(permissionArn, permissionVersion,
      associationStatus, resourceType, featureSet, defaultVersion, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_list_permission_associations_:_permissionArn">permissionArn</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the managed permission.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_permission_associations_:_permissionVersion">permissionVersion</code></td>
<td><p>Specifies that you want to list only those associations with
resource shares that use this version of the managed permission. If you
don't provide a value for this parameter, then the operation returns
information about associations with resource shares that use any version
of the managed permission.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_permission_associations_:_associationStatus">associationStatus</code></td>
<td><p>Specifies that you want to list only those associations with
resource shares that match this status.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_permission_associations_:_resourceType">resourceType</code></td>
<td><p>Specifies that you want to list only those associations with
resource shares that include at least one resource of this resource
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_permission_associations_:_featureSet">featureSet</code></td>
<td><p>Specifies that you want to list only those associations with
resource shares that have a <code>featureSet</code> with this
value.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_permission_associations_:_defaultVersion">defaultVersion</code></td>
<td><p>When <code>true</code>, specifies that you want to list only
those associations with resource shares that use the default version of
the specified managed permission.</p>
<p>When <code>false</code> (the default value), lists associations with
resource shares that use any version of the specified managed
permission.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_permission_associations_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_permission_associations_:_maxResults">maxResults</code></td>
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
          permissionVersion = "string",
          defaultVersion = TRUE|FALSE,
          resourceType = "string",
          status = "string",
          featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD",
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          resourceShareArn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_permission_associations(
      permissionArn = "string",
      permissionVersion = 123,
      associationStatus = "ASSOCIATING"|"ASSOCIATED"|"FAILED"|"DISASSOCIATING"|"DISASSOCIATED",
      resourceType = "string",
      featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD",
      defaultVersion = TRUE|FALSE,
      nextToken = "string",
      maxResults = 123
    )
