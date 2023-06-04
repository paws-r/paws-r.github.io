<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_batch_get_graph_member_datasources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets data source package information for the behavior graph

### Description

Gets data source package information for the behavior graph.

### Usage

    detective_batch_get_graph_member_datasources(GraphArn, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_batch_get_graph_member_datasources_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_batch_get_graph_member_datasources_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of Amazon Web Services accounts to get data
source package information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MemberDatasources = list(
        list(
          AccountId = "string",
          GraphArn = "string",
          DatasourcePackageIngestHistory = list(
            list(
              list(
                Timestamp = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          )
        )
      ),
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_graph_member_datasources(
      GraphArn = "string",
      AccountIds = list(
        "string"
      )
    )
