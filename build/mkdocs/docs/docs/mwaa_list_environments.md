<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_list_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments

### Description

Lists the Amazon Managed Workflows for Apache Airflow (MWAA)
environments.

### Usage

    mwaa_list_environments(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mwaa_list_environments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve per page. For example,
<code>5</code> environments per page.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_list_environments_:_NextToken">NextToken</code></td>
<td><p>Retrieves the next page of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Environments = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_environments(
      MaxResults = 123,
      NextToken = "string"
    )
