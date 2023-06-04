<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_describe_trails</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves settings for one or more trails associated with the current region for your account

### Description

Retrieves settings for one or more trails associated with the current
region for your account.

### Usage

    cloudtrail_describe_trails(trailNameList, includeShadowTrails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_describe_trails_:_trailNameList">trailNameList</code></td>
<td><p>Specifies a list of trail names, trail ARNs, or both, of the
trails to describe. The format of a trail ARN is:</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p>
<p>If an empty list is specified, information for the trail in the
current region is returned.</p>
<ul>
<li><p>If an empty list is specified and
<code>IncludeShadowTrails</code> is false, then information for all
trails in the current region is returned.</p></li>
<li><p>If an empty list is specified and IncludeShadowTrails is null or
true, then information for all trails in the current region and any
associated shadow trails in other regions is returned.</p></li>
</ul>
<p>If one or more trail names are specified, information is returned
only if the names match the names of trails belonging only to the
current region and current account. To return information about a trail
in another region, you must specify its trail ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_describe_trails_:_includeShadowTrails">includeShadowTrails</code></td>
<td><p>Specifies whether to include shadow trails in the response. A
shadow trail is the replication in a region of a trail that was created
in a different region, or in the case of an organization trail, the
replication of an organization trail in member accounts. If you do not
include shadow trails, organization trails in a member account and
region replication trails will not be returned. The default is
true.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      trailList = list(
        list(
          Name = "string",
          S3BucketName = "string",
          S3KeyPrefix = "string",
          SnsTopicName = "string",
          SnsTopicARN = "string",
          IncludeGlobalServiceEvents = TRUE|FALSE,
          IsMultiRegionTrail = TRUE|FALSE,
          HomeRegion = "string",
          TrailARN = "string",
          LogFileValidationEnabled = TRUE|FALSE,
          CloudWatchLogsLogGroupArn = "string",
          CloudWatchLogsRoleArn = "string",
          KmsKeyId = "string",
          HasCustomEventSelectors = TRUE|FALSE,
          HasInsightSelectors = TRUE|FALSE,
          IsOrganizationTrail = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_trails(
      trailNameList = list(
        "string"
      ),
      includeShadowTrails = TRUE|FALSE
    )
