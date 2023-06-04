<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_get_resource_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resource policies for the specified resources that you own and have shared

### Description

Retrieves the resource policies for the specified resources that you own
and have shared.

### Usage

    ram_get_resource_policies(resourceArns, principal, nextToken,
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
id="ram_get_resource_policies_:_resourceArns">resourceArns</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> of the resources whose policies you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_policies_:_principal">principal</code></td>
<td><p>Specifies the principal.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_policies_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_policies_:_maxResults">maxResults</code></td>
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
      policies = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_resource_policies(
      resourceArns = list(
        "string"
      ),
      principal = "string",
      nextToken = "string",
      maxResults = 123
    )
