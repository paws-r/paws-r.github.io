<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_list_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Kinesis Data Analytics applications in your account

### Description

Returns a list of Kinesis Data Analytics applications in your account.
For each application, the response includes the application name, Amazon
Resource Name (ARN), and status.

If you want detailed information about a specific application, use
`describe_application`.

### Usage

    kinesisanalyticsv2_list_applications(Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_list_applications_:_Limit">Limit</code></td>
<td><p>The maximum number of applications to list.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_list_applications_:_NextToken">NextToken</code></td>
<td><p>If a previous command returned a pagination token, pass it into
this value to retrieve the next set of results. For more information
about pagination, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-pagination.html">Using
the Amazon Command Line Interface's Pagination Options</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationSummaries = list(
        list(
          ApplicationName = "string",
          ApplicationARN = "string",
          ApplicationStatus = "DELETING"|"STARTING"|"STOPPING"|"READY"|"RUNNING"|"UPDATING"|"AUTOSCALING"|"FORCE_STOPPING"|"ROLLING_BACK"|"MAINTENANCE"|"ROLLED_BACK",
          ApplicationVersionId = 123,
          RuntimeEnvironment = "SQL-1_0"|"FLINK-1_6"|"FLINK-1_8"|"ZEPPELIN-FLINK-1_0"|"FLINK-1_11"|"FLINK-1_13"|"ZEPPELIN-FLINK-2_0"|"FLINK-1_15",
          ApplicationMode = "STREAMING"|"INTERACTIVE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_applications(
      Limit = 123,
      NextToken = "string"
    )
