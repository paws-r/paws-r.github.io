<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_get_resource_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about the resource shares that you own or that are shared with you

### Description

Retrieves details about the resource shares that you own or that are
shared with you.

### Usage

    ram_get_resource_shares(resourceShareArns, resourceShareStatus,
      resourceOwner, name, tagFilters, nextToken, maxResults, permissionArn,
      permissionVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_get_resource_shares_:_resourceShareArns">resourceShareArns</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> of individual resource shares that you want
information about.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_shares_:_resourceShareStatus">resourceShareStatus</code></td>
<td><p>Specifies that you want to retrieve details of only those
resource shares that have this status.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_shares_:_resourceOwner">resourceOwner</code></td>
<td><p>[required] Specifies that you want to retrieve details of only
those resource shares that match the following:</p>
<ul>
<li><p><strong><code>SELF</code></strong> – resource shares that your
account shares with other accounts</p></li>
<li><p><strong><code>OTHER-ACCOUNTS</code></strong> – resource shares
that other accounts share with your account</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ram_get_resource_shares_:_name">name</code></td>
<td><p>Specifies the name of an individual resource share that you want
to retrieve details about.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_shares_:_tagFilters">tagFilters</code></td>
<td><p>Specifies that you want to retrieve details of only those
resource shares that match the specified tag keys and values.</p></td>
</tr>
<tr class="even">
<td><code id="ram_get_resource_shares_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_shares_:_maxResults">maxResults</code></td>
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
id="ram_get_resource_shares_:_permissionArn">permissionArn</code></td>
<td><p>Specifies that you want to retrieve details of only those
resource shares that use the managed permission with this <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_shares_:_permissionVersion">permissionVersion</code></td>
<td><p>Specifies that you want to retrieve details for only those
resource shares that use the specified version of the managed
permission.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceShares = list(
        list(
          resourceShareArn = "string",
          name = "string",
          owningAccountId = "string",
          allowExternalPrincipals = TRUE|FALSE,
          status = "PENDING"|"ACTIVE"|"FAILED"|"DELETING"|"DELETED",
          statusMessage = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_resource_shares(
      resourceShareArns = list(
        "string"
      ),
      resourceShareStatus = "PENDING"|"ACTIVE"|"FAILED"|"DELETING"|"DELETED",
      resourceOwner = "SELF"|"OTHER-ACCOUNTS",
      name = "string",
      tagFilters = list(
        list(
          tagKey = "string",
          tagValues = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123,
      permissionArn = "string",
      permissionVersion = 123
    )
