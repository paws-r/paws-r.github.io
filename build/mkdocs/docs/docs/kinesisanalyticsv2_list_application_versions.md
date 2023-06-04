<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_list_application_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the versions for the specified application, including versions that were rolled back

### Description

Lists all the versions for the specified application, including versions
that were rolled back. The response also includes a summary of the
configuration associated with each version.

To get the complete description of a specific application version,
invoke the `describe_application_version` operation.

This operation is supported only for Amazon Kinesis Data Analytics for
Apache Flink.

### Usage

    kinesisanalyticsv2_list_application_versions(ApplicationName, Limit,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_list_application_versions_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application for which you want to list
all versions.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_list_application_versions_:_Limit">Limit</code></td>
<td><p>The maximum number of versions to list in this invocation of the
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_list_application_versions_:_NextToken">NextToken</code></td>
<td><p>If a previous invocation of this operation returned a pagination
token, pass it into this value to retrieve the next set of results. For
more information about pagination, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-pagination.html">Using
the Amazon Command Line Interface's Pagination Options</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationVersionSummaries = list(
        list(
          ApplicationVersionId = 123,
          ApplicationStatus = "DELETING"|"STARTING"|"STOPPING"|"READY"|"RUNNING"|"UPDATING"|"AUTOSCALING"|"FORCE_STOPPING"|"ROLLING_BACK"|"MAINTENANCE"|"ROLLED_BACK"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_application_versions(
      ApplicationName = "string",
      Limit = 123,
      NextToken = "string"
    )
