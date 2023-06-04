<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_batch_get_membership_datasources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information on the data source package history for an account

### Description

Gets information on the data source package history for an account.

### Usage

    detective_batch_get_membership_datasources(GraphArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_batch_get_membership_datasources_:_GraphArns">GraphArns</code></td>
<td><p>[required] The ARN of the behavior graph.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MembershipDatasources = list(
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
      UnprocessedGraphs = list(
        list(
          GraphArn = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_membership_datasources(
      GraphArns = list(
        "string"
      )
    )
