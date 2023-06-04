<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_list_platform_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the platform versions available for your account in an AWS Region

### Description

Lists the platform versions available for your account in an AWS Region.
Provides summary information about each platform version. Compare to
`describe_platform_version`, which provides full details about a single
platform version.

For definitions of platform version and other platform-related terms,
see [AWS Elastic Beanstalk Platforms
Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).

### Usage

    elasticbeanstalk_list_platform_versions(Filters, MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_list_platform_versions_:_Filters">Filters</code></td>
<td><p>Criteria for restricting the resulting list of platform versions.
The filter is interpreted as a logical conjunction (AND) of the separate
<code>PlatformFilter</code> terms.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_list_platform_versions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of platform version values returned in one
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_list_platform_versions_:_NextToken">NextToken</code></td>
<td><p>For a paginated request. Specify a token from a previous response
page to retrieve the next response page. All other parameter values must
be identical to the ones specified in the initial request.</p>
<p>If no <code>NextToken</code> is specified, the first page is
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlatformSummaryList = list(
        list(
          PlatformArn = "string",
          PlatformOwner = "string",
          PlatformStatus = "Creating"|"Failed"|"Ready"|"Deleting"|"Deleted",
          PlatformCategory = "string",
          OperatingSystemName = "string",
          OperatingSystemVersion = "string",
          SupportedTierList = list(
            "string"
          ),
          SupportedAddonList = list(
            "string"
          ),
          PlatformLifecycleState = "string",
          PlatformVersion = "string",
          PlatformBranchName = "string",
          PlatformBranchLifecycleState = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_platform_versions(
      Filters = list(
        list(
          Type = "string",
          Operator = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      NextToken = "string"
    )
