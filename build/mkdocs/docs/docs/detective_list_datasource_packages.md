<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_list_datasource_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists data source packages in the behavior graph

### Description

Lists data source packages in the behavior graph.

### Usage

    detective_list_datasource_packages(GraphArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_list_datasource_packages_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_list_datasource_packages_:_NextToken">NextToken</code></td>
<td><p>For requests to get the next page of results, the pagination
token that was returned with the previous set of results. The initial
request does not include a pagination token.</p></td>
</tr>
<tr class="odd">
<td><code
id="detective_list_datasource_packages_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasourcePackages = list(
        list(
          DatasourcePackageIngestState = "STARTED"|"STOPPED"|"DISABLED",
          LastIngestStateChange = list(
            list(
              Timestamp = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_datasource_packages(
      GraphArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
