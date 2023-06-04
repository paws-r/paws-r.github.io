<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_regions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the Regions that are configured for multi-Region replication

### Description

Provides information about the Regions that are configured for
multi-Region replication.

### Usage

    directoryservice_describe_regions(DirectoryId, RegionName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_regions_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_regions_:_RegionName">RegionName</code></td>
<td><p>The name of the Region. For example,
<code>us-east-1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_regions_:_NextToken">NextToken</code></td>
<td><p>The <code>DescribeRegionsResult.NextToken</code> value from a
previous call to <code>describe_regions</code>. Pass null if this is the
first call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegionsDescription = list(
        list(
          DirectoryId = "string",
          RegionName = "string",
          RegionType = "Primary"|"Additional",
          Status = "Requested"|"Creating"|"Created"|"Active"|"Inoperable"|"Impaired"|"Restoring"|"RestoreFailed"|"Deleting"|"Deleted"|"Failed",
          VpcSettings = list(
            VpcId = "string",
            SubnetIds = list(
              "string"
            )
          ),
          DesiredNumberOfDomainControllers = 123,
          LaunchTime = as.POSIXct(
            "2015-01-01"
          ),
          StatusLastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_regions(
      DirectoryId = "string",
      RegionName = "string",
      NextToken = "string"
    )
