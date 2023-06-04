<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_list_hypervisors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your hypervisors

### Description

Lists your hypervisors.

### Usage

    backupgateway_list_hypervisors(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_list_hypervisors_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of hypervisors to list.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_list_hypervisors_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned resources. For
example, if a request is made to return <code>maxResults</code> number
of resources, <code>NextToken</code> allows you to return more items in
your list starting at the location pointed to by the next
token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Hypervisors = list(
        list(
          Host = "string",
          HypervisorArn = "string",
          KmsKeyArn = "string",
          Name = "string",
          State = "PENDING"|"ONLINE"|"OFFLINE"|"ERROR"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_hypervisors(
      MaxResults = 123,
      NextToken = "string"
    )
