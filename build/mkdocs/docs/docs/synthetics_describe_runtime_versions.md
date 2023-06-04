<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_describe_runtime_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Synthetics canary runtime versions

### Description

Returns a list of Synthetics canary runtime versions. For more
information, see [Canary Runtime
Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).

### Usage

    synthetics_describe_runtime_versions(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_describe_runtime_versions_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent <code>describe_runtime_versions</code>
operation to retrieve the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_describe_runtime_versions_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many runs are returned each
time you use the <code>describe_runtime_versions</code> operation. If
you omit this parameter, the default of 100 is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuntimeVersions = list(
        list(
          VersionName = "string",
          Description = "string",
          ReleaseDate = as.POSIXct(
            "2015-01-01"
          ),
          DeprecationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_runtime_versions(
      NextToken = "string",
      MaxResults = 123
    )
