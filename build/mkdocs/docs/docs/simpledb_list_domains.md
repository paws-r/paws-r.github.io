<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListDomains operation lists all domains associated with the Access Key ID

### Description

The `list_domains` operation lists all domains associated with the
Access Key ID. It returns domain names up to the limit set by
MaxNumberOfDomains. A NextToken is returned if there are more than
`MaxNumberOfDomains` domains. Calling `list_domains` successive times
with the `NextToken` provided by the operation returns up to
`MaxNumberOfDomains` more domain names with each successive operation
call.

### Usage

    simpledb_list_domains(MaxNumberOfDomains, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_list_domains_:_MaxNumberOfDomains">MaxNumberOfDomains</code></td>
<td><p>The maximum number of domain names you want returned. The range
is 1 to 100. The default setting is 100.</p></td>
</tr>
<tr class="even">
<td><code id="simpledb_list_domains_:_NextToken">NextToken</code></td>
<td><p>A string informing Amazon SimpleDB where to start the next list
of domain names.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainNames = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domains(
      MaxNumberOfDomains = 123,
      NextToken = "string"
    )
