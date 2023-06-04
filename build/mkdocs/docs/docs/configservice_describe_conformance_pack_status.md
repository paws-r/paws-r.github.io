<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_conformance_pack_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides one or more conformance packs deployment status

### Description

Provides one or more conformance packs deployment status.

If there are no conformance packs then you will see an empty result.

### Usage

    configservice_describe_conformance_pack_status(ConformancePackNames,
      Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_conformance_pack_status_:_ConformancePackNames">ConformancePackNames</code></td>
<td><p>Comma-separated list of conformance pack names.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_conformance_pack_status_:_Limit">Limit</code></td>
<td><p>The maximum number of conformance packs status returned on each
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_conformance_pack_status_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned in a previous request
that you use to request the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConformancePackStatusDetails = list(
        list(
          ConformancePackName = "string",
          ConformancePackId = "string",
          ConformancePackArn = "string",
          ConformancePackState = "CREATE_IN_PROGRESS"|"CREATE_COMPLETE"|"CREATE_FAILED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED",
          StackArn = "string",
          ConformancePackStatusReason = "string",
          LastUpdateRequestedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdateCompletedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_conformance_pack_status(
      ConformancePackNames = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )
