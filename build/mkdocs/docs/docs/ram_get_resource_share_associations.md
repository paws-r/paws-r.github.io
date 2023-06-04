<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_get_resource_share_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the lists of resources and principals that associated for resource shares that you own

### Description

Retrieves the lists of resources and principals that associated for
resource shares that you own.

### Usage

    ram_get_resource_share_associations(associationType, resourceShareArns,
      resourceArn, principal, associationStatus, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_get_resource_share_associations_:_associationType">associationType</code></td>
<td><p>[required] Specifies whether you want to retrieve the
associations that involve a specified resource or principal.</p>
<ul>
<li><p><code>PRINCIPAL</code> – list the principals whose associations
you want to see.</p></li>
<li><p><code>RESOURCE</code> – list the resources whose associations you
want to see.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_share_associations_:_resourceShareArns">resourceShareArns</code></td>
<td><p>Specifies a list of <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> of the resource share whose associations you
want to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_share_associations_:_resourceArn">resourceArn</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of a resource whose resource shares you want to
retrieve.</p>
<p>You cannot specify this parameter if the association type is
<code>PRINCIPAL</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_share_associations_:_principal">principal</code></td>
<td><p>Specifies the ID of the principal whose resource shares you want
to retrieve. This can be an Amazon Web Services account ID, an
organization ID, an organizational unit ID, or the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of an individual IAM user or role.</p>
<p>You cannot specify this parameter if the association type is
<code>RESOURCE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_share_associations_:_associationStatus">associationStatus</code></td>
<td><p>Specifies that you want to retrieve only associations that have
this status.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_share_associations_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_share_associations_:_maxResults">maxResults</code></td>
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
      resourceShareAssociations = list(
        list(
          resourceShareArn = "string",
          resourceShareName = "string",
          associatedEntity = "string",
          associationType = "PRINCIPAL"|"RESOURCE",
          status = "ASSOCIATING"|"ASSOCIATED"|"FAILED"|"DISASSOCIATING"|"DISASSOCIATED",
          statusMessage = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          external = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_resource_share_associations(
      associationType = "PRINCIPAL"|"RESOURCE",
      resourceShareArns = list(
        "string"
      ),
      resourceArn = "string",
      principal = "string",
      associationStatus = "ASSOCIATING"|"ASSOCIATED"|"FAILED"|"DISASSOCIATING"|"DISASSOCIATED",
      nextToken = "string",
      maxResults = 123
    )
