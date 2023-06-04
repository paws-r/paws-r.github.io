<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the domains

### Description

Lists the domains.

### Usage

    sagemaker_list_domains(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_domains_:_NextToken">NextToken</code></td>
<td><p>If the previous response was truncated, you will receive this
token. Use it in your next request to receive the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_domains_:_MaxResults">MaxResults</code></td>
<td><p>Returns a list up to a specified limit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Domains = list(
        list(
          DomainArn = "string",
          DomainId = "string",
          DomainName = "string",
          Status = "Deleting"|"Failed"|"InService"|"Pending"|"Updating"|"Update_Failed"|"Delete_Failed",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          Url = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domains(
      NextToken = "string",
      MaxResults = 123
    )
